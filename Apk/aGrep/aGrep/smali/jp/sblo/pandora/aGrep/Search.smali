.class public Ljp/sblo/pandora/aGrep/Search;
.super Landroid/app/Activity;
.source "Search.java"

# interfaces
.implements Ljp/sblo/pandora/aGrep/GrepView$Callback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/sblo/pandora/aGrep/Search$GrepTask;
    }
.end annotation


# instance fields
.field private mAdapter:Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/sblo/pandora/aGrep/GrepView$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mGrepView:Ljp/sblo/pandora/aGrep/GrepView;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

.field private mQuery:Ljava/lang/String;

.field private mTask:Ljp/sblo/pandora/aGrep/Search$GrepTask;


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Ljp/sblo/pandora/aGrep/Search;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    .line 139
    return-void
.end method

.method static synthetic access$000(Ljp/sblo/pandora/aGrep/Search;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/Search;

    .prologue
    .line 38
    iget-object v0, p0, Ljp/sblo/pandora/aGrep/Search;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljp/sblo/pandora/aGrep/Search;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/Search;

    .prologue
    .line 38
    iget-object v0, p0, Ljp/sblo/pandora/aGrep/Search;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Ljp/sblo/pandora/aGrep/Search;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/Search;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    iput-object p1, p0, Ljp/sblo/pandora/aGrep/Search;->mData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Ljp/sblo/pandora/aGrep/Search;)Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;
    .locals 1
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/Search;

    .prologue
    .line 38
    iget-object v0, p0, Ljp/sblo/pandora/aGrep/Search;->mAdapter:Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;

    return-object v0
.end method

.method static synthetic access$302(Ljp/sblo/pandora/aGrep/Search;Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;)Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;
    .locals 0
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/Search;
    .param p1, "x1"    # Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;

    .prologue
    .line 38
    iput-object p1, p0, Ljp/sblo/pandora/aGrep/Search;->mAdapter:Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;

    return-object p1
.end method

.method static synthetic access$400(Ljp/sblo/pandora/aGrep/Search;)Ljp/sblo/pandora/aGrep/GrepView;
    .locals 1
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/Search;

    .prologue
    .line 38
    iget-object v0, p0, Ljp/sblo/pandora/aGrep/Search;->mGrepView:Ljp/sblo/pandora/aGrep/GrepView;

    return-object v0
.end method

.method static synthetic access$502(Ljp/sblo/pandora/aGrep/Search;Ljp/sblo/pandora/aGrep/Search$GrepTask;)Ljp/sblo/pandora/aGrep/Search$GrepTask;
    .locals 0
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/Search;
    .param p1, "x1"    # Ljp/sblo/pandora/aGrep/Search$GrepTask;

    .prologue
    .line 38
    iput-object p1, p0, Ljp/sblo/pandora/aGrep/Search;->mTask:Ljp/sblo/pandora/aGrep/Search$GrepTask;

    return-object p1
.end method

.method static synthetic access$600(Ljp/sblo/pandora/aGrep/Search;)Ljp/sblo/pandora/aGrep/Prefs;
    .locals 1
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/Search;

    .prologue
    .line 38
    iget-object v0, p0, Ljp/sblo/pandora/aGrep/Search;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    return-object v0
.end method

