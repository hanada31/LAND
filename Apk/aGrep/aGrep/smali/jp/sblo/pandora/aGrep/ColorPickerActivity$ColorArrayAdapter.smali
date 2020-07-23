.class Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ColorPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/sblo/pandora/aGrep/ColorPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColorArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Ljp/sblo/pandora/aGrep/ColorPickerActivity;


# direct methods
.method public constructor <init>(Ljp/sblo/pandora/aGrep/ColorPickerActivity;Landroid/content/Context;I[Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;)V
    # InsDal Modified --> local register: (0)#
    .registers 8

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2
    move/16 v3, p3
    move-object/16 v4, p4

    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorArrayAdapter;---><init>(Ljp/sblo/pandora/aGrep/ColorPickerActivity;Landroid/content/Context;I[Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorArrayAdapter;->this$0:Ljp/sblo/pandora/aGrep/ColorPickerActivity;

    .line 70
    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 71
    iput-object v2, v0, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorArrayAdapter;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    # InsDal Modified --> local register: (12)#
    .registers 19

    move-object/16 v12, p0
    move/16 v13, p1
    move-object/16 v14, p2
    move-object/16 v15, p3

    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue

    const-string v16, "M_InsDal"
    const-string v17, "Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorArrayAdapter;--->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;"
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    move-object v5, v14

    check-cast v5, Landroid/widget/TextView;

    .line 77
    .local v5, "tv":Landroid/widget/TextView;
    if-nez v5, :cond_0

    .line 78
    new-instance v5, Landroid/widget/TextView;

    .end local v5    # "tv":Landroid/widget/TextView;
    iget-object v7, v12, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorArrayAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 79
    .restart local v5    # "tv":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x1

    iget-object v8, v12, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorArrayAdapter;->this$0:Ljp/sblo/pandora/aGrep/ColorPickerActivity;

    invoke-static {v8}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->access$000(Ljp/sblo/pandora/aGrep/ColorPickerActivity;)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 80
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v7, v12, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorArrayAdapter;->this$0:Ljp/sblo/pandora/aGrep/ColorPickerActivity;

    invoke-static {v7}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->access$100(Ljp/sblo/pandora/aGrep/ColorPickerActivity;)I

    move-result v7

    iget-object v8, v12, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorArrayAdapter;->this$0:Ljp/sblo/pandora/aGrep/ColorPickerActivity;

    invoke-static {v8}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->access$100(Ljp/sblo/pandora/aGrep/ColorPickerActivity;)I

    move-result v8

    iget-object v9, v12, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorArrayAdapter;->this$0:Ljp/sblo/pandora/aGrep/ColorPickerActivity;

    invoke-static {v9}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->access$100(Ljp/sblo/pandora/aGrep/ColorPickerActivity;)I

    move-result v9

    iget-object v10, v12, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorArrayAdapter;->this$0:Ljp/sblo/pandora/aGrep/ColorPickerActivity;

    invoke-static {v10}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->access$100(Ljp/sblo/pandora/aGrep/ColorPickerActivity;)I

    move-result v10

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 83
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_0
    invoke-virtual {v12, v13}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    .line 84
    .local v1, "cn":Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;
    iget v7, v1, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;->color:I

    if-eqz v7, :cond_2

    .line 86
    const-string v7, "%1$s\n#%2$06X"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v1, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, v1, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;->color:I

    const v11, 0xffffff

    and-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget v7, v1, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;->color:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 90
    iget v7, v1, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;->color:I

    const/high16 v8, 0xff0000

    and-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x10

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float v4, v7, v8

    .line 91
    .local v4, "r":F
    iget v7, v1, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;->color:I

    const v8, 0xff00

    and-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x8

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float v2, v7, v8

    .line 92
    .local v2, "g":F
    iget v7, v1, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;->color:I

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float v0, v7, v8

    .line 94
    .local v0, "b":F
    const v7, 0x3e991687    # 0.299f

    mul-float/2addr v7, v4

    const v8, 0x3f1645a2    # 0.587f

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    const v8, 0x3de978d5    # 0.114f

    mul-float/2addr v8, v0

    add-float v6, v7, v8

    .line 96
    .local v6, "y":F
    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    .line 97
    const/high16 v7, -0x1000000

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    .end local v0    # "b":F
    .end local v2    # "g":F
    .end local v4    # "r":F
    .end local v6    # "y":F
    :goto_0
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 108
    iget-object v7, v12, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorArrayAdapter;->this$0:Ljp/sblo/pandora/aGrep/ColorPickerActivity;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-object v5

    .line 99
    .restart local v0    # "b":F
    .restart local v2    # "g":F
    .restart local v4    # "r":F
    .restart local v6    # "y":F
    :cond_1
    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 103
    .end local v0    # "b":F
    .end local v2    # "g":F
    .end local v4    # "r":F
    .end local v6    # "y":F
    :cond_2
    iget-object v7, v1, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v7, -0x333334

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 105
    const/high16 v7, -0x1000000

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
