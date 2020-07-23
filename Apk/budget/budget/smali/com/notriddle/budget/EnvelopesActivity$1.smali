.class final Lcom/notriddle/budget/EnvelopesActivity$1;
.super Landroid/os/AsyncTask;
.source "EnvelopesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/EnvelopesActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/notriddle/budget/EnvelopesActivity;


# direct methods
.method constructor <init>(Lcom/notriddle/budget/EnvelopesActivity;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/EnvelopesActivity$1;---><init>(Lcom/notriddle/budget/EnvelopesActivity;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-object v1, v0, Lcom/notriddle/budget/EnvelopesActivity$1;->this$0:Lcom/notriddle/budget/EnvelopesActivity;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/EnvelopesActivity$1;--->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, v1, Lcom/notriddle/budget/EnvelopesActivity$1;->this$0:Lcom/notriddle/budget/EnvelopesActivity;

    invoke-static {v0}, Lcom/notriddle/budget/EnvelopesOpenHelper;->playLog(Landroid/content/Context;)V

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/EnvelopesActivity$1;--->onPostExecute(Ljava/lang/Object;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method
