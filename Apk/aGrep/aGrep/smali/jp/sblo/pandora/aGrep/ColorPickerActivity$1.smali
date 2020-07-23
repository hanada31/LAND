.class Ljp/sblo/pandora/aGrep/ColorPickerActivity$1;
.super Ljava/lang/Object;
.source "ColorPickerActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


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


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/ColorPickerActivity;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Ljp/sblo/pandora/aGrep/ColorPickerActivity$1;---><init>(Ljp/sblo/pandora/aGrep/ColorPickerActivity;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/ColorPickerActivity$1;->this$0:Ljp/sblo/pandora/aGrep/ColorPickerActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    # InsDal Modified --> local register: (2)#
    .registers 12

    move-object/16 v2, p0
    move-object/16 v3, p1
    move/16 v4, p2
    move/16 v5, p3
    move-object/16 v6, p4
    move/16 v7, p5
    move/16 v8, p6

    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Ljp/sblo/pandora/aGrep/ColorPickerActivity$1;--->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {v6}, Landroid/text/Spanned;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[0-9a-fA-F]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    .end local v3    # "source":Ljava/lang/CharSequence;
    :goto_0
    return-object v3

    .restart local v3    # "source":Ljava/lang/CharSequence;
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method
