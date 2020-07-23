.class Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GrepView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/sblo/pandora/aGrep/GrepView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GrepAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljp/sblo/pandora/aGrep/GrepView$Data;",
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
            "Ljp/sblo/pandora/aGrep/GrepView$Data;",
            ">;)V"
        }
    .end annotation

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;---><init>(Landroid/content/Context;IILjava/util/ArrayList;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .local v4, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 131
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    # InsDal Modified --> local register: (9)#
    .registers 16

    move-object/16 v9, p0
    move/16 v10, p1
    move-object/16 v11, p2
    move-object/16 v12, p3

    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue

    const-string v13, "M_InsDal"
    const-string v14, "Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;--->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;"
    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v7, -0x1000000

    .line 138
    if-eqz v11, :cond_0

    .line 139
    move-object v3, v11

    .line 140
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;

    .line 157
    .local v2, "holder":Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;
    :goto_0
    invoke-virtual {v9, v10}, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/sblo/pandora/aGrep/GrepView$Data;

    .line 159
    .local v0, "d":Ljp/sblo/pandora/aGrep/GrepView$Data;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Ljp/sblo/pandora/aGrep/GrepView$Data;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Ljp/sblo/pandora/aGrep/GrepView$Data;->mLinenumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "fname":Ljava/lang/String;
    iget-object v4, v2, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;->Index:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v4, v2, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;->kwic:Landroid/widget/TextView;

    iget-object v5, v0, Ljp/sblo/pandora/aGrep/GrepView$Data;->mText:Ljava/lang/CharSequence;

    iget-object v6, v9, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;->mPattern:Ljava/util/regex/Pattern;

    iget v7, v9, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;->mFgColor:I

    iget v8, v9, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;->mBgColor:I

    invoke-static {v5, v6, v7, v8}, Ljp/sblo/pandora/aGrep/Search;->highlightKeyword(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;II)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-object v3

    .line 143
    .end local v0    # "d":Ljp/sblo/pandora/aGrep/GrepView$Data;
    .end local v1    # "fname":Ljava/lang/String;
    .end local v2    # "holder":Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {v9}, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f030004

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 145
    .restart local v3    # "view":Landroid/view/View;
    new-instance v2, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;

    invoke-direct {v2}, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;-><init>()V

    .line 146
    .restart local v2    # "holder":Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;
    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;->Index:Landroid/widget/TextView;

    .line 147
    const v4, 0x7f090007

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;->kwic:Landroid/widget/TextView;

    .line 149
    iget-object v4, v2, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;->Index:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v4, v2, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;->kwic:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v4, v2, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;->Index:Landroid/widget/TextView;

    iget v5, v9, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;->mFontSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 153
    iget-object v4, v2, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter$ViewHolder;->kwic:Landroid/widget/TextView;

    iget v5, v9, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;->mFontSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 155
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
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
    .param p2, "fgcolor"    # I
    .param p3, "bgcolor"    # I
    .param p4, "size"    # I

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;--->setFormat(Ljava/util/regex/Pattern;III)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;->mPattern:Ljava/util/regex/Pattern;

    .line 168
    iput v2, v0, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;->mFgColor:I

    .line 169
    iput v3, v0, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;->mBgColor:I

    .line 170
    iput v4, v0, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;->mFontSize:I

    .line 172
    return-void
.end method
