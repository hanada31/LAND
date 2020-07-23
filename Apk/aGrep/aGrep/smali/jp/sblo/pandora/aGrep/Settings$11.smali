.class Ljp/sblo/pandora/aGrep/Settings$11;
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
    const-string v4, "Ljp/sblo/pandora/aGrep/Settings$11;---><init>(Ljp/sblo/pandora/aGrep/Settings;Landroid/widget/AutoCompleteTextView;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/Settings$11;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    iput-object v2, v0, Ljp/sblo/pandora/aGrep/Settings$11;->val$edittext:Landroid/widget/AutoCompleteTextView;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1

    .param p1, "view"    # Landroid/view/View;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/Settings$11;--->onClick(Landroid/view/View;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, v1, Ljp/sblo/pandora/aGrep/Settings$11;->val$edittext:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 251
    return-void
.end method
