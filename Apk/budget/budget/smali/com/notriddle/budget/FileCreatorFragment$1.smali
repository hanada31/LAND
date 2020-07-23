.class final Lcom/notriddle/budget/FileCreatorFragment$1;
.super Landroid/os/AsyncTask;
.source "FileCreatorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/FileCreatorFragment;->act(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Object;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/notriddle/budget/FileCreatorFragment;


# direct methods
.method constructor <init>(Lcom/notriddle/budget/FileCreatorFragment;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/FileCreatorFragment$1;---><init>(Lcom/notriddle/budget/FileCreatorFragment;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-object v1, v0, Lcom/notriddle/budget/FileCreatorFragment$1;->this$0:Lcom/notriddle/budget/FileCreatorFragment;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Throwable;
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "dests"    # [Landroid/net/Uri;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/FileCreatorFragment$1;--->doInBackground([Landroid/net/Uri;)Ljava/lang/Throwable;"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_0
    iget-object v0, v2, Lcom/notriddle/budget/FileCreatorFragment$1;->this$0:Lcom/notriddle/budget/FileCreatorFragment;

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/notriddle/budget/FileCreatorFragment;->perform(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/notriddle/budget/FileCreatorFragment$1;->doInBackground([Landroid/net/Uri;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v0, p0, Lcom/notriddle/budget/FileCreatorFragment$1;->this$0:Lcom/notriddle/budget/FileCreatorFragment;

    invoke-virtual {v0}, Lcom/notriddle/budget/FileCreatorFragment;->dismiss()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/notriddle/budget/FileCreatorFragment$1;->this$0:Lcom/notriddle/budget/FileCreatorFragment;

    invoke-virtual {v0}, Lcom/notriddle/budget/FileCreatorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
