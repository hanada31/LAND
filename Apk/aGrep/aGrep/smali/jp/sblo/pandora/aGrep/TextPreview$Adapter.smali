.class Ljp/sblo/pandora/aGrep/TextPreview$Adapter;
.super Landroid/widget/ArrayAdapter;
.source "TextPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/sblo/pandora/aGrep/TextPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mBgColor:I

.field private mFgColor:I

.field private mFontSize:I

.field private mPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/ArrayList;)V
    # InsDal Modified --> local register: (0)#
    .registers 8

    move-object/16 v0, p0
    move-object/16 v1, p1
    move/16 v2, p2
    move/16 v3, p3
    move-object/16 v4, p4

    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Ljp/sblo/pandora/aGrep/TextPreview$Adapter;---><init>(Landroid/content/Context;IILjava/util/ArrayList;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .local v4, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    # InsDal Modified --> local register: (5)#
    .registers 12

    move-object/16 v5, p0
    move/16 v6, p1
    move-object/16 v7, p2
    move-object/16 v8, p3

    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Ljp/sblo/pandora/aGrep/TextPreview$Adapter;--->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    move-object v1, v7

    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, "view":Landroid/widget/TextView;
    if-nez v1, :cond_0

    .line 63
    invoke-virtual {v5}, Ljp/sblo/pandora/aGrep/TextPreview$Adapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030007

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1    # "view":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 64
    .restart local v1    # "view":Landroid/widget/TextView;
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget v2, v5, Ljp/sblo/pandora/aGrep/TextPreview$Adapter;->mFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    :cond_0
    invoke-virtual {v5, v6}, Ljp/sblo/pandora/aGrep/TextPreview$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 69
    .local v0, "d":Ljava/lang/CharSequence;
    iget-object v2, v5, Ljp/sblo/pandora/aGrep/TextPreview$Adapter;->mPattern:Ljava/util/regex/Pattern;

    iget v3, v5, Ljp/sblo/pandora/aGrep/TextPreview$Adapter;->mFgColor:I

    iget v4, v5, Ljp/sblo/pandora/aGrep/TextPreview$Adapter;->mBgColor:I

    invoke-static {v0, v2, v3, v4}, Ljp/sblo/pandora/aGrep/Search;->highlightKeyword(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;II)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-object v1
.end method

.method public setFormat(Ljava/util/regex/Pattern;III)V
    # InsDal Modified --> local register: (0)#
    .registers 8

    move-object/16 v0, p0
    move-object/16 v1, p1
    move/16 v2, p2
    move/16 v3, p3
    move/16 v4, p4

    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "fg"    # I
    .param p3, "bg"    # I
    .param p4, "size"    # I

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Ljp/sblo/pandora/aGrep/TextPreview$Adapter;--->setFormat(Ljava/util/regex/Pattern;III)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/TextPreview$Adapter;->mPattern:Ljava/util/regex/Pattern;

    .line 76
    iput v2, v0, Ljp/sblo/pandora/aGrep/TextPreview$Adapter;->mFgColor:I

    .line 77
    iput v3, v0, Ljp/sblo/pandora/aGrep/TextPreview$Adapter;->mBgColor:I

    .line 78
    iput v4, v0, Ljp/sblo/pandora/aGrep/TextPreview$Adapter;->mFontSize:I

    .line 79
    return-void
.end method
