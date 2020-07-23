.class Ljp/sblo/pandora/aGrep/Search$GrepTask$1;
.super Ljava/lang/Object;
.source "Search.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/sblo/pandora/aGrep/Search$GrepTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/sblo/pandora/aGrep/Search$GrepTask;


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/Search$GrepTask;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Ljp/sblo/pandora/aGrep/Search$GrepTask$1;---><init>(Ljp/sblo/pandora/aGrep/Search$GrepTask;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/Search$GrepTask$1;->this$1:Ljp/sblo/pandora/aGrep/Search$GrepTask;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Ljp/sblo/pandora/aGrep/Search$GrepTask$1;--->onCancel(Landroid/content/DialogInterface;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, v2, Ljp/sblo/pandora/aGrep/Search$GrepTask$1;->this$1:Ljp/sblo/pandora/aGrep/Search$GrepTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->access$102(Ljp/sblo/pandora/aGrep/Search$GrepTask;Z)Z

    .line 161
    iget-object v0, v2, Ljp/sblo/pandora/aGrep/Search$GrepTask$1;->this$1:Ljp/sblo/pandora/aGrep/Search$GrepTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->cancel(Z)Z

    .line 162
    return-void
.end method
