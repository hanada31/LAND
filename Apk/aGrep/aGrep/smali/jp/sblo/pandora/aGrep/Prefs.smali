.class public Ljp/sblo/pandora/aGrep/Prefs;
.super Ljava/lang/Object;
.source "Prefs.java"


# static fields
.field public static final KEY_ADD_LINENUMBER:Ljava/lang/String; = "AddLineNumber"

.field public static final KEY_FONTSIZE:Ljava/lang/String; = "FontSize"

.field public static final KEY_HIGHLIGHTBG:Ljava/lang/String; = "HighlightBg"

.field public static final KEY_HIGHLIGHTFG:Ljava/lang/String; = "HighlightFg"

.field public static final KEY_IGNORE_CASE:Ljava/lang/String; = "IgnoreCase"

.field public static final KEY_REGULAR_EXPRESSION:Ljava/lang/String; = "RegularExpression"

.field public static final KEY_TARGET_DIRECTORIES_NEW:Ljava/lang/String; = "TargetDirectoriesNew"

.field public static final KEY_TARGET_DIRECTORIES_OLD:Ljava/lang/String; = "TargetDirectories"

.field public static final KEY_TARGET_EXTENSIONS_NEW:Ljava/lang/String; = "TargetExtensionsNew"

.field public static final KEY_TARGET_EXTENSIONS_OLD:Ljava/lang/String; = "TargetExtensions"

.field private static final PREF_RECENT:Ljava/lang/String; = "recent"


# instance fields
.field addLineNumber:Z

.field mDirList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/sblo/pandora/aGrep/CheckedString;",
            ">;"
        }
    .end annotation
.end field

.field mExtList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/sblo/pandora/aGrep/CheckedString;",
            ">;"
        }
    .end annotation
.end field

.field mFontSize:I

.field mHighlightBg:I

.field mHighlightFg:I

.field mIgnoreCase:Z

.field mRegularExrpression:Z


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (2)#
    .registers 6

    move-object/16 v2, p0


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/Prefs;---><init>()V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 16
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v1, v2, Ljp/sblo/pandora/aGrep/Prefs;->mRegularExrpression:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, v2, Ljp/sblo/pandora/aGrep/Prefs;->mIgnoreCase:Z

    .line 33
    const/16 v0, 0x10

    iput v0, v2, Ljp/sblo/pandora/aGrep/Prefs;->mFontSize:I

    .line 34
    const v0, -0xff0001

    iput v0, v2, Ljp/sblo/pandora/aGrep/Prefs;->mHighlightBg:I

    .line 35
    const/high16 v0, -0x1000000

    iput v0, v2, Ljp/sblo/pandora/aGrep/Prefs;->mHighlightFg:I

    .line 36
    iput-boolean v1, v2, Ljp/sblo/pandora/aGrep/Prefs;->addLineNumber:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Ljp/sblo/pandora/aGrep/Prefs;->mDirList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Ljp/sblo/pandora/aGrep/Prefs;->mExtList:Ljava/util/ArrayList;

    return-void
.end method

