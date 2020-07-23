.class public final Lcom/notriddle/budget/SpendFragment;
.super Lcom/notriddle/budget/OkFragment;
.source "SpendFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/notriddle/budget/OkFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Landroid/widget/DatePicker$OnDateChangedListener;"
    }
.end annotation


# instance fields
.field mAmount:Lcom/notriddle/budget/EditMoney;

.field mDelay:Landroid/widget/DatePicker;

.field mDelayed:Landroid/widget/CheckBox;

.field mDescription:Landroid/widget/AutoCompleteTextView;

.field mHelper:Lcom/notriddle/budget/EnvelopesOpenHelper;

.field mId:I

.field mLogAdapter:Lcom/notriddle/budget/SimpleLogAdapter;

.field mNegative:Z


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/SpendFragment;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-direct {v0}, Lcom/notriddle/budget/OkFragment;-><init>()V

    return-void
.end method

.method public static newInstance(IZ)Lcom/notriddle/budget/SpendFragment;
    # InsDal Modified --> local register: (3)#
    .registers 8

    move/16 v3, p0
    move/16 v4, p1

    .param p0, "id"    # I
    .param p1, "negative"    # Z

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/SpendFragment;--->newInstance(IZ)Lcom/notriddle/budget/SpendFragment;"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Lcom/notriddle/budget/SpendFragment;

    invoke-direct {v1}, Lcom/notriddle/budget/SpendFragment;-><init>()V

    .line 75
    .local v1, "retVal":Lcom/notriddle/budget/SpendFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "com.notriddle.budget.envelope"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string v2, "com.notriddle.budget.negative"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    invoke-virtual {v1, v0}, Lcom/notriddle/budget/SpendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    return-object v1
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/SpendFragment;--->afterTextChanged(Landroid/text/Editable;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v0}, Lcom/notriddle/budget/SpendFragment;->refreshOkButton()V

    .line 201
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    # InsDal Modified --> local register: (0)#
    .registers 8

    move-object/16 v0, p0
    move-object/16 v1, p1
    move/16 v2, p2
    move/16 v3, p3
    move/16 v4, p4


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/SpendFragment;--->beforeTextChanged(Ljava/lang/CharSequence;III)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method public final getTitle()Ljava/lang/String;
    # InsDal Modified --> local register: (2)#
    .registers 6

    move-object/16 v2, p0


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/SpendFragment;--->getTitle()Ljava/lang/String;"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v2}, Lcom/notriddle/budget/SpendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v0, v2, Lcom/notriddle/budget/SpendFragment;->mNegative:Z

    if-eqz v0, :cond_0

    const v0, 0x7f07000f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f07000d

    goto :goto_0
.end method