.method static synthetic access$700(Ljp/sblo/pandora/aGrep/Search;)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/Search;

    .prologue
    .line 38
    iget-object v0, p0, Ljp/sblo/pandora/aGrep/Search;->mPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static convertOrPattern(Ljava/lang/String;)Ljava/lang/String;
    # InsDal Modified --> local register: (3)#
    .registers 7

    move-object/16 v3, p0

    .param p0, "pattern"    # Ljava/lang/String;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Ljp/sblo/pandora/aGrep/Search;--->convertOrPattern(Ljava/lang/String;)Ljava/lang/String;"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    const-string v2, "|"

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .end local v3    # "pattern":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public static escapeMetaChar(Ljava/lang/String;)Ljava/lang/String;
    # InsDal Modified --> local register: (6)#
    .registers 10

    move-object/16 v6, p0

    .param p0, "pattern"    # Ljava/lang/String;

    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Ljp/sblo/pandora/aGrep/Search;--->escapeMetaChar(Ljava/lang/String;)Ljava/lang/String;"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v3, ".^${}[]*+?|()\\"

    .line 115
    .local v3, "metachar":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v4, "newpat":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 119
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 120
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 121
    .local v0, "c":C
    const-string v5, ".^${}[]*+?|()\\"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 122
    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static highlightKeyword(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;II)Landroid/text/SpannableString;
    # InsDal Modified --> local register: (8)#
    .registers 15

    move-object/16 v8, p0
    move-object/16 v9, p1
    move/16 v10, p2
    move/16 v11, p3

    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "fgcolor"    # I
    .param p3, "bgcolor"    # I

    .prologue

    const-string v12, "M_InsDal"
    const-string v13, "Ljp/sblo/pandora/aGrep/Search;--->highlightKeyword(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;II)Landroid/text/SpannableString;"
    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x21

    .line 379
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 381
    .local v4, "ss":Landroid/text/SpannableString;
    const/4 v5, 0x0

    .line 383
    .local v5, "start":I
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 384
    .local v3, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 385
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 386
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 388
    .local v1, "end":I
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v11}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 389
    .local v0, "bgspan":Landroid/text/style/BackgroundColorSpan;
    invoke-virtual {v4, v0, v5, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 390
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 391
    .local v2, "fgspan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v4, v2, v5, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 393
    move v5, v1

    .line 394
    goto :goto_0

    .line 395
    .end local v0    # "bgspan":Landroid/text/style/BackgroundColorSpan;
    .end local v1    # "end":I
    .end local v2    # "fgspan":Landroid/text/style/ForegroundColorSpan;
    :cond_0
    return-object v4
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (10)#
    .registers 15

    move-object/16 v10, p0
    move-object/16 v11, p1

    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f090013

    const/4 v9, 0x1

    .line 52
    invoke-super {v10, v11}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V


    const-string v12, "M_InsDal"
    const-string v13, "Ljp/sblo/pandora/aGrep/Search;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v10}, Ljp/sblo/pandora/aGrep/Search;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 54
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 55
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    invoke-static {v10}, Ljp/sblo/pandora/aGrep/Prefs;->loadPrefes(Landroid/content/Context;)Ljp/sblo/pandora/aGrep/Prefs;

    move-result-object v4

    iput-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    .line 59
    const v4, 0x7f030006

    invoke-virtual {v10, v4}, Ljp/sblo/pandora/aGrep/Search;->setContentView(I)V

    .line 61
    iget-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget-object v4, v4, Ljp/sblo/pandora/aGrep/Prefs;->mDirList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 62
    invoke-virtual {v10}, Ljp/sblo/pandora/aGrep/Search;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060017

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 63
    new-instance v4, Landroid/content/Intent;

    const-class v5, Ljp/sblo/pandora/aGrep/Settings;

    invoke-direct {v4, v10, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v10, v4}, Ljp/sblo/pandora/aGrep/Search;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {v10}, Ljp/sblo/pandora/aGrep/Search;->finish()V

    .line 67
    :cond_0
    invoke-virtual {v10, v8}, Ljp/sblo/pandora/aGrep/Search;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Ljp/sblo/pandora/aGrep/GrepView;

    iput-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mGrepView:Ljp/sblo/pandora/aGrep/GrepView;

    .line 68
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mData:Ljava/util/ArrayList;

    .line 69
    new-instance v4, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;

    invoke-virtual {v10}, Ljp/sblo/pandora/aGrep/Search;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030004

    iget-object v7, v10, Ljp/sblo/pandora/aGrep/Search;->mData:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6, v8, v7}, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mAdapter:Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;

    .line 70
    iget-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mGrepView:Ljp/sblo/pandora/aGrep/GrepView;

    iget-object v5, v10, Ljp/sblo/pandora/aGrep/Search;->mAdapter:Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;

    invoke-virtual {v4, v5}, Ljp/sblo/pandora/aGrep/GrepView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mGrepView:Ljp/sblo/pandora/aGrep/GrepView;

    invoke-virtual {v4, v10}, Ljp/sblo/pandora/aGrep/GrepView;->setCallback(Ljp/sblo/pandora/aGrep/GrepView$Callback;)V

    .line 73
    invoke-virtual {v10}, Ljp/sblo/pandora/aGrep/Search;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 75
    .local v2, "it":Landroid/content/Intent;
    if-eqz v2, :cond_2

    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 79
    .local v1, "extras":Landroid/os/Bundle;
    const-string v4, "query"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mQuery:Ljava/lang/String;

    .line 81
    iget-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mQuery:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mQuery:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 83
    iget-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget-object v5, v10, Ljp/sblo/pandora/aGrep/Search;->mQuery:Ljava/lang/String;

    invoke-virtual {v4, v10, v5}, Ljp/sblo/pandora/aGrep/Prefs;->addRecent(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    iget-object v3, v10, Ljp/sblo/pandora/aGrep/Search;->mQuery:Ljava/lang/String;

    .line 86
    .local v3, "patternText":Ljava/lang/String;
    iget-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget-boolean v4, v4, Ljp/sblo/pandora/aGrep/Prefs;->mRegularExrpression:Z

    if-nez v4, :cond_1

    .line 87
    invoke-static {v3}, Ljp/sblo/pandora/aGrep/Search;->escapeMetaChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-static {v3}, Ljp/sblo/pandora/aGrep/Search;->convertOrPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    :cond_1
    iget-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget-boolean v4, v4, Ljp/sblo/pandora/aGrep/Prefs;->mIgnoreCase:Z

    if-eqz v4, :cond_3

    .line 93
    const/16 v4, 0x4a

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mPattern:Ljava/util/regex/Pattern;

    .line 99
    :goto_0
    const-string v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    iget-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mData:Ljava/util/ArrayList;

    iget-object v5, v10, Ljp/sblo/pandora/aGrep/Search;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 101
    iget-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mAdapter:Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;

    iget-object v5, v10, Ljp/sblo/pandora/aGrep/Search;->mPattern:Ljava/util/regex/Pattern;

    iget-object v6, v10, Ljp/sblo/pandora/aGrep/Search;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget v6, v6, Ljp/sblo/pandora/aGrep/Prefs;->mHighlightFg:I

    iget-object v7, v10, Ljp/sblo/pandora/aGrep/Search;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget v7, v7, Ljp/sblo/pandora/aGrep/Prefs;->mHighlightBg:I

    iget-object v8, v10, Ljp/sblo/pandora/aGrep/Search;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget v8, v8, Ljp/sblo/pandora/aGrep/Prefs;->mFontSize:I

    invoke-virtual {v4, v5, v6, v7, v8}, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;->setFormat(Ljava/util/regex/Pattern;III)V

    .line 102
    new-instance v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;

    invoke-direct {v4, v10}, Ljp/sblo/pandora/aGrep/Search$GrepTask;-><init>(Ljp/sblo/pandora/aGrep/Search;)V

    iput-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mTask:Ljp/sblo/pandora/aGrep/Search$GrepTask;

    .line 103
    iget-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mTask:Ljp/sblo/pandora/aGrep/Search$GrepTask;

    new-array v5, v9, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v10, Ljp/sblo/pandora/aGrep/Search;->mQuery:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v3    # "patternText":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 96
    .restart local v1    # "extras":Landroid/os/Bundle;
    .restart local v3    # "patternText":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, v10, Ljp/sblo/pandora/aGrep/Search;->mPattern:Ljava/util/regex/Pattern;

    goto :goto_0

    .line 106
    .end local v3    # "patternText":Ljava/lang/String;
    :cond_4
    invoke-virtual {v10}, Ljp/sblo/pandora/aGrep/Search;->finish()V

    goto :goto_1
.end method

.method public onGrepItemClicked(I)V
    # InsDal Modified --> local register: (4)#
    .registers 9

    move-object/16 v4, p0
    move/16 v5, p1

    .param p1, "position"    # I

    .prologue

    const-string v6, "M_InsDal"
    const-string v7, "Ljp/sblo/pandora/aGrep/Search;--->onGrepItemClicked(I)V"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v2, v4, Ljp/sblo/pandora/aGrep/Search;->mGrepView:Ljp/sblo/pandora/aGrep/GrepView;

    invoke-virtual {v2}, Ljp/sblo/pandora/aGrep/GrepView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/sblo/pandora/aGrep/GrepView$Data;

    .line 403
    .local v0, "data":Ljp/sblo/pandora/aGrep/GrepView$Data;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Ljp/sblo/pandora/aGrep/TextViewer;

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    .local v1, "it":Landroid/content/Intent;
    const-string v2, "path"

    iget-object v3, v0, Ljp/sblo/pandora/aGrep/GrepView$Data;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v2, "query"

    iget-object v3, v4, Ljp/sblo/pandora/aGrep/Search;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v2, "line"

    iget v3, v0, Ljp/sblo/pandora/aGrep/GrepView$Data;->mLinenumber:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    invoke-virtual {v4, v1}, Ljp/sblo/pandora/aGrep/Search;->startActivity(Landroid/content/Intent;)V

    .line 410
    return-void
.end method

.method public onGrepItemLongClicked(I)Z
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move/16 v2, p1

    .param p1, "position"    # I

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/Search;--->onGrepItemLongClicked(I)Z"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v0, 0x0

    return v0
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
    const-string v6, "Ljp/sblo/pandora/aGrep/Search;--->onMenuItemSelected(ILandroid/view/MenuItem;)Z"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 421
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 426
    invoke-super {v2, v3, v4}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 423
    :pswitch_0
    invoke-virtual {v2}, Ljp/sblo/pandora/aGrep/Search;->finish()V

    .line 424
    const/4 v1, 0x1

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
