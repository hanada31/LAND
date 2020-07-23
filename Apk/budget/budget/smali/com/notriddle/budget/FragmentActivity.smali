.class public Lcom/notriddle/budget/FragmentActivity;
.super Landroid/app/Activity;
.source "FragmentActivity.java"

# interfaces
.implements Lcom/notriddle/budget/OkFragment$OnDismissListener;


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/FragmentActivity;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (7)#
    .registers 12

    move-object/16 v7, p0
    move-object/16 v8, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x1020002

    .line 31
    invoke-super {v7, v8}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V


    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/FragmentActivity;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {v7}, Lcom/notriddle/budget/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 35
    invoke-virtual {v7}, Lcom/notriddle/budget/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 36
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    .line 39
    .local v1, "frag":Landroid/app/Fragment;
    instance-of v3, v1, Landroid/app/DialogFragment;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 40
    check-cast v3, Landroid/app/DialogFragment;

    .line 41
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/DialogFragment;->setShowsDialog(Z)V

    .line 43
    :cond_0
    invoke-virtual {v7}, Lcom/notriddle/budget/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 48
    invoke-virtual {v7, v5}, Lcom/notriddle/budget/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/notriddle/budget/FragmentActivity$1;

    invoke-direct {v4, v7, v1}, Lcom/notriddle/budget/FragmentActivity$1;-><init>(Lcom/notriddle/budget/FragmentActivity;Landroid/app/Fragment;)V

    const-wide/16 v5, 0x5

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void
.end method

.method public final onDismiss()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/FragmentActivity;--->onDismiss()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Lcom/notriddle/budget/FragmentActivity;->finish()V

    .line 60
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1

    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/FragmentActivity;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    invoke-super {v1, v2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 65
    :pswitch_0
    invoke-virtual {v1}, Lcom/notriddle/budget/FragmentActivity;->finish()V

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
