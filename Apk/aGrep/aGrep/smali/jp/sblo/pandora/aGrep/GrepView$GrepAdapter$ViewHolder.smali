.class Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GrepView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field Index:Landroid/widget/TextView;

.field kwic:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
