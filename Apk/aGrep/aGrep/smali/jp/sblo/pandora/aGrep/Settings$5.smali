.class Ljp/sblo/pandora/aGrep/Settings$5;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    const-string v3, "Ljp/sblo/pandora/aGrep/Settings$5;---><init>(Ljp/sblo/pandora/aGrep/Settings;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/Settings$5;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    # InsDal Modified --> local register: (4)#
    .registers 9

    move-object/16 v4, p0
    move-object/16 v5, p1

    .param p1, "view"    # Landroid/view/View;

    .prologue

    const-string v6, "M_InsDal"
    const-string v7, "Ljp/sblo/pandora/aGrep/Settings$5;--->onClick(Landroid/view/View;)V"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v4, Ljp/sblo/pandora/aGrep/Settings$5;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v1}, Ljp/sblo/pandora/aGrep/Settings;->access$200(Ljp/sblo/pandora/aGrep/Settings;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, "edtInput":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 139
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v4, Ljp/sblo/pandora/aGrep/Settings$5;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-static {v2}, Ljp/sblo/pandora/aGrep/Settings;->access$200(Ljp/sblo/pandora/aGrep/Settings;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f06000f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060011

    new-instance v3, Ljp/sblo/pandora/aGrep/Settings$5$2;

    invoke-direct {v3, v4, v0}, Ljp/sblo/pandora/aGrep/Settings$5$2;-><init>(Ljp/sblo/pandora/aGrep/Settings$5;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060020

    new-instance v3, Ljp/sblo/pandora/aGrep/Settings$5$1;

    invoke-direct {v3, v4}, Ljp/sblo/pandora/aGrep/Settings$5$1;-><init>(Ljp/sblo/pandora/aGrep/Settings$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 179
    return-void
.end method
