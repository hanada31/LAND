##This class takes an apk path and name as input and add stake to it
# add stake to all the methods of apk
# add stake
# @author luq@iscas
# @version 0.1
# @date Jan, 15th, 2015

import os, sys, random, time
from androguard.core.androgen import AndroguardS
from common.constant import *

class AddStake :
    ## the constructor
    # @param path apk path
    # @param filename apk file name
    def __init__(self, path, filename) :
        ## apk path
        self.__path= path
        ## apk file name
        self.__filename = filename
        
        self.__methods = []
        ## the dict between method and it's times
        self.__dict = {}
#         self.__add_stake_list = []
        ## apk package name
        self.package = ''
        ## the number of stakes to add
        self.add_stake_num = 0
        ## the number of target stakes to add
        self.target_stake_num = 0
        ## the log content of stakes
        self.log_content = ''
        
        self.log_content2 = ''
        ## resource list
        self.resource_str_list = []
        #stack Statement method.txt
        self.stackStatement=""
        #stack Target Statement target.txt
        self.stackTargetStatement=""
        
    ## get all methods of apk
    def get_methods(self) :
        ## initial self.package
        self.get_package()
        ## parse the apk file
        a = AndroguardS(self.__path + self.__filename + '.apk')
        for method in a.get_methods() :
            class_name = method.get_class_name()
            method_name = method.get_name()
            ## filter useless file
            if class_name.find('Landroid')==-1 and class_name.find('BuildConfig',0)==-1 and class_name.find('R$',0)==-1 and class_name.find('R;',0)==-1 and method_name.find('<clinit>',0)==-1:
                if self.getPackagePath() in class_name:
                    method = '%s--->%s%s' %(class_name, method.get_name(), method.get_descriptor())
                    self.__methods.append(method)

            
   ## getPackagePath
    def getPackagePath(self) :
        s = self.package.replace('.','/')
        return s


        # read resource table
    def getResourceList(self):
        if os.path.exists(Constant.target_file):
            resource_file = open(Constant.target_file)
            self.resource_str_list = []
            try:
                #print 'resource list'
                for each_line in resource_file:
                    # Scan all smali file to match the string picked in report file
                    for func in each_line.split(':'):
                        resource_str = handle_line(func)
                        #print  resource_str
                        self.resource_str_list.append(resource_str)
            finally:
                resource_file.close()
        else:
            print("--> open resource_file fail")

      # get instrument function to add
    def getFunctionSmali(self, filename):
        function=''
        if os.path.exists(filename):
            functionFile = open(filename)
            try:
                for each_line in functionFile:
                    function += each_line
            finally:
                functionFile.close()
        else:
            print("--> open resource_file fail")
        return function

    ## add stake to apk
    def add_stake(self) :
        ## loop to add all stakes
        oldprint = sys.stdout
        sys.stdout = open( Constant.re_stake_file, "w")
        self.getResourceList()
        for method in self.__methods :
            target_smali_path = (method.split(';')[0] + '.smali')[1:]
            target_function = method.split('--->')[1]
            if target_function=='':
                print 'no method'
            self.add_every_stake(target_smali_path, target_function,self.resource_str_list)
            
            
        ## record all methods
        with open(Constant.method_file, 'w') as methods_write :
            methods_write.write(self.stackStatement)
            methods_write.write('--------------------------------------------------\n')
            methods_write.write(self.stackTargetStatement)
            
        ## print number of stakes
        print('--> Match string and add stake complete. Totally find %d place to add stake <--\n' % (self.add_stake_num))
        print('--> Match string and add stake complete. Totally find %d place to add target stake <--\n' % (self.target_stake_num))
        sys.stdout = oldprint
        
        ## write log of stakes to file
        #with open(Constant.add_stake_log, 'w') as log_file:
            #file_content = ''.join(self.log_content)
            #log_file.write(file_content)
            
        #with open(Constant.not_add_stake_log, 'w') as log_file:
            #file_content = ''.join(self.log_content2)
            #log_file.write(file_content)
            
    ## the detail to add a stake
    def add_every_stake(self, smali_filename, target_function, target_str_list):
        if target_function.find('<clinit>', 0) != -1 :return
        invoke_ins=["invoke-virtual","invoke-virtual/range","invoke-direct","invoke-direct/range","invoke-static","invoke-static/range"]
        ## open smali file and read it
        with open(self.__path + self.__filename + '/smali/' + smali_filename) as smali_file :
            smali_file_content = smali_file.readlines()
            flag = False

            len_file = len(smali_file_content)
            index = 0
            tmp = 0
            while index < len_file :
                endline = index
#             for index, each_line in enumerate(smali_file_content):
                ## find the target function
