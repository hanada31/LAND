.class Ljp/sblo/pandora/aGrep/Settings$9;
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

.field final synthetic val$edittext:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/Settings;Landroid/widget/AutoCompleteTextView;)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/Settings$9;---><init>(Ljp/sblo/pandora/aGrep/Settings;Landroid/widget/AutoCompleteTextView;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/Settings$9;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    iput-object v2, v0, Ljp/sblo/pandora/aGrep/Settings$9;->val$edittext:Landroid/widget/AutoCompleteTextView;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "view"    # Landroid/view/View;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Ljp/sblo/pandora/aGrep/Settings$9;--->onClick(Landroid/view/View;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, v2, Ljp/sblo/pandora/aGrep/Settings$9;->val$edittext:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, v2, Ljp/sblo/pandora/aGrep/Settings$9;->val$edittext:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 231
    return-void
.end method