.method public static loadPrefes(Landroid/content/Context;)Ljp/sblo/pandora/aGrep/Prefs;
    # InsDal Modified --> local register: (14)#
    .registers 18

    move-object/16 v14, p0

    .param p0, "ctx"    # Landroid/content/Context;

    .prologue

    const-string v15, "M_InsDal"
    const-string v16, "Ljp/sblo/pandora/aGrep/Prefs;--->loadPrefes(Landroid/content/Context;)Ljp/sblo/pandora/aGrep/Prefs;"
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    .line 42
    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 44
    .local v9, "sp":Landroid/content/SharedPreferences;
    new-instance v6, Ljp/sblo/pandora/aGrep/Prefs;

    invoke-direct {v6}, Ljp/sblo/pandora/aGrep/Prefs;-><init>()V

    .line 47
    .local v6, "prefs":Ljp/sblo/pandora/aGrep/Prefs;
    const-string v10, "TargetDirectoriesNew"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "dirs":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Ljp/sblo/pandora/aGrep/Prefs;->mDirList:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 50
    const-string v10, "\\|"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "dirsarr":[Ljava/lang/String;
    array-length v8, v3

    .line 52
    .local v8, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_1

    .line 53
    aget-object v10, v3, v5

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 54
    .local v1, "c":Z
    add-int/lit8 v10, v5, 0x1

    aget-object v7, v3, v10

    .line 55
    .local v7, "s":Ljava/lang/String;
    iget-object v10, v6, Ljp/sblo/pandora/aGrep/Prefs;->mDirList:Ljava/util/ArrayList;

    new-instance v11, Ljp/sblo/pandora/aGrep/CheckedString;

    invoke-direct {v11, v1, v7}, Ljp/sblo/pandora/aGrep/CheckedString;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 58
    .end local v1    # "c":Z
    .end local v3    # "dirsarr":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "size":I
    :cond_0
    const-string v10, "TargetDirectories"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 60
    const-string v10, "\\|"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 61
    .restart local v3    # "dirsarr":[Ljava/lang/String;
    array-length v8, v3

    .line 62
    .restart local v8    # "size":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v8, :cond_1

    .line 63
    iget-object v10, v6, Ljp/sblo/pandora/aGrep/Prefs;->mDirList:Ljava/util/ArrayList;

    new-instance v11, Ljp/sblo/pandora/aGrep/CheckedString;

    aget-object v12, v3, v5

    invoke-direct {v11, v12}, Ljp/sblo/pandora/aGrep/CheckedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 68
    .end local v3    # "dirsarr":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "size":I
    :cond_1
    const-string v10, "TargetExtensionsNew"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "exts":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Ljp/sblo/pandora/aGrep/Prefs;->mExtList:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 71
    const-string v10, "\\|"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "arr":[Ljava/lang/String;
    array-length v8, v0

    .line 73
    .restart local v8    # "size":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v8, :cond_3

    .line 74
    aget-object v10, v0, v5

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 75
    .restart local v1    # "c":Z
    add-int/lit8 v10, v5, 0x1

    aget-object v7, v0, v10

    .line 76
    .restart local v7    # "s":Ljava/lang/String;
    iget-object v10, v6, Ljp/sblo/pandora/aGrep/Prefs;->mExtList:Ljava/util/ArrayList;

    new-instance v11, Ljp/sblo/pandora/aGrep/CheckedString;

    invoke-direct {v11, v1, v7}, Ljp/sblo/pandora/aGrep/CheckedString;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 79
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "c":Z
    .end local v5    # "i":I
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "size":I
    :cond_2
    const-string v10, "TargetExtensions"

    const-string v11, "txt"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 81
    const-string v10, "\\|"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0    # "arr":[Ljava/lang/String;
    array-length v8, v0

    .line 83
    .restart local v8    # "size":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v8, :cond_3

    .line 84
    iget-object v10, v6, Ljp/sblo/pandora/aGrep/Prefs;->mExtList:Ljava/util/ArrayList;

    new-instance v11, Ljp/sblo/pandora/aGrep/CheckedString;

    aget-object v12, v0, v5

    invoke-direct {v11, v12}, Ljp/sblo/pandora/aGrep/CheckedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 89
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "size":I
    :cond_3
    const-string v10, "RegularExpression"

    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v6, Ljp/sblo/pandora/aGrep/Prefs;->mRegularExrpression:Z

    .line 90
    const-string v10, "IgnoreCase"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v6, Ljp/sblo/pandora/aGrep/Prefs;->mIgnoreCase:Z

    .line 92
    const-string v10, "FontSize"

    const-string v11, "-1"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v6, Ljp/sblo/pandora/aGrep/Prefs;->mFontSize:I

    .line 93
    const-string v10, "HighlightFg"

    const/high16 v11, -0x1000000

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v6, Ljp/sblo/pandora/aGrep/Prefs;->mHighlightFg:I

    .line 94
    const-string v10, "HighlightBg"

    const v11, -0xff0001

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v6, Ljp/sblo/pandora/aGrep/Prefs;->mHighlightBg:I

    .line 96
    const-string v10, "AddLineNumber"

    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v6, Ljp/sblo/pandora/aGrep/Prefs;->addLineNumber:Z

    .line 97
    return-object v6
.end method


# virtual methods
.method public addRecent(Landroid/content/Context;Ljava/lang/String;)V
    # InsDal Modified --> local register: (4)#
    .registers 10

    move-object/16 v4, p0
    move-object/16 v5, p1
    move-object/16 v6, p2

    .param p1, "context"    # Landroid/content/Context;
    .param p2, "searchWord"    # Ljava/lang/String;

    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Ljp/sblo/pandora/aGrep/Prefs;--->addRecent(Landroid/content/Context;Ljava/lang/String;)V"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v2, "recent"

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 145
    .local v1, "rsp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    .local v0, "reditor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    return-void
.end method

.method public getRecent(Landroid/content/Context;)Ljava/util/List;
    # InsDal Modified --> local register: (13)#
    .registers 18

    move-object/16 v13, p0
    move-object/16 v14, p1

    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue

    const-string v15, "M_InsDal"
    const-string v16, "Ljp/sblo/pandora/aGrep/Prefs;--->getRecent(Landroid/content/Context;)Ljava/util/List;"
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0x1e

    .line 153
    const-string v10, "recent"

    const/4 v11, 0x0

    invoke-virtual {v14, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 154
    .local v8, "rsp":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 157
    .local v1, "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 158
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;*>;>;"
    new-instance v10, Ljp/sblo/pandora/aGrep/Prefs$1;

    invoke-direct {v10, v13}, Ljp/sblo/pandora/aGrep/Prefs$1;-><init>(Ljp/sblo/pandora/aGrep/Prefs;)V

    invoke-static {v3, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 164
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 166
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_0
    const/16 v0, 0x1e

    .line 171
    .local v0, "MAX":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 172
    .local v9, "size":I
    if-le v9, v12, :cond_2

    .line 173
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 174
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    add-int/lit8 v5, v9, -0x1

    .local v5, "i":I
    :goto_1
    if-lt v5, v12, :cond_1

    .line 175
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 174
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 178
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 180
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "i":I
    :cond_2
    return-object v7
.end method

.method public savePrefs(Landroid/content/Context;)V
    # InsDal Modified --> local register: (8)#
    .registers 13

    move-object/16 v8, p0
    move-object/16 v9, p1

    .param p1, "context"    # Landroid/content/Context;

    .prologue

    const-string v10, "M_InsDal"
    const-string v11, "Ljp/sblo/pandora/aGrep/Prefs;--->savePrefs(Landroid/content/Context;)V"
    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x7c

    .line 102
    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 104
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 107
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, "dirs":Ljava/lang/StringBuilder;
    iget-object v6, v8, Ljp/sblo/pandora/aGrep/Prefs;->mDirList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljp/sblo/pandora/aGrep/CheckedString;

    .line 109
    .local v5, "t":Ljp/sblo/pandora/aGrep/CheckedString;
    iget-boolean v6, v5, Ljp/sblo/pandora/aGrep/CheckedString;->checked:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    iget-object v6, v5, Ljp/sblo/pandora/aGrep/CheckedString;->string:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 114
    .end local v5    # "t":Ljp/sblo/pandora/aGrep/CheckedString;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 119
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v2, "exts":Ljava/lang/StringBuilder;
    iget-object v6, v8, Ljp/sblo/pandora/aGrep/Prefs;->mExtList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljp/sblo/pandora/aGrep/CheckedString;

    .line 121
    .restart local v5    # "t":Ljp/sblo/pandora/aGrep/CheckedString;
    iget-boolean v6, v5, Ljp/sblo/pandora/aGrep/CheckedString;->checked:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    iget-object v6, v5, Ljp/sblo/pandora/aGrep/CheckedString;->string:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 126
    .end local v5    # "t":Ljp/sblo/pandora/aGrep/CheckedString;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 130
    :cond_3
    const-string v6, "TargetDirectoriesNew"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string v6, "TargetExtensionsNew"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    const-string v6, "TargetDirectories"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    const-string v6, "TargetExtensions"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    const-string v6, "RegularExpression"

    iget-boolean v7, v8, Ljp/sblo/pandora/aGrep/Prefs;->mRegularExrpression:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    const-string v6, "IgnoreCase"

    iget-boolean v7, v8, Ljp/sblo/pandora/aGrep/Prefs;->mIgnoreCase:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    return-void
.end method
