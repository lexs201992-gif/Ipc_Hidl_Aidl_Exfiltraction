.class public Lcom/spreadtrum/sgps/NumberPickerView;
.super Landroid/widget/LinearLayout;
.source "NumberPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/sgps/NumberPickerView$OnInputNumberListener;,
        Lcom/spreadtrum/sgps/NumberPickerView$OnClickInputListener;
    }
.end annotation


# static fields
.field private static final textDefaultSize:I = 0xe


# instance fields
.field private mNumStep:I

.field private mNumText:Landroid/widget/EditText;

.field private maxNumValue:I

.field private minNumValue:I

.field private onClickInputListener:Lcom/spreadtrum/sgps/NumberPickerView$OnClickInputListener;

.field private onInputNumberListener:Lcom/spreadtrum/sgps/NumberPickerView$OnInputNumberListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->maxNumValue:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->minNumValue:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumStep:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->maxNumValue:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->minNumValue:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumStep:I

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/sgps/NumberPickerView;->initNumberPickerView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static dip2px(Landroid/content/Context;F)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private initNumberPickerView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f07000d

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v2, 0x7f060097

    invoke-virtual {v0, v2}, Lcom/spreadtrum/sgps/NumberPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f06001b

    invoke-virtual {v0, v3}, Lcom/spreadtrum/sgps/NumberPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f06001a

    invoke-virtual {v0, v4}, Lcom/spreadtrum/sgps/NumberPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f060066

    invoke-virtual {v0, v5}, Lcom/spreadtrum/sgps/NumberPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, v0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget-object v5, Lcom/spreadtrum/sgps/R$styleable;->NumberButton:[I

    move-object/from16 v6, p2

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v7, 0x1

    const v8, 0x7f050003

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/4 v9, 0x0

    const v10, 0x7f050002

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v10, 0x6

    const v11, 0x7f050001

    invoke-virtual {v5, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    const/4 v11, 0x5

    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v5, v12, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    const/4 v12, 0x2

    const/4 v13, -0x1

    invoke-virtual {v5, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    const/4 v14, 0x7

    const/high16 v15, -0x1000000

    invoke-virtual {v5, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    const/16 v15, 0x8

    invoke-virtual {v5, v15, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {v0, v7}, Lcom/spreadtrum/sgps/NumberPickerView;->setEditable(Z)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v13, v0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setTextColor(I)V

    if-lez v15, :cond_0

    iget-object v13, v0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    move-object/from16 v16, v2

    int-to-float v2, v15

    invoke-static {v1, v2}, Lcom/spreadtrum/sgps/NumberPickerView;->px2sp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v13, v2}, Landroid/widget/EditText;->setTextSize(F)V

    goto :goto_0

    :cond_0
    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    const/high16 v13, 0x41600000    # 14.0f

    invoke-virtual {v2, v13}, Landroid/widget/EditText;->setTextSize(F)V

    :goto_0
    const-string v2, "NumPickerView"

    if-lez v12, :cond_1

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v13, v12, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v1, v13

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    const-string v1, "\u6587\u672c\u91c7\u7528\u9ed8\u8ba4\u7684\u5bbd\u9ad8"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-lez v6, :cond_2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, v0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_2
    const-string v1, "\u7f16\u8f91\u6846\u91c7\u7528\u9ed8\u8ba4\u7684\u5bbd\u9ad8"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private static px2sp(Landroid/content/Context;F)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private setEditable(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v1}, Landroid/text/method/DigitsKeyListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    :goto_0
    return-void
.end method

.method private static sp2px(Landroid/content/Context;F)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private warningForMaxInput()V
    .locals 2

    iget-object v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->onClickInputListener:Lcom/spreadtrum/sgps/NumberPickerView$OnClickInputListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/spreadtrum/sgps/NumberPickerView;->maxNumValue:I

    invoke-interface {v0, v1}, Lcom/spreadtrum/sgps/NumberPickerView$OnClickInputListener;->onWarningMaxInput(I)V

    :cond_0
    return-void
.end method

.method private warningForMinInput()V
    .locals 2

    iget-object v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->onClickInputListener:Lcom/spreadtrum/sgps/NumberPickerView$OnClickInputListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/spreadtrum/sgps/NumberPickerView;->minNumValue:I

    invoke-interface {v0, v1}, Lcom/spreadtrum/sgps/NumberPickerView$OnClickInputListener;->onWarningMinInput(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->onInputNumberListener:Lcom/spreadtrum/sgps/NumberPickerView$OnInputNumberListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/spreadtrum/sgps/NumberPickerView$OnInputNumberListener;->afterTextChanged(Landroid/text/Editable;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/spreadtrum/sgps/NumberPickerView;->minNumValue:I

    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/spreadtrum/sgps/NumberPickerView;->maxNumValue:I

    if-le v1, v2, :cond_2

    iget-object v3, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->onInputNumberListener:Lcom/spreadtrum/sgps/NumberPickerView$OnInputNumberListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/spreadtrum/sgps/NumberPickerView$OnInputNumberListener;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public getNumText()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    iget-object v1, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    iget v2, p0, Lcom/spreadtrum/sgps/NumberPickerView;->minNumValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/spreadtrum/sgps/NumberPickerView;->minNumValue:I

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/spreadtrum/sgps/NumberPickerView;->getNumText()I

    move-result v1

    const v2, 0x7f06001b

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/spreadtrum/sgps/NumberPickerView;->minNumValue:I

    iget v3, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumStep:I

    add-int v4, v2, v3

    if-le v1, v4, :cond_0

    iget-object v2, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f06001a

    if-ne v0, v2, :cond_3

    iget v2, p0, Lcom/spreadtrum/sgps/NumberPickerView;->maxNumValue:I

    iget v3, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumStep:I

    sub-int v4, v2, v3

    if-ge v1, v4, :cond_2

    iget-object v2, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->onInputNumberListener:Lcom/spreadtrum/sgps/NumberPickerView$OnInputNumberListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/spreadtrum/sgps/NumberPickerView$OnInputNumberListener;->onTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public setCurrentValue(I)V
    .locals 2

    iget v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->minNumValue:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->maxNumValue:I

    if-le p1, v0, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumText:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setMaxValue(I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/sgps/NumberPickerView;->maxNumValue:I

    return-void
.end method

.method public setMinValue(I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/sgps/NumberPickerView;->minNumValue:I

    return-void
.end method

.method public setNumStep(I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/sgps/NumberPickerView;->mNumStep:I

    return-void
.end method

.method public setOnClickInputListener(Lcom/spreadtrum/sgps/NumberPickerView$OnClickInputListener;)Lcom/spreadtrum/sgps/NumberPickerView;
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/sgps/NumberPickerView;->onClickInputListener:Lcom/spreadtrum/sgps/NumberPickerView$OnClickInputListener;

    return-object p0
.end method

.method public setOnInputNumberListener(Lcom/spreadtrum/sgps/NumberPickerView$OnInputNumberListener;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/sgps/NumberPickerView;->onInputNumberListener:Lcom/spreadtrum/sgps/NumberPickerView$OnInputNumberListener;

    return-void
.end method
