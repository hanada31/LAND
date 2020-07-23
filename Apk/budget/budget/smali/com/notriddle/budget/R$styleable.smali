.class public final Lcom/notriddle/budget/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/notriddle/budget/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final EditTextDefaultFocus:[I

.field public static final EditTextDefaultFocus_defaultFocus:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 235
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f010000

    aput v2, v0, v1

    sput-object v0, Lcom/notriddle/budget/R$styleable;->EditTextDefaultFocus:[I

    return-void
.end method
