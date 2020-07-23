.class public abstract Lcom/notriddle/budget/FileCreatorFragment;
.super Landroid/app/DialogFragment;
.source "FileCreatorFragment.java"


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/FileCreatorFragment;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-direct {v0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private act(Landroid/net/Uri;)V
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1

    .param p1, "uri"    # Landroid/net/Uri;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/FileCreatorFragment;--->act(Landroid/net/Uri;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v3}, Lcom/notriddle/budget/FileCreatorFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 72
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v0, Lcom/notriddle/budget/FileCreatorFragment$1;

    invoke-direct {v0, v3}, Lcom/notriddle/budget/FileCreatorFragment$1;-><init>(Lcom/notriddle/budget/FileCreatorFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/notriddle/budget/FileCreatorFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method


# virtual methods
.method protected abstract getButtonTitle()I
.end method

.method protected abstract getDialogTitle()I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (5)#
    .registers 10

    move-object/16 v5, p0
    move-object/16 v6, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {v5, v6}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V


    const-string v7, "M_InsDal"
    const-string v8, "Lcom/notriddle/budget/FileCreatorFragment;--->onActivityCreated(Landroid/os/Bundle;)V"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "budget.csv"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 46
    .local v0, "dest":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.openintents.action.PICK_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "org.openintents.extra.TITLE"

    invoke-virtual {v5}, Lcom/notriddle/budget/FileCreatorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v5}, Lcom/notriddle/budget/FileCreatorFragment;->getButtonTitle()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 50
    invoke-virtual {v5}, Lcom/notriddle/budget/FileCreatorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 52
    invoke-direct {v5, v0}, Lcom/notriddle/budget/FileCreatorFragment;->act(Landroid/net/Uri;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    const/16 v2, 0x2a

    invoke-virtual {v5, v1, v2}, Lcom/notriddle/budget/FileCreatorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    # InsDal Modified --> local register: (1)#
    .registers 8

    move-object/16 v1, p0
    move/16 v2, p1
    move/16 v3, p2
    move-object/16 v4, p3

    .param p1, "req"    # I
    .param p2, "res"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/FileCreatorFragment;--->onActivityResult(IILandroid/content/Intent;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/16 v0, 0x2a

    if-ne v2, v0, :cond_1

    .line 60
    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 61
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/notriddle/budget/FileCreatorFragment;->act(Landroid/net/Uri;)V

    .line 68
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {v1}, Lcom/notriddle/budget/FileCreatorFragment;->dismiss()V

    goto :goto_0

    .line 66
    :cond_1
    invoke-super {v1, v2, v3, v4}, Landroid/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/notriddle/budget/FileCreatorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/notriddle/budget/FileCreatorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/notriddle/budget/FileCreatorFragment;->getDialogTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method protected abstract perform(Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
