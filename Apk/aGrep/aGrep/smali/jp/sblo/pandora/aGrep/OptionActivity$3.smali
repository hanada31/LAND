.class Ljp/sblo/pandora/aGrep/OptionActivity$3;
.super Ljava/lang/Object;
.source "OptionActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/sblo/pandora/aGrep/OptionActivity;->createHighlightPreference(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/sblo/pandora/aGrep/OptionActivity;

.field final synthetic val$reqCode:I

.field final synthetic val$resid:I


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/OptionActivity;II)V
    # InsDal Modified --> local register: (0)#
    .registers 7

    move-object/16 v0, p0
    move-object/16 v1, p1
    move/16 v2, p2
    move/16 v3, p3


    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Ljp/sblo/pandora/aGrep/OptionActivity$3;---><init>(Ljp/sblo/pandora/aGrep/OptionActivity;II)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/OptionActivity$3;->this$0:Ljp/sblo/pandora/aGrep/OptionActivity;

    iput v2, v0, Ljp/sblo/pandora/aGrep/OptionActivity$3;->val$resid:I

    iput v3, v0, Ljp/sblo/pandora/aGrep/OptionActivity$3;->val$reqCode:I

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    # InsDal Modified --> local register: (4)#
    .registers 9

    move-object/16 v4, p0
    move-object/16 v5, p1

    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue

    const-string v6, "M_InsDal"
    const-string v7, "Ljp/sblo/pandora/aGrep/OptionActivity$3;--->onPreferenceClick(Landroid/preference/Preference;)Z"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v4, Ljp/sblo/pandora/aGrep/OptionActivity$3;->this$0:Ljp/sblo/pandora/aGrep/OptionActivity;

    const-class v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_TITLE"

    iget-object v2, v4, Ljp/sblo/pandora/aGrep/OptionActivity$3;->this$0:Ljp/sblo/pandora/aGrep/OptionActivity;

    iget v3, v4, Ljp/sblo/pandora/aGrep/OptionActivity$3;->val$resid:I

    invoke-virtual {v2, v3}, Ljp/sblo/pandora/aGrep/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v1, v4, Ljp/sblo/pandora/aGrep/OptionActivity$3;->this$0:Ljp/sblo/pandora/aGrep/OptionActivity;

    iget v2, v4, Ljp/sblo/pandora/aGrep/OptionActivity$3;->val$reqCode:I

    invoke-virtual {v1, v0, v2}, Ljp/sblo/pandora/aGrep/OptionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 118
    const/4 v1, 0x1

    return v1
.end method