.method public final isOk()Z
    # InsDal Modified --> local register: (4)#
    .registers 8

    move-object/16 v4, p0


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/SpendFragment;--->isOk()Z"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, v4, Lcom/notriddle/budget/SpendFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/notriddle/budget/SpendFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v0}, Lcom/notriddle/budget/EditMoney;->getCents()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ok()V
    # InsDal Modified --> local register: (9)#
    .registers 13

    move-object/16 v9, p0


    .prologue

    const-string v10, "M_InsDal"
    const-string v11, "Lcom/notriddle/budget/SpendFragment;--->ok()V"
    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 233
    iget-object v0, v9, Lcom/notriddle/budget/SpendFragment;->mDelayed:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, v9, Lcom/notriddle/budget/SpendFragment;->mDelay:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    iget-object v4, v9, Lcom/notriddle/budget/SpendFragment;->mDelay:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getMonth()I

    move-result v4

    iget-object v7, v9, Lcom/notriddle/budget/SpendFragment;->mDelay:Landroid/widget/DatePicker;

    invoke-virtual {v7}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v7

    invoke-direct {v0, v1, v4, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    .line 239
    .local v5, "time":J
    invoke-virtual {v9}, Lcom/notriddle/budget/SpendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, v9, Lcom/notriddle/budget/SpendFragment;->mId:I

    iget-boolean v4, v9, Lcom/notriddle/budget/SpendFragment;->mNegative:Z

    if-eqz v4, :cond_0

    :goto_0
    int-to-long v2, v2

    iget-object v4, v9, Lcom/notriddle/budget/SpendFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v4}, Lcom/notriddle/budget/EditMoney;->getCents()J

    move-result-wide v7

    mul-long/2addr v2, v7

    iget-object v4, v9, Lcom/notriddle/budget/SpendFragment;->mDescription:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v6}, Lcom/notriddle/budget/EnvelopesOpenHelper;->depositeDelayed(Landroid/content/Context;IJLjava/lang/String;J)V

    .line 250
    .end local v5    # "time":J
    :goto_1
    return-void

    .restart local v5    # "time":J
    :cond_0
    move v2, v3

    .line 239
    goto :goto_0

    .line 246
    .end local v5    # "time":J
    :cond_1
    invoke-virtual {v9}, Lcom/notriddle/budget/SpendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, v9, Lcom/notriddle/budget/SpendFragment;->mId:I

    iget-boolean v4, v9, Lcom/notriddle/budget/SpendFragment;->mNegative:Z

    if-eqz v4, :cond_2

    :goto_2
    int-to-long v2, v2

    iget-object v4, v9, Lcom/notriddle/budget/SpendFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v4}, Lcom/notriddle/budget/EditMoney;->getCents()J

    move-result-wide v7

    mul-long/2addr v2, v7

    iget-object v4, v9, Lcom/notriddle/budget/SpendFragment;->mDescription:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/notriddle/budget/EnvelopesOpenHelper;->deposite(Landroid/content/Context;IJLjava/lang/String;)V

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    # InsDal Modified --> local register: (2)#
    .registers 8

    move-object/16 v2, p0
    move-object/16 v3, p1
    move/16 v4, p2

    .param p2, "checked"    # Z

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/SpendFragment;--->onCheckedChanged(Landroid/widget/CompoundButton;Z)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v2}, Lcom/notriddle/budget/SpendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/notriddle/budget/SpendFragment;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 163
    invoke-virtual {v2}, Lcom/notriddle/budget/SpendFragment;->changeToActivity()V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v1, v2, Lcom/notriddle/budget/SpendFragment;->mDelay:Landroid/widget/DatePicker;

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/DatePicker;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (4)#
    .registers 9

    move-object/16 v4, p0
    move-object/16 v5, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {v4, v5}, Lcom/notriddle/budget/OkFragment;->onCreate(Landroid/os/Bundle;)V


    const-string v6, "M_InsDal"
    const-string v7, "Lcom/notriddle/budget/SpendFragment;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v1, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-virtual {v4}, Lcom/notriddle/budget/SpendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v4, Lcom/notriddle/budget/SpendFragment;->mHelper:Lcom/notriddle/budget/EnvelopesOpenHelper;

    .line 87
    invoke-virtual {v4}, Lcom/notriddle/budget/SpendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "com.notriddle.budget.envelope"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Lcom/notriddle/budget/SpendFragment;->mId:I

    .line 89
    const-string v1, "com.notriddle.budget.negative"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v4, Lcom/notriddle/budget/SpendFragment;->mNegative:Z

    .line 90
    invoke-virtual {v4}, Lcom/notriddle/budget/SpendFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 91
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {v3, v4}, Lcom/notriddle/budget/OkFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;

    move-result-object v0

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/SpendFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    .line 95
    .local v0, "retVal":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 99
    return-object v0
.end method

