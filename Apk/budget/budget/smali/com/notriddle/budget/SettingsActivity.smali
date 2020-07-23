.class public Lcom/notriddle/budget/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/notriddle/budget/SettingsActivity$SettingsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/SettingsActivity;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-direct {v0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1

    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {v3, v4}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V


    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/SettingsActivity;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {v3}, Lcom/notriddle/budget/PinActivity;->ensureUnlocked(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {v3}, Lcom/notriddle/budget/SettingsActivity;->finish()V

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {v3}, Lcom/notriddle/budget/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 39
    invoke-virtual {v3}, Lcom/notriddle/budget/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/notriddle/budget/SettingsActivity$SettingsFragment;

    invoke-direct {v2}, Lcom/notriddle/budget/SettingsActivity$SettingsFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/SettingsActivity;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 84
    invoke-super {v2, v3}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 79
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/notriddle/budget/EnvelopesActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {v2, v0}, Lcom/notriddle/budget/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    const/4 v1, 0x1

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue
    .line 44
    invoke-super {v1}, Landroid/preference/PreferenceActivity;->onResume()V


    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/SettingsActivity;--->onResume()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {v1}, Lcom/notriddle/budget/PinActivity;->ensureUnlocked(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {v1}, Lcom/notriddle/budget/SettingsActivity;->finish()V

    .line 48
    :cond_0
    return-void
.end method
