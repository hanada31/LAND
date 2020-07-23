.class Ljp/sblo/pandora/aGrep/Settings$2;
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
    const-string v3, "Ljp/sblo/pandora/aGrep/Settings$2;---><init>(Ljp/sblo/pandora/aGrep/Settings;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/Settings$2;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    # InsDal Modified --> local register: (8)#
    .registers 13

    move-object/16 v8, p0
    move-object/16 v9, p1

    .param p1, "view"    # Landroid/view/View;

    .prologue

    const-string v10, "M_InsDal"
    const-string v11, "Ljp/sblo/pandora/aGrep/Settings$2;--->onLongClick(Landroid/view/View;)Z"
    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    .line 84
    move-object v2, v9

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .local v1, "strText":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/sblo/pandora/aGrep/CheckedString;

    .line 87
    .local v0, "strItem":Ljp/sblo/pandora/aGrep/CheckedString;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, v8, Ljp/sblo/pandora/aGrep/Settings$2;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/Settings;->access$200(Ljp/sblo/pandora/aGrep/Settings;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060015

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, v8, Ljp/sblo/pandora/aGrep/Settings$2;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    const v4, 0x7f060016

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljp/sblo/pandora/aGrep/Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060011

    new-instance v4, Ljp/sblo/pandora/aGrep/Settings$2$1;

    invoke-direct {v4, v8, v0}, Ljp/sblo/pandora/aGrep/Settings$2$1;-><init>(Ljp/sblo/pandora/aGrep/Settings$2;Ljp/sblo/pandora/aGrep/CheckedString;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060012

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 100
    return v7
.end method