.method public final bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/notriddle/budget/SpendFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateInternalView$469ccb8a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    # InsDal Modified --> local register: (8)#
    .registers 14

    move-object/16 v8, p0
    move-object/16 v9, p1
    move-object/16 v10, p2

    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "state"    # Landroid/os/Bundle;

    .prologue

    const-string v11, "M_InsDal"
    const-string v12, "Lcom/notriddle/budget/SpendFragment;--->onCreateInternalView$469ccb8a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;"
    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 104
    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, "retVal":Landroid/view/View;
    const v3, 0x7f0a0016

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/notriddle/budget/EditMoney;

    iput-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    .line 106
    const v3, 0x7f0a0015

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    iput-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mDescription:Landroid/widget/AutoCompleteTextView;

    .line 107
    iget-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mDescription:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 108
    new-instance v3, Lcom/notriddle/budget/SimpleLogAdapter;

    invoke-virtual {v8}, Lcom/notriddle/budget/SpendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/notriddle/budget/SimpleLogAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mLogAdapter:Lcom/notriddle/budget/SimpleLogAdapter;

    .line 109
    iget-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mLogAdapter:Lcom/notriddle/budget/SimpleLogAdapter;

    new-instance v4, Lcom/notriddle/budget/SpendFragment$1;

    invoke-direct {v4, v8}, Lcom/notriddle/budget/SpendFragment$1;-><init>(Lcom/notriddle/budget/SpendFragment;)V

    invoke-virtual {v3, v4}, Lcom/notriddle/budget/SimpleLogAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 128
    iget-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mDescription:Landroid/widget/AutoCompleteTextView;

    iget-object v4, v8, Lcom/notriddle/budget/SpendFragment;->mLogAdapter:Lcom/notriddle/budget/SimpleLogAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mDescription:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v8}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    iget-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v3, v8}, Lcom/notriddle/budget/EditMoney;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 131
    iget-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v3, v8}, Lcom/notriddle/budget/EditMoney;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    const v3, 0x7f0a0017

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mDelayed:Landroid/widget/CheckBox;

    .line 134
    iget-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mDelayed:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    const v3, 0x7f0a0018

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/DatePicker;

    iput-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mDelay:Landroid/widget/DatePicker;

    .line 136
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 137
    .local v2, "tomorrow":Ljava/util/GregorianCalendar;
    invoke-virtual {v2, v6, v5}, Ljava/util/GregorianCalendar;->add(II)V

    .line 138
    iget-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mDelay:Landroid/widget/DatePicker;

    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 140
    if-nez v10, :cond_0

    .line 141
    invoke-virtual {v8}, Lcom/notriddle/budget/SpendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 142
    .local v0, "args":Landroid/os/Bundle;
    iget-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mDescription:Landroid/widget/AutoCompleteTextView;

    const-string v4, "com.notriddle.budget.description"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    const-string v4, "com.notriddle.budget.cents"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/notriddle/budget/EditMoney;->setCents(J)V

    .line 144
    iget-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mDelayed:Landroid/widget/CheckBox;

    const-string v4, "com.notriddle.budget.delayed"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 146
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    iget-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mDelayed:Landroid/widget/CheckBox;

    iget-object v4, v8, Lcom/notriddle/budget/SpendFragment;->mDelayed:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v8, v3, v4}, Lcom/notriddle/budget/SpendFragment;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 148
    return-object v1
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    # InsDal Modified --> local register: (10)#
    .registers 16

    move-object/16 v10, p0
    move/16 v11, p1
    move-object/16 v12, p2

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue

    const-string v13, "M_InsDal"
    const-string v14, "Lcom/notriddle/budget/SpendFragment;--->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;"
    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 204
    iget-boolean v1, v10, Lcom/notriddle/budget/SpendFragment;->mNegative:Z

    if-eqz v1, :cond_0

    const-string v9, "<"

    .line 205
    .local v9, "s":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/notriddle/budget/SQLiteLoader;

    invoke-virtual {v10}, Lcom/notriddle/budget/SpendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v10, Lcom/notriddle/budget/SpendFragment;->mHelper:Lcom/notriddle/budget/EnvelopesOpenHelper;

    const-string v3, "log"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "description"

    aput-object v5, v4, v8

    const-string v5, "cents"

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string v6, "time"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "_id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "envelope = ? AND cents "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/String;

    iget v7, v10, Lcom/notriddle/budget/SpendFragment;->mId:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const-string v7, "time * -1"

    invoke-direct/range {v0 .. v8}, Lcom/notriddle/budget/SQLiteLoader;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;B)V

    .line 216
    .local v0, "retVal":Lcom/notriddle/budget/SQLiteLoader;
    sget-object v1, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/notriddle/budget/SQLiteLoader;->setNotificationUri(Landroid/net/Uri;)V

    .line 217
    return-object v0

    .line 204
    .end local v0    # "retVal":Lcom/notriddle/budget/SQLiteLoader;
    .end local v9    # "s":Ljava/lang/String;
    :cond_0
    const-string v9, ">"

    goto :goto_0
