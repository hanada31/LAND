.class public Lorg/mozilla/universalchardet/UniversalDetector;
.super Ljava/lang/Object;
.source "UniversalDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/UniversalDetector$DetectorException;
    }
.end annotation


# instance fields
.field mDet:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "universalchardet"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/universalchardet/UniversalDetector$DetectorException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Lorg/mozilla/universalchardet/UniversalDetector;->chardet_create()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->mDet:J

    .line 10
    iget-wide v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->mDet:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lorg/mozilla/universalchardet/UniversalDetector$DetectorException;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/UniversalDetector$DetectorException;-><init>()V

    throw v0

    .line 13
    :cond_0
    return-void
.end method

.method private static native chardet_create()J
.end method

.method private static native chardet_data_end(J)I
.end method

.method private static native chardet_destroy(J)V
.end method

.method private static native chardet_get_charset(J)Ljava/lang/String;
.end method

.method private static native chardet_handle_data(J[BII)I
.end method

.method private static native chardet_reset(J)I
.end method


# virtual methods
.method public dataEnd()I
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->mDet:J

    invoke-static {v0, v1}, Lorg/mozilla/universalchardet/UniversalDetector;->chardet_data_end(J)I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->mDet:J

    invoke-static {v0, v1}, Lorg/mozilla/universalchardet/UniversalDetector;->chardet_destroy(J)V

    .line 22
    return-void
.end method

.method public getCharset()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    iget-wide v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->mDet:J

    invoke-static {v2, v3}, Lorg/mozilla/universalchardet/UniversalDetector;->chardet_get_charset(J)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "ret":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :cond_0
    return-object v0
.end method

.method public handleData([BII)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 25
    iget-wide v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->mDet:J

    invoke-static {v0, v1, p1, p2, p3}, Lorg/mozilla/universalchardet/UniversalDetector;->chardet_handle_data(J[BII)I

    move-result v0

    return v0
.end method

.method public reset()I
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->mDet:J

    invoke-static {v0, v1}, Lorg/mozilla/universalchardet/UniversalDetector;->chardet_reset(J)I

    move-result v0

    return v0
.end method
