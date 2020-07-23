.class public Ljp/sblo/pandora/aGrep/Settings;
.super Landroid/app/Activity;
.source "Settings.java"


# static fields
.field static final REQUEST_CODE_ADDDIC:I = 0x1001


# instance fields
.field private mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mDirListView:Landroid/widget/LinearLayout;

.field private mDirListener:Landroid/view/View$OnLongClickListener;

.field private mExtListView:Landroid/widget/LinearLayout;

.field private mExtListener:Landroid/view/View$OnLongClickListener;

.field private mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

.field private mRecentAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Ljp/sblo/pandora/aGrep/Settings;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljp/sblo/pandora/aGrep/Settings;)Ljp/sblo/pandora/aGrep/Prefs;
    .locals 1
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/Settings;

    .prologue
    .line 31
    iget-object v0, p0, Ljp/sblo/pandora/aGrep/Settings;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    return-object v0
.end method

.method static synthetic access$100(Ljp/sblo/pandora/aGrep/Settings;)V
    .locals 0
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/Settings;

    .prologue
    .line 31
    invoke-direct {p0}, Ljp/sblo/pandora/aGrep/Settings;->refreshDirList()V

    return-void
.end method

.method static synthetic access$200(Ljp/sblo/pandora/aGrep/Settings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/Settings;

    .prologue
    .line 31
    iget-object v0, p0, Ljp/sblo/pandora/aGrep/Settings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Ljp/sblo/pandora/aGrep/Settings;)V
    .locals 0
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/Settings;

    .prologue
    .line 31
    invoke-direct {p0}, Ljp/sblo/pandora/aGrep/Settings;->refreshExtList()V

    return-void
.end method

