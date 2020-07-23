.class public abstract Lcom/notriddle/budget/OkFragment;
.super Landroid/app/DialogFragment;
.source "OkFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/notriddle/budget/OkFragment$OnDismissListener;
    }
.end annotation


# instance fields
.field mRanOk:Z


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/OkFragment;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {v0}, Landroid/app/DialogFragment;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method protected final changeToActivity()V
    # InsDal Modified --> local register: (10)#
    .registers 14

    move-object/16 v10, p0


    .prologue

    const-string v11, "M_InsDal"
    const-string v12, "Lcom/notriddle/budget/OkFragment;--->changeToActivity()V"
    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .line 161
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {v10}, Lcom/notriddle/budget/OkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/notriddle/budget/FragmentActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v3, "i":Landroid/content/Intent;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fragment://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 163
    invoke-virtual {v10}, Lcom/notriddle/budget/OkFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 164
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v10, v0}, Lcom/notriddle/budget/OkFragment;->writeArgs(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 166
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_0

    .line 167
    invoke-virtual {v10}, Lcom/notriddle/budget/OkFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 168
    .local v5, "src":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 171
    .local v1, "copyBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 172
    .local v2, "copyCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v5, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 173
    invoke-static {v5, v1, v9, v9}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 176
    .local v4, "opts":Landroid/os/Bundle;
    invoke-virtual {v10, v3, v4}, Lcom/notriddle/budget/OkFragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 180
    .end local v1    # "copyBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "copyCanvas":Landroid/graphics/Canvas;
    .end local v4    # "opts":Landroid/os/Bundle;
    .end local v5    # "src":Landroid/view/View;
    :goto_0
    invoke-virtual {v10}, Lcom/notriddle/budget/OkFragment;->dismiss()V

    .line 181
    return-void

    .line 178
    :cond_0
    invoke-virtual {v10, v3}, Lcom/notriddle/budget/OkFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public dismiss()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/OkFragment;--->dismiss()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v1}, Lcom/notriddle/budget/OkFragment;->getShowsDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {v1}, Lcom/notriddle/budget/OkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/notriddle/budget/OkFragment$OnDismissListener;

    .line 76
    invoke-interface {v0}, Lcom/notriddle/budget/OkFragment$OnDismissListener;->onDismiss()V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-super {v1}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isOk()Z
.end method

.method public abstract ok()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {v1, v2}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V


    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/OkFragment;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/notriddle/budget/OkFragment;->setHasOptionsMenu(Z)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/notriddle/budget/OkFragment;->mRanOk:Z

    .line 66
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;
    # InsDal Modified --> local register: (7)#
    .registers 12

    move-object/16 v7, p0
    move-object/16 v8, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/OkFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Lcom/notriddle/budget/OkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f080001

    invoke-direct {v0, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 93
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 94
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v7, v1, v8}, Lcom/notriddle/budget/OkFragment;->onCreateInternalView$469ccb8a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 95
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f030008

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 96
    .local v2, "t":Landroid/view/View;
    const v4, 0x7f0a0009

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/notriddle/budget/OkFragment;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v4, v2

    .line 97
    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/notriddle/budget/OkFragment$2;

    invoke-direct {v6, v7}, Lcom/notriddle/budget/OkFragment$2;-><init>(Lcom/notriddle/budget/OkFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/notriddle/budget/OkFragment$1;

    invoke-direct {v6, v7}, Lcom/notriddle/budget/OkFragment$1;-><init>(Lcom/notriddle/budget/OkFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/notriddle/budget/OkFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCreateInternalView$469ccb8a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    # InsDal Modified --> local register: (1)#
    .registers 7

    move-object/16 v1, p0
    move-object/16 v2, p1
    move-object/16 v3, p2

    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 131
    invoke-super {v1, v2, v3}, Landroid/app/DialogFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V


    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/OkFragment;--->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const v0, 0x7f090002

    invoke-virtual {v3, v0, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 133
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    # InsDal Modified --> local register: (2)#
    .registers 9

    move-object/16 v2, p0
    move-object/16 v3, p1
    move-object/16 v4, p2
    move-object/16 v5, p3

    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue

    const-string v6, "M_InsDal"
    const-string v7, "Lcom/notriddle/budget/OkFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "retVal":Landroid/view/View;
    invoke-virtual {v2}, Lcom/notriddle/budget/OkFragment;->getShowsDialog()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {v2, v3, v5}, Lcom/notriddle/budget/OkFragment;->onCreateInternalView$469ccb8a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 88
    :cond_0
    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    # InsDal Modified --> local register: (1)#
    .registers 8

    move-object/16 v1, p0
    move-object/16 v2, p1
    move/16 v3, p2
    move-object/16 v4, p3


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/OkFragment;--->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean v0, v1, Lcom/notriddle/budget/OkFragment;->mRanOk:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/notriddle/budget/OkFragment;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/notriddle/budget/OkFragment;->mRanOk:Z

    .line 154
    invoke-virtual {v1}, Lcom/notriddle/budget/OkFragment;->ok()V

    .line 155
    invoke-virtual {v1}, Lcom/notriddle/budget/OkFragment;->dismiss()V

    .line 157
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1

    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/OkFragment;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 148
    invoke-super {v1, v2}, Landroid/app/DialogFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 144
    :pswitch_0
    invoke-virtual {v1}, Lcom/notriddle/budget/OkFragment;->ok()V

    .line 145
    invoke-virtual {v1}, Lcom/notriddle/budget/OkFragment;->dismiss()V

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x7f0a0026
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1

    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v2, 0x7f0a0026

    .line 136
    invoke-super {v3, v4}, Landroid/app/DialogFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V


    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/OkFragment;--->onPrepareOptionsMenu(Landroid/view/Menu;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-interface {v4, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {v3}, Lcom/notriddle/budget/OkFragment;->isOk()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 138
    invoke-interface {v4, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v3}, Lcom/notriddle/budget/OkFragment;->getShowsDialog()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 139
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue
    .line 69
    invoke-super {v0}, Landroid/app/DialogFragment;->onResume()V


    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/OkFragment;--->onResume()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v0}, Lcom/notriddle/budget/OkFragment;->refreshOkButton()V

    .line 71
    return-void
.end method

.method public final refreshOkButton()V
    # InsDal Modified --> local register: (3)#
    .registers 7

    move-object/16 v3, p0


    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/OkFragment;--->refreshOkButton()V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .line 119
    invoke-virtual {v3}, Lcom/notriddle/budget/OkFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 120
    .local v0, "d":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v3}, Lcom/notriddle/budget/OkFragment;->isOk()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    :cond_0
    invoke-virtual {v3}, Lcom/notriddle/budget/OkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {v3}, Lcom/notriddle/budget/OkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 127
    :cond_1
    return-void
.end method

.method protected writeArgs(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/OkFragment;--->writeArgs(Landroid/os/Bundle;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method
