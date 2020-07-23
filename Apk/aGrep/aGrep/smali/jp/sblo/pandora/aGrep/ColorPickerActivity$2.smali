.class Ljp/sblo/pandora/aGrep/ColorPickerActivity$2;
.super Ljava/lang/Object;
.source "ColorPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/sblo/pandora/aGrep/ColorPickerActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/sblo/pandora/aGrep/ColorPickerActivity;

.field final synthetic val$edtInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/ColorPickerActivity;Landroid/widget/EditText;)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/ColorPickerActivity$2;---><init>(Ljp/sblo/pandora/aGrep/ColorPickerActivity;Landroid/widget/EditText;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/ColorPickerActivity$2;->this$0:Ljp/sblo/pandora/aGrep/ColorPickerActivity;

    iput-object v2, v0, Ljp/sblo/pandora/aGrep/ColorPickerActivity$2;->val$edtInput:Landroid/widget/EditText;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    # InsDal Modified --> local register: (6)#
    .registers 12

    move-object/16 v6, p0
    move-object/16 v7, p1
    move/16 v8, p2

    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Ljp/sblo/pandora/aGrep/ColorPickerActivity$2;--->onClick(Landroid/content/DialogInterface;I)V"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v3, v6, Ljp/sblo/pandora/aGrep/ColorPickerActivity$2;->val$edtInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .line 146
    .local v0, "code":I
    const/16 v3, 0x10

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 147
    iget-object v3, v6, Ljp/sblo/pandora/aGrep/ColorPickerActivity$2;->this$0:Ljp/sblo/pandora/aGrep/ColorPickerActivity;

    const/high16 v4, -0x1000000

    or-int/2addr v4, v0

    invoke-static {v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->access$200(Ljp/sblo/pandora/aGrep/ColorPickerActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, v6, Ljp/sblo/pandora/aGrep/ColorPickerActivity$2;->this$0:Ljp/sblo/pandora/aGrep/ColorPickerActivity;

    const v4, 0x7f060025

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