.method private refreshDirList()V
    # InsDal Modified --> local register: (4)#
    .registers 8

    move-object/16 v4, p0


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Ljp/sblo/pandora/aGrep/Settings;--->refreshDirList()V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Settings;->mDirListView:Landroid/widget/LinearLayout;

    iget-object v1, v4, Ljp/sblo/pandora/aGrep/Settings;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget-object v1, v1, Ljp/sblo/pandora/aGrep/Prefs;->mDirList:Ljava/util/ArrayList;

    iget-object v2, v4, Ljp/sblo/pandora/aGrep/Settings;->mDirListener:Landroid/view/View$OnLongClickListener;

    iget-object v3, v4, Ljp/sblo/pandora/aGrep/Settings;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljp/sblo/pandora/aGrep/Settings;->setListItem(Landroid/widget/LinearLayout;Ljava/util/ArrayList;Landroid/view/View$OnLongClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 308
    return-void
.end method

.method private refreshExtList()V
    # InsDal Modified --> local register: (4)#
    .registers 8

    move-object/16 v4, p0


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Ljp/sblo/pandora/aGrep/Settings;--->refreshExtList()V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Settings;->mExtListView:Landroid/widget/LinearLayout;

    iget-object v1, v4, Ljp/sblo/pandora/aGrep/Settings;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget-object v1, v1, Ljp/sblo/pandora/aGrep/Prefs;->mExtList:Ljava/util/ArrayList;

    iget-object v2, v4, Ljp/sblo/pandora/aGrep/Settings;->mExtListener:Landroid/view/View$OnLongClickListener;

    iget-object v3, v4, Ljp/sblo/pandora/aGrep/Settings;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljp/sblo/pandora/aGrep/Settings;->setListItem(Landroid/widget/LinearLayout;Ljava/util/ArrayList;Landroid/view/View$OnLongClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 311
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    # InsDal Modified --> local register: (5)#
    .registers 12

    move-object/16 v5, p0
    move/16 v6, p1
    move/16 v7, p2
    move-object/16 v8, p3

    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 259
    invoke-super {v5, v6, v7, v8}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V


    const-string v9, "M_InsDal"
    const-string v10, "Ljp/sblo/pandora/aGrep/Settings;--->onActivityResult(IILandroid/content/Intent;)V"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/16 v3, 0x1001

    if-ne v6, v3, :cond_1

    const/4 v3, -0x1

    if-ne v7, v3, :cond_1

    if-eqz v8, :cond_1

    .line 263
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "filepath"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "dirname":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 266
    iget-object v3, v5, Ljp/sblo/pandora/aGrep/Settings;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget-object v3, v3, Ljp/sblo/pandora/aGrep/Prefs;->mDirList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/sblo/pandora/aGrep/CheckedString;

    .line 267
    .local v2, "t":Ljp/sblo/pandora/aGrep/CheckedString;
    iget-object v3, v2, Ljp/sblo/pandora/aGrep/CheckedString;->string:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    .end local v0    # "dirname":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "t":Ljp/sblo/pandora/aGrep/CheckedString;
    :cond_1
    :goto_0
    return-void

    .line 271
    .restart local v0    # "dirname":Ljava/lang/String;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v3, v5, Ljp/sblo/pandora/aGrep/Settings;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget-object v3, v3, Ljp/sblo/pandora/aGrep/Prefs;->mDirList:Ljava/util/ArrayList;

    new-instance v4, Ljp/sblo/pandora/aGrep/CheckedString;

    invoke-direct {v4, v0}, Ljp/sblo/pandora/aGrep/CheckedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-direct {v5}, Ljp/sblo/pandora/aGrep/Settings;->refreshDirList()V

    .line 273
    iget-object v3, v5, Ljp/sblo/pandora/aGrep/Settings;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget-object v4, v5, Ljp/sblo/pandora/aGrep/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljp/sblo/pandora/aGrep/Prefs;->savePrefs(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (12)#
    .registers 17

    move-object/16 v12, p0
    move-object/16 v13, p1

    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {v12, v13}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V


    const-string v14, "M_InsDal"
    const-string v15, "Ljp/sblo/pandora/aGrep/Settings;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object v12, v12, Ljp/sblo/pandora/aGrep/Settings;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {v12}, Ljp/sblo/pandora/aGrep/Prefs;->loadPrefes(Landroid/content/Context;)Ljp/sblo/pandora/aGrep/Prefs;

    move-result-object v8

    iput-object v8, v12, Ljp/sblo/pandora/aGrep/Settings;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    .line 52
    const v8, 0x7f030005

    invoke-virtual {v12, v8}, Ljp/sblo/pandora/aGrep/Settings;->setContentView(I)V

    .line 54
    const v8, 0x7f09000e

    invoke-virtual {v12, v8}, Ljp/sblo/pandora/aGrep/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v12, Ljp/sblo/pandora/aGrep/Settings;->mDirListView:Landroid/widget/LinearLayout;

    .line 55
    const v8, 0x7f090010

    invoke-virtual {v12, v8}, Ljp/sblo/pandora/aGrep/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v12, Ljp/sblo/pandora/aGrep/Settings;->mExtListView:Landroid/widget/LinearLayout;

    .line 57
    new-instance v8, Ljp/sblo/pandora/aGrep/Settings$1;

    invoke-direct {v8, v12}, Ljp/sblo/pandora/aGrep/Settings$1;-><init>(Ljp/sblo/pandora/aGrep/Settings;)V

    iput-object v8, v12, Ljp/sblo/pandora/aGrep/Settings;->mDirListener:Landroid/view/View$OnLongClickListener;

    .line 80
    new-instance v8, Ljp/sblo/pandora/aGrep/Settings$2;

    invoke-direct {v8, v12}, Ljp/sblo/pandora/aGrep/Settings$2;-><init>(Ljp/sblo/pandora/aGrep/Settings;)V

    iput-object v8, v12, Ljp/sblo/pandora/aGrep/Settings;->mExtListener:Landroid/view/View$OnLongClickListener;

    .line 104
    new-instance v8, Ljp/sblo/pandora/aGrep/Settings$3;

    invoke-direct {v8, v12}, Ljp/sblo/pandora/aGrep/Settings$3;-><init>(Ljp/sblo/pandora/aGrep/Settings;)V

    iput-object v8, v12, Ljp/sblo/pandora/aGrep/Settings;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 113
    invoke-direct {v12}, Ljp/sblo/pandora/aGrep/Settings;->refreshDirList()V

    .line 114
    invoke-direct {v12}, Ljp/sblo/pandora/aGrep/Settings;->refreshExtList()V

    .line 116
    const v8, 0x7f09000d

    invoke-virtual {v12, v8}, Ljp/sblo/pandora/aGrep/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 117
    .local v0, "btnAddDir":Landroid/widget/ImageButton;
    const v8, 0x7f09000f

    invoke-virtual {v12, v8}, Ljp/sblo/pandora/aGrep/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 119
    .local v1, "btnAddExt":Landroid/widget/ImageButton;
    new-instance v8, Ljp/sblo/pandora/aGrep/Settings$4;

    invoke-direct {v8, v12}, Ljp/sblo/pandora/aGrep/Settings$4;-><init>(Ljp/sblo/pandora/aGrep/Settings;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v8, Ljp/sblo/pandora/aGrep/Settings$5;

    invoke-direct {v8, v12}, Ljp/sblo/pandora/aGrep/Settings$5;-><init>(Ljp/sblo/pandora/aGrep/Settings;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v8, 0x7f090011

    invoke-virtual {v12, v8}, Ljp/sblo/pandora/aGrep/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 184
    .local v3, "chkRe":Landroid/widget/CheckBox;
    const v8, 0x7f090012

    invoke-virtual {v12, v8}, Ljp/sblo/pandora/aGrep/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 186
    .local v2, "chkIc":Landroid/widget/CheckBox;
    iget-object v8, v12, Ljp/sblo/pandora/aGrep/Settings;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget-boolean v8, v8, Ljp/sblo/pandora/aGrep/Prefs;->mRegularExrpression:Z

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 187
    iget-object v8, v12, Ljp/sblo/pandora/aGrep/Settings;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget-boolean v8, v8, Ljp/sblo/pandora/aGrep/Prefs;->mIgnoreCase:Z

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 189
    new-instance v8, Ljp/sblo/pandora/aGrep/Settings$6;

    invoke-direct {v8, v12, v3}, Ljp/sblo/pandora/aGrep/Settings$6;-><init>(Ljp/sblo/pandora/aGrep/Settings;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    new-instance v8, Ljp/sblo/pandora/aGrep/Settings$7;

    invoke-direct {v8, v12, v2}, Ljp/sblo/pandora/aGrep/Settings$7;-><init>(Ljp/sblo/pandora/aGrep/Settings;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v8, 0x7f09000a

    invoke-virtual {v12, v8}, Ljp/sblo/pandora/aGrep/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/AutoCompleteTextView;

    .line 207
    .local v5, "edittext":Landroid/widget/AutoCompleteTextView;
    new-instance v8, Ljp/sblo/pandora/aGrep/Settings$8;

    invoke-direct {v8, v12, v5}, Ljp/sblo/pandora/aGrep/Settings$8;-><init>(Ljp/sblo/pandora/aGrep/Settings;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v5, v8}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 222
    new-instance v8, Landroid/widget/ArrayAdapter;

    iget-object v9, v12, Ljp/sblo/pandora/aGrep/Settings;->mContext:Landroid/content/Context;

    const v10, 0x109000a

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v8, v12, Ljp/sblo/pandora/aGrep/Settings;->mRecentAdapter:Landroid/widget/ArrayAdapter;

    .line 223
    iget-object v8, v12, Ljp/sblo/pandora/aGrep/Settings;->mRecentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v8}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    const v8, 0x7f09000c

    invoke-virtual {v12, v8}, Ljp/sblo/pandora/aGrep/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 226
    .local v4, "clrBtn":Landroid/widget/ImageButton;
    new-instance v8, Ljp/sblo/pandora/aGrep/Settings$9;

    invoke-direct {v8, v12, v5}, Ljp/sblo/pandora/aGrep/Settings$9;-><init>(Ljp/sblo/pandora/aGrep/Settings;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v8, 0x7f09000b

    invoke-virtual {v12, v8}, Ljp/sblo/pandora/aGrep/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 235
    .local v7, "searchBtn":Landroid/widget/ImageButton;
    new-instance v8, Ljp/sblo/pandora/aGrep/Settings$10;

    invoke-direct {v8, v12, v5}, Ljp/sblo/pandora/aGrep/Settings$10;-><init>(Ljp/sblo/pandora/aGrep/Settings;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    const v8, 0x7f090009

    invoke-virtual {v12, v8}, Ljp/sblo/pandora/aGrep/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 247
    .local v6, "historyBtn":Landroid/widget/ImageButton;
    new-instance v8, Ljp/sblo/pandora/aGrep/Settings$11;

    invoke-direct {v8, v12, v5}, Ljp/sblo/pandora/aGrep/Settings$11;-><init>(Ljp/sblo/pandora/aGrep/Settings;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "menu"    # Landroid/view/Menu;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Ljp/sblo/pandora/aGrep/Settings;--->onCreateOptionsMenu(Landroid/view/Menu;)Z"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {v2}, Ljp/sblo/pandora/aGrep/Settings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 316
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f080001

    invoke-virtual {v0, v1, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 317
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1

    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Ljp/sblo/pandora/aGrep/Settings;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090016

    if-ne v1, v2, :cond_0

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljp/sblo/pandora/aGrep/OptionActivity;

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Ljp/sblo/pandora/aGrep/Settings;->startActivity(Landroid/content/Intent;)V

    .line 326
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {v3, v4}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    # InsDal Modified --> local register: (3)#
    .registers 7

    move-object/16 v3, p0


    .prologue
    .line 331
    invoke-super {v3}, Landroid/app/Activity;->onResume()V


    const-string v4, "M_InsDal"
    const-string v5, "Ljp/sblo/pandora/aGrep/Settings;--->onResume()V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, v3, Ljp/sblo/pandora/aGrep/Settings;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget-object v2, v3, Ljp/sblo/pandora/aGrep/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljp/sblo/pandora/aGrep/Prefs;->getRecent(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 334
    .local v0, "recent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, v3, Ljp/sblo/pandora/aGrep/Settings;->mRecentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 335
    iget-object v1, v3, Ljp/sblo/pandora/aGrep/Settings;->mRecentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 336
    iget-object v1, v3, Ljp/sblo/pandora/aGrep/Settings;->mRecentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 337
    return-void
.end method

.method setListItem(Landroid/widget/LinearLayout;Ljava/util/ArrayList;Landroid/view/View$OnLongClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    # InsDal Modified --> local register: (5)#
    .registers 13

    move-object/16 v5, p0
    move-object/16 v6, p1
    move-object/16 v7, p2
    move-object/16 v8, p3
    move-object/16 v9, p4

    .param p1, "view"    # Landroid/widget/LinearLayout;
    .param p3, "logclicklistener"    # Landroid/view/View$OnLongClickListener;
    .param p4, "checkedChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/sblo/pandora/aGrep/CheckedString;",
            ">;",
            "Landroid/view/View$OnLongClickListener;",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            ")V"
        }
    .end annotation

    .prologue

    const-string v10, "M_InsDal"
    const-string v11, "Ljp/sblo/pandora/aGrep/Settings;--->setListItem(Landroid/widget/LinearLayout;Ljava/util/ArrayList;Landroid/view/View$OnLongClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V"
    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/CheckedString;>;"
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 285
    new-instance v3, Ljp/sblo/pandora/aGrep/Settings$12;

    invoke-direct {v3, v5}, Ljp/sblo/pandora/aGrep/Settings$12;-><init>(Ljp/sblo/pandora/aGrep/Settings;)V

    invoke-static {v7, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 291
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/sblo/pandora/aGrep/CheckedString;

    .line 292
    .local v1, "s":Ljp/sblo/pandora/aGrep/CheckedString;
    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-static {v5, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 293
    .local v2, "v":Landroid/widget/CheckBox;
    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    const v3, 0x7f060020

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 298
    :goto_1
    iget-boolean v3, v1, Ljp/sblo/pandora/aGrep/CheckedString;->checked:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 299
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 300
    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 301
    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 302
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 296
    :cond_0
    iget-object v3, v1, Ljp/sblo/pandora/aGrep/CheckedString;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 304
    .end local v1    # "s":Ljp/sblo/pandora/aGrep/CheckedString;
    .end local v2    # "v":Landroid/widget/CheckBox;
    :cond_1
    return-void
.end method
