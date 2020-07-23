.class public Ljp/sblo/pandora/aGrep/OptionActivity;
.super Landroid/preference/PreferenceActivity;
.source "OptionActivity.java"


# static fields
.field public static final DefaultHighlightColor:I = -0xff0001

.field private static final REQUEST_CODE_BACKGROUND:I = 0x1001

.field private static final REQUEST_CODE_HIGHLIGHT:I = 0x1000


# instance fields
.field private mPm:Landroid/preference/PreferenceManager;

.field private mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

.field private mPs:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Ljp/sblo/pandora/aGrep/OptionActivity;---><init>()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-direct {v1}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, v1, Ljp/sblo/pandora/aGrep/OptionActivity;->mPs:Landroid/preference/PreferenceScreen;

    return-void
.end method

.method private createHighlightPreference(II)V
    # InsDal Modified --> local register: (2)#
    .registers 8

    move-object/16 v2, p0
    move/16 v3, p1
    move/16 v4, p2

    .param p1, "resid"    # I
    .param p2, "reqCode"    # I

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Ljp/sblo/pandora/aGrep/OptionActivity;--->createHighlightPreference(II)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "pr":Landroid/preference/Preference;
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 111
    new-instance v1, Ljp/sblo/pandora/aGrep/OptionActivity$3;

    invoke-direct {v1, v2, v3, v4}, Ljp/sblo/pandora/aGrep/OptionActivity$3;-><init>(Ljp/sblo/pandora/aGrep/OptionActivity;II)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 122
    iget-object v1, v2, Ljp/sblo/pandora/aGrep/OptionActivity;->mPs:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 123
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

    const-string v9, "M_InsDal"
    const-string v10, "Ljp/sblo/pandora/aGrep/OptionActivity;--->onActivityResult(IILandroid/content/Intent;)V"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v2, -0x1

    if-ne v7, v2, :cond_1

    .line 128
    const-string v2, "EXTRA_COLOR"

    const v3, 0xffff

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, "color":I
    const/16 v2, 0x1000

    if-ne v6, v2, :cond_2

    .line 130
    iget-object v2, v5, Ljp/sblo/pandora/aGrep/OptionActivity;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iput v0, v2, Ljp/sblo/pandora/aGrep/Prefs;->mHighlightFg:I

    .line 134
    :cond_0
    :goto_0
    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 135
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "HighlightFg"

    iget-object v4, v5, Ljp/sblo/pandora/aGrep/OptionActivity;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget v4, v4, Ljp/sblo/pandora/aGrep/Prefs;->mHighlightFg:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "HighlightBg"

    iget-object v4, v5, Ljp/sblo/pandora/aGrep/OptionActivity;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iget v4, v4, Ljp/sblo/pandora/aGrep/Prefs;->mHighlightBg:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    .end local v0    # "color":I
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 131
    .restart local v0    # "color":I
    :cond_2
    const/16 v2, 0x1001

    if-ne v6, v2, :cond_0

    .line 132
    iget-object v2, v5, Ljp/sblo/pandora/aGrep/OptionActivity;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    iput v0, v2, Ljp/sblo/pandora/aGrep/Prefs;->mHighlightBg:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (14)#
    .registers 19

    move-object/16 v14, p0
    move-object/16 v15, p1

    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 32
    invoke-super {v14, v15}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V


    const-string v16, "M_InsDal"
    const-string v17, "Ljp/sblo/pandora/aGrep/OptionActivity;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {v14}, Ljp/sblo/pandora/aGrep/OptionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 34
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 35
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 37
    invoke-static {v14}, Ljp/sblo/pandora/aGrep/Prefs;->loadPrefes(Landroid/content/Context;)Ljp/sblo/pandora/aGrep/Prefs;

    move-result-object v3

    iput-object v3, v14, Ljp/sblo/pandora/aGrep/OptionActivity;->mPrefs:Ljp/sblo/pandora/aGrep/Prefs;

    .line 39
    invoke-virtual {v14}, Ljp/sblo/pandora/aGrep/OptionActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    iput-object v3, v14, Ljp/sblo/pandora/aGrep/OptionActivity;->mPm:Landroid/preference/PreferenceManager;

    .line 40
    iget-object v3, v14, Ljp/sblo/pandora/aGrep/OptionActivity;->mPm:Landroid/preference/PreferenceManager;

    invoke-virtual {v3, v14}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, v14, Ljp/sblo/pandora/aGrep/OptionActivity;->mPs:Landroid/preference/PreferenceScreen;

    .line 42
    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 45
    .local v2, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v14}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 48
    .local v1, "pr":Landroid/preference/Preference;
    const/high16 v3, 0x7f060000

    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v14}, Ljp/sblo/pandora/aGrep/OptionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v14}, Ljp/sblo/pandora/aGrep/OptionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v14, v3, v4}, Ljp/sblo/pandora/aGrep/OptionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    const v3, 0x7f060001

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 53
    new-instance v3, Ljp/sblo/pandora/aGrep/OptionActivity$1;

    invoke-direct {v3, v14}, Ljp/sblo/pandora/aGrep/OptionActivity$1;-><init>(Ljp/sblo/pandora/aGrep/OptionActivity;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 62
    iget-object v3, v14, Ljp/sblo/pandora/aGrep/OptionActivity;->mPs:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 66
    new-instance v1, Landroid/preference/ListPreference;

    .end local v1    # "pr":Landroid/preference/Preference;
    invoke-direct {v1, v14}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 67
    .local v1, "pr":Landroid/preference/ListPreference;
    const-string v3, "FontSize"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    const v3, 0x7f06001d

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 70
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "10"

    aput-object v4, v3, v10

    const-string v4, "14"

    aput-object v4, v3, v9

    const-string v4, "16"

    aput-object v4, v3, v11

    const-string v4, "18"

    aput-object v4, v3, v12

    const-string v4, "20"

    aput-object v4, v3, v13

    const/4 v4, 0x5

    const-string v5, "24"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "30"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "36"

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 71
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "10"

    aput-object v4, v3, v10

    const-string v4, "14"

    aput-object v4, v3, v9

    const-string v4, "16"

    aput-object v4, v3, v11

    const-string v4, "18"

    aput-object v4, v3, v12

    const-string v4, "20"

    aput-object v4, v3, v13

    const/4 v4, 0x5

    const-string v5, "24"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "30"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "36"

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 72
    iget-object v3, v14, Ljp/sblo/pandora/aGrep/OptionActivity;->mPs:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 74
    const v3, 0x7f06001f

    const/16 v4, 0x1000

    invoke-direct {v14, v3, v4}, Ljp/sblo/pandora/aGrep/OptionActivity;->createHighlightPreference(II)V

    .line 75
    const v3, 0x7f06001e

    const/16 v4, 0x1001

    invoke-direct {v14, v3, v4}, Ljp/sblo/pandora/aGrep/OptionActivity;->createHighlightPreference(II)V

    .line 79
    new-instance v1, Landroid/preference/CheckBoxPreference;

    .end local v1    # "pr":Landroid/preference/ListPreference;
    invoke-direct {v1, v14}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, "pr":Landroid/preference/CheckBoxPreference;
    const-string v3, "AddLineNumber"

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 81
    const v3, 0x7f060022

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 82
    const v3, 0x7f060021

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 83
    iget-object v3, v14, Ljp/sblo/pandora/aGrep/OptionActivity;->mPs:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 87
    new-instance v1, Landroid/preference/Preference;

    .end local v1    # "pr":Landroid/preference/CheckBoxPreference;
    invoke-direct {v1, v14}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 88
    .local v1, "pr":Landroid/preference/Preference;
    const v3, 0x7f060002

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 89
    const v3, 0x7f060003

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 90
    new-instance v3, Ljp/sblo/pandora/aGrep/OptionActivity$2;

    invoke-direct {v3, v14}, Ljp/sblo/pandora/aGrep/OptionActivity$2;-><init>(Ljp/sblo/pandora/aGrep/OptionActivity;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 99
    iget-object v3, v14, Ljp/sblo/pandora/aGrep/OptionActivity;->mPs:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 101
    iget-object v3, v14, Ljp/sblo/pandora/aGrep/OptionActivity;->mPs:Landroid/preference/PreferenceScreen;

    invoke-virtual {v14, v3}, Ljp/sblo/pandora/aGrep/OptionActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 103
    return-void

    .line 50
    :catch_0
    move-exception v3

    goto/16 :goto_0
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
    const-string v6, "Ljp/sblo/pandora/aGrep/OptionActivity;--->onMenuItemSelected(ILandroid/view/MenuItem;)Z"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 145
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 150
    invoke-super {v2, v3, v4}, Landroid/preference/PreferenceActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 147
    :pswitch_0
    invoke-virtual {v2}, Ljp/sblo/pandora/aGrep/OptionActivity;->finish()V

    .line 148
    const/4 v1, 0x1

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
