.class final Lcom/notriddle/budget/PaycheckActivity$1;
.super Ljava/lang/Object;
.source "PaycheckActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/notriddle/budget/PaycheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/notriddle/budget/PaycheckActivity;


# direct methods
.method constructor <init>(Lcom/notriddle/budget/PaycheckActivity;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/PaycheckActivity$1;---><init>(Lcom/notriddle/budget/PaycheckActivity;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-object v1, v0, Lcom/notriddle/budget/PaycheckActivity$1;->this$0:Lcom/notriddle/budget/PaycheckActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/PaycheckActivity$1;--->run()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, v1, Lcom/notriddle/budget/PaycheckActivity$1;->this$0:Lcom/notriddle/budget/PaycheckActivity;

    invoke-static {v0}, Lcom/notriddle/budget/PaycheckActivity;->access$000(Lcom/notriddle/budget/PaycheckActivity;)V

    .line 160
    return-void
.end method