.end method

.method public final onDateChanged(Landroid/widget/DatePicker;III)V
    # InsDal Modified --> local register: (0)#
    .registers 8

    move-object/16 v0, p0
    move-object/16 v1, p1
    move/16 v2, p2
    move/16 v3, p3
    move/16 v4, p4


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/SpendFragment;--->onDateChanged(Landroid/widget/DatePicker;III)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    # InsDal Modified --> local register: (8)#
    .registers 17

    move-object/16 v8, p0
    move-object/16 v9, p1
    move-object/16 v10, p2
    move/16 v11, p3
    move-wide/16 v12, p4

    .param p3, "pos"    # I

    .prologue

    const-string v14, "M_InsDal"
    const-string v15, "Lcom/notriddle/budget/SpendFragment;--->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V"
    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, v8, Lcom/notriddle/budget/SpendFragment;->mLogAdapter:Lcom/notriddle/budget/SimpleLogAdapter;

    invoke-virtual {v2}, Lcom/notriddle/budget/SimpleLogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 176
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 177
    .local v1, "oldPos":I
    invoke-interface {v0, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 178
    iget-object v2, v8, Lcom/notriddle/budget/SpendFragment;->mDescription:Landroid/widget/AutoCompleteTextView;

    const-string v3, "description"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v2, v8, Lcom/notriddle/budget/SpendFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v2}, Lcom/notriddle/budget/EditMoney;->getCents()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 182
    iget-object v3, v8, Lcom/notriddle/budget/SpendFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    iget-boolean v2, v8, Lcom/notriddle/budget/SpendFragment;->mNegative:Z

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    :goto_0
    int-to-long v4, v2

    const-string v2, "cents"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/notriddle/budget/EditMoney;->setCents(J)V

    .line 184
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 185
    return-void

    .line 182
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 1
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    iget-object v0, p0, Lcom/notriddle/budget/SpendFragment;->mLogAdapter:Lcom/notriddle/budget/SimpleLogAdapter;

    invoke-virtual {v0, p2}, Lcom/notriddle/budget/SimpleLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/SpendFragment;--->onLoaderReset(Landroid/content/Loader;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v0}, Lcom/notriddle/budget/SpendFragment;->dismiss()V

    .line 226
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    # InsDal Modified --> local register: (0)#
    .registers 8

    move-object/16 v0, p0
    move-object/16 v1, p1
    move/16 v2, p2
    move/16 v3, p3
    move/16 v4, p4


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/SpendFragment;--->onTextChanged(Ljava/lang/CharSequence;III)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method protected final writeArgs(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1

    .param p1, "args"    # Landroid/os/Bundle;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/SpendFragment;--->writeArgs(Landroid/os/Bundle;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v0, "com.notriddle.budget.description"

    iget-object v1, v3, Lcom/notriddle/budget/SpendFragment;->mDescription:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "com.notriddle.budget.cents"

    iget-object v1, v3, Lcom/notriddle/budget/SpendFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v1}, Lcom/notriddle/budget/EditMoney;->getCents()J

    move-result-wide v1

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 155
    const-string v0, "com.notriddle.budget.delayed"

    iget-object v1, v3, Lcom/notriddle/budget/SpendFragment;->mDelayed:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    return-void
.end method
