.class public Lcom/notriddle/budget/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/AboutActivity;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/AboutActivity;--->onClick(Landroid/view/View;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://www.notriddle.com/donate/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v0}, Lcom/notriddle/budget/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (10)#
    .registers 15

    move-object/16 v10, p0
    move-object/16 v11, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 38
    invoke-super {v10, v11}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V


    const-string v12, "M_InsDal"
    const-string v13, "Lcom/notriddle/budget/AboutActivity;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/high16 v3, 0x7f030000

    invoke-virtual {v10, v3}, Lcom/notriddle/budget/AboutActivity;->setContentView(I)V

    .line 40
    invoke-virtual {v10}, Lcom/notriddle/budget/AboutActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    const v3, 0x7f0a0001

    invoke-virtual {v10, v3}, Lcom/notriddle/budget/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 44
    .local v2, "txt":Landroid/widget/TextView;
    :try_start_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v10}, Lcom/notriddle/budget/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v10}, Lcom/notriddle/budget/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/high16 v3, 0x7f0a0000

    invoke-virtual {v10, v3}, Lcom/notriddle/budget/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 49
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v3, 0x7f0a0002

    invoke-virtual {v10, v3}, Lcom/notriddle/budget/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 51
    .local v1, "gplView":Landroid/widget/TextView;
    new-instance v3, Lcom/notriddle/budget/AboutActivity$1;

    invoke-direct {v3, v10, v1}, Lcom/notriddle/budget/AboutActivity$1;-><init>(Lcom/notriddle/budget/AboutActivity;Landroid/widget/TextView;)V

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/notriddle/budget/AboutActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return-void

    .line 45
    .end local v1    # "gplView":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/AboutActivity;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 87
    invoke-super {v2, v3}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 82
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/notriddle/budget/EnvelopesActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {v2, v0}, Lcom/notriddle/budget/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    const/4 v1, 0x1

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
