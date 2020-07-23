.class Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;
.super Ljava/lang/Object;
.source "ColorPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/sblo/pandora/aGrep/ColorPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorName"
.end annotation


# instance fields
.field color:I

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move/16 v1, p1
    move-object/16 v2, p2

    .param p1, "_color"    # I
    .param p2, "_name"    # Ljava/lang/String;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;---><init>(ILjava/lang/String;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, v0, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;->color:I

    .line 31
    iput-object v2, v0, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;->name:Ljava/lang/String;

    .line 32
    return-void
.end method