#                 print "index1:"+str(index)
                each_line = smali_file_content[index]
                if each_line[0:7].find('.method') >= 0 :
                    found = False
                    if each_line.find(target_function) >= 0 :
                        ## find the position to add stake
                        relative_index = 1
                        flag_end = 0
                        lastIndex = index
                        ## local_num calculate the number of virables of current method
                        while smali_file_content[index + relative_index].find('.locals') < 0 :
                            if smali_file_content[index + relative_index].find('.end method') >= 0:
                                flag_end = 1
                                self.log_content2 += '%s->%s\n' % (smali_filename, target_function)
                                index += 1
                                break
                            relative_index += 1
                        if flag_end == 1 :
                            continue
                        local_num = int(smali_file_content[index + relative_index].split(' ')[5])
                        
                        ## param_num the number of params of current method
                        param_num = 0
                        while smali_file_content[index + relative_index + 1].find('.param') >= 0:
                            param_num += 1    
                            relative_index += 1
                        
                        ## update the local_num
                        local_num_pos = index + relative_index - param_num
                        if local_num >= 13 - param_num:
                            local_num = 0
                        else:
                            smali_file_content[local_num_pos] = '    .locals %d\n' % (local_num + 2)
                        
                        #if has target or not
                        temp = 0
                        target=''
                        while lastIndex + temp< len_file and smali_file_content[lastIndex + temp].find(".end method") < 0:
                            line = smali_file_content[index + temp]
                            add = 1
                            for target_str in target_str_list:
                                if line.find(target_str) >= 0:
                                    target = '@@'+target_str
                                    found=True
                                    self.target_stake_num += 1
                                    
                                    #print target
                                    smali_add_content = self.stake_content(local_num,  'Target_Instrument_%s' % self.__filename, smali_filename[:-6] + ';--->' + target_function+target)
                                    print smali_add_content
                                    i=3
                                    while(i>0):      
                                        if 'move-result-object' in smali_file_content[index + temp +i]:
                                            break
                                        i-=1
                                    smali_file_content.insert(lastIndex + temp+i+1, smali_add_content)
                                    add = 4+i
                                    break
                                add = 1
                            endline = lastIndex + temp
                            temp += add

      
                      ## add stake
                        smali_add_content = self.stake_content(local_num,  'M_InsDal', smali_filename[:-6] + ';--->' + target_function)
                        ss = 'L'+smali_filename[:-6] + ';--->' + target_function +'\n'             
                        self.stackStatement += ss 
                        #if found==False:
                        #    smali_add_content = self.stake_content(local_num,  'Instrument_%s' % self.__filename,smali_filename[:-6] + ';--->' + target_function)
                        #   ss = 'L'+smali_filename[:-6] + ';--->' + target_function +'\n'             
                        #    self.stackStatement += ss 
                        #else:
                        #    smali_add_content = self.stake_content(local_num,  'Target_Instrument_%s' % self.__filename, smali_filename[:-6] + ';--->' + target_function+target)
                        #    ss = 'L'+smali_filename[:-6] + ';--->' + target_function + target +'\n'    
                        #    self.stackTargetStatement += ss
                        
                        print smali_add_content
                        smali_file_content.insert(index + relative_index + 1, smali_add_content)
#                         self.__add_stake_list.append(smali_filename[:-6] + ';->' + target_function)
                        #initial the dict
                        self.__dict[smali_filename[:-6] + '--->' + target_function] = 0
                        
                        self.add_stake_num += 1
                        self.log_content += '-' * 90 + '%d\n%s' % (self.add_stake_num, smali_add_content)
                        tmp = local_num
                index =endline+1
        
        ## write back the content to smali file
        with open(self.__path + self.__filename + '/smali/' + smali_filename, 'w') as smali_file_w:
            new_content = ''.join(smali_file_content)
            smali_file_w.write(new_content)
    
    ## the content of stake
    ## pos the pos of stake
    ## tag the tag of stake
    ## description the description of stake
    def stake_content(self, pos, tag, description):
        stake_list = '\n'
        ##stake_list += '    invoke-virtual {p0}, L'+  str(smali_filename ) +';->getTime()Ljava/lang/String;\n'
        ##stake_list += '    move-result-object v%d\n'% int(pos)
        stake_list += '    const-string v%d, "%s"\n' % (pos, tag)
        stake_list += '    const-string v%d, "%s"\n' % (pos+1, description)
        stake_list += '    invoke-static {v%d, v%d}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n\n' % (pos, pos+1)
        return stake_list


    def invoke_stake_content(self, pos, tag, description):
        stake_list = '\n'
        stake_list += '    const-string v%d, "%s"\n' % (pos, tag)
        stake_list += '    const-string v%d, "%s"\n' % (pos+1, description)
        stake_list += '    invoke-static {v%d, v%d}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n\n' % (pos, pos+1)
        return stake_list

    def get_package(self):
        self.set_package()
    
    ## obtain the package of apk
    def set_package(self):
        ## find the xml and read it
        with open(self.__path + self.__filename + '/AndroidManifest.xml') as manifest_file :
            file_content = manifest_file.readlines()
        ## find the package field
        for line in file_content :
            if line.find('package=\"')>=0:
                self.package = line.split('package=\"')[1].split('\"')[0]
                break
            
    ## cmd command
    ## %1 apk_name
    ## %2 apk_package
    def cmd(self, cmd_str, msg):
        if 0 == os.system(cmd_str + self.__filename + ' ' + self.package):
            print '%s success!\n' %(msg)
            return 0
        else:
            print '%s failed!\n' %(msg)
            return -1


# function Delete the "\n"(Enter key) in the end of the string
def handle_line(line):
    new_line = line.strip("\n").strip()
    return new_line
# function end
