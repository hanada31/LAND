.class Ljp/sblo/pandora/aGrep/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/sblo/pandora/aGrep/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/sblo/pandora/aGrep/Settings;


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/Settings;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Ljp/sblo/pandora/aGrep/Settings$1;---><init>(Ljp/sblo/pandora/aGrep/Settings;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/Settings$1;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    # InsDal Modified --> local register: (7)#
    .registers 12

    move-object/16 v7, p0
    move-object/16 v8, p1

    .param p1, "view"    # Landroid/view/View;

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Ljp/sblo/pandora/aGrep/Settings$1;--->onLongClick(Landroid/view/View;)Z"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    .line 61
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/sblo/pandora/aGrep/CheckedString;

    .line 63
    .local v0, "strItem":Ljp/sblo/pandora/aGrep/CheckedString;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v7, Ljp/sblo/pandora/aGrep/Settings$1;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v2}, Ljp/sblo/pandora/aGrep/Settings;->access$200(Ljp/sblo/pandora/aGrep/Settings;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, v7, Ljp/sblo/pandora/aGrep/Settings$1;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    const v3, 0x7f060016

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljp/sblo/pandora/aGrep/Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060011

    new-instance v3, Ljp/sblo/pandora/aGrep/Settings$1$1;

    invoke-direct {v3, v7, v0}, Ljp/sblo/pandora/aGrep/Settings$1$1;-><init>(Ljp/sblo/pandora/aGrep/Settings$1;Ljp/sblo/pandora/aGrep/CheckedString;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 76
    return v6
.end method
