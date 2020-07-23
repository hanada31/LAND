.class public final Lcom/notriddle/budget/SettingsActivity$SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/notriddle/budget/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/SettingsActivity$SettingsFragment;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {v0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {v2, v3}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V


    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/SettingsActivity$SettingsFragment;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/high16 v0, 0x7f040000

    invoke-virtual {v2, v0}, Lcom/notriddle/budget/SettingsActivity$SettingsFragment;->addPreferencesFromResource(I)V

    .line 58
    const-string v0, "com.notriddle.budget.pin"

    invoke-virtual {v2, v0}, Lcom/notriddle/budget/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 60
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 62
    const-string v0, "com.notriddle.budget.export"

    invoke-virtual {v2, v0}, Lcom/notriddle/budget/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    const-string v0, "com.notriddle.budget.import"

    invoke-virtual {v2, v0}, Lcom/notriddle/budget/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    return-void
.end method

.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1

    .param p1, "p"    # Landroid/preference/Preference;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/SettingsActivity$SettingsFragment;--->onPreferenceClick(Landroid/preference/Preference;)Z"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v0, "com.notriddle.budget.import"

    invoke-virtual {v3, v0}, Lcom/notriddle/budget/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne v4, v0, :cond_0

    invoke-static {}, Lcom/notriddle/budget/ImportFragment;->newInstance()Lcom/notriddle/budget/ImportFragment;

    move-result-object v0

    .line 71
    :goto_0
    invoke-virtual {v3}, Lcom/notriddle/budget/SettingsActivity$SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_0
    invoke-static {}, Lcom/notriddle/budget/ExportFragment;->newInstance()Lcom/notriddle/budget/ExportFragment;

    move-result-object v0

    goto :goto_0
.end method
