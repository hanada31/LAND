.class public Ljp/sblo/pandora/aGrep/FileSelectorActivity;
.super Landroid/app/ListActivity;
.source "FileSelectorActivity.java"


# static fields
.field public static final INTENT_EXTENSION:Ljava/lang/String; = "ext"

.field public static final INTENT_FILENAME:Ljava/lang/String; = "filename"

.field public static final INTENT_FILEPATH:Ljava/lang/String; = "filepath"


# instance fields
.field private m_strDirPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Ljp/sblo/pandora/aGrep/FileSelectorActivity;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-direct {v0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljp/sblo/pandora/aGrep/FileSelectorActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    .prologue
    .line 22
    iget-object v0, p0, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljp/sblo/pandora/aGrep/FileSelectorActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/FileSelectorActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Ljp/sblo/pandora/aGrep/FileSelectorActivity;)V
    .locals 0
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    .prologue
    .line 22
    invoke-direct {p0}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->fillList()V

    return-void
.end method

.method private fillList()V
    # InsDal Modified --> local register: (10)#
    .registers 14

    move-object/16 v10, p0


    .prologue

    const-string v11, "M_InsDal"
    const-string v12, "Ljp/sblo/pandora/aGrep/FileSelectorActivity;--->fillList()V"
    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v8, Ljava/io/File;

    iget-object v9, v10, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 137
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_0

    .line 138
    const v8, 0x7f06001a

    const/4 v9, 0x0

    invoke-static {v10, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 182
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v8, Ljp/sblo/pandora/aGrep/FileSelectorActivity$2;

    invoke-direct {v8, v10}, Ljp/sblo/pandora/aGrep/FileSelectorActivity$2;-><init>(Ljp/sblo/pandora/aGrep/FileSelectorActivity;)V

    invoke-static {v3, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 161
    const v8, 0x7f090002

    invoke-virtual {v10, v8}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 162
    .local v7, "txtDirName":Landroid/widget/TextView;
    iget-object v8, v10, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v10, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 168
    const-string v8, ".."

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_1
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v1, v0, v4

    .line 173
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 174
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 179
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v8, 0x7f030001

    invoke-direct {v2, v10, v8, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 181
    .local v2, "fileList":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v10, v2}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (6)#
    .registers 11

    move-object/16 v6, p0
    move-object/16 v7, p1

    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 31
    invoke-super {v6, v7}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V


    const-string v8, "M_InsDal"
    const-string v9, "Ljp/sblo/pandora/aGrep/FileSelectorActivity;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const v2, 0x7f030002

    invoke-virtual {v6, v2}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->setContentView(I)V

    .line 35
    invoke-virtual {v6, v5}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->setResult(I)V

    .line 42
    invoke-virtual {v6}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 43
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 44
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 46
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    const v2, 0x7f06001a

    invoke-static {v6, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 48
    invoke-virtual {v6}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->finish()V

    .line 91
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    .line 53
    invoke-direct {v6}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->fillList()V

    .line 54
    const v2, 0x7f06001b

    invoke-static {v6, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 56
    invoke-virtual {v6}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 57
    .local v1, "lv":Landroid/widget/ListView;
    new-instance v2, Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;

    invoke-direct {v2, v6}, Ljp/sblo/pandora/aGrep/FileSelectorActivity$1;-><init>(Ljp/sblo/pandora/aGrep/FileSelectorActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    # InsDal Modified --> local register: (6)#
    .registers 15

    move-object/16 v6, p0
    move-object/16 v7, p1
    move-object/16 v8, p2
    move/16 v9, p3
    move-wide/16 v10, p4

    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v4, 0x0

    .line 97
    invoke-super/range {v6 .. v11}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V


    const-string v12, "M_InsDal"
    const-string v13, "Ljp/sblo/pandora/aGrep/FileSelectorActivity;--->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V"
    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v6}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    .local v0, "strItem":Ljava/lang/String;
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, v6, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 105
    iget-object v1, v6, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    iget-object v2, v6, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    .line 112
    :goto_0
    invoke-direct {v6}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->fillList()V

    .line 131
    :cond_0
    :goto_1
    return-void

    .line 109
    :cond_1
    iget-object v1, v6, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    iget-object v2, v6, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, v6, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    .line 122
    :goto_2
    iget-object v1, v6, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    iget-object v2, v6, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    .line 123
    invoke-direct {v6}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->fillList()V

    goto :goto_1

    .line 120
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->m_strDirPath:Ljava/lang/String;

    goto :goto_2
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    # InsDal Modified --> local register: (2)#
    .registers 8

    move-object/16 v2, p0
    move/16 v3, p1
    move-object/16 v4, p2

    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Ljp/sblo/pandora/aGrep/FileSelectorActivity;--->onMenuItemSelected(ILandroid/view/MenuItem;)Z"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 187
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 192
    invoke-super {v2, v3, v4}, Landroid/app/ListActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 189
    :pswitch_0
    invoke-virtual {v2}, Ljp/sblo/pandora/aGrep/FileSelectorActivity;->finish()V

    .line 190
    const/4 v1, 0x1

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
