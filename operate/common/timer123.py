#!/usr/bin/python
#coding=utf-8


import datetime
import sys
import os

## This package is about timer
# @package common.timer

## calculate the interval time between start time and end time of a task
# @author wty@iscas
# @version 0.1
# @date Nov 25th, 2014

class Timer :
    ## the constructor
    def __init__(self) :
        ## the start time
        self.__start_time = None
        ## the end time
        self.__end_time = None
        ## the interval time
        self.__interval_time = None


    ## start the timer
    def start_timer(self) :
        self.__start_time = datetime.datetime.now()

    ## end the timer
    def end_timer(self) :
        self.__end_time = datetime.datetime.now()
        self.cal_interval_time()

    ## calculate the interval time
    def cal_interval_time(self) :
        self.__interval_time = self.__end_time - self.__start_time

    ## the time with the given format
    # @param format the output style of the time
    def dump(self, format = 'SS:MS') :
        h = self.__interval_time.seconds/3600
        m = self.__interval_time.seconds/60
        s = self.__interval_time.seconds % 60
        ms = self.__interval_time.microseconds / 1000

        if format == 'HH:MM:SS' :
            print '(time: ',
            print str(h) + 'h' + str(m) + 'm' + str(s) + 's)'
        elif format == 'SS' :
            print '(time: ',
            print str(h * 3600 + m * 60 + s) + 's)'
        elif format == 'SS:MS' :
            print '(time: ',
            print str(h * 3600 + m * 60 + s) + 's' + str(ms) + 'ms)'
        else :
            sys.stderr.write('Timer dump error: unknown format \'' \
                              + format + '\'' + os.linesep)  
