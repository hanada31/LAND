.class Ljp/sblo/pandora/aGrep/GrepView$Data;
.super Ljava/lang/Object;
.source "GrepView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/sblo/pandora/aGrep/GrepView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljp/sblo/pandora/aGrep/GrepView$Data;",
        ">;"
    }
.end annotation


# instance fields
.field public mFile:Ljava/io/File;

.field public mLinenumber:I

.field public mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (2)#
    .registers 6

    move-object/16 v2, p0


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/GrepView$Data;---><init>()V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 28
    const/4 v0, 0x0

    invoke-direct {v2, v1, v0, v1}, Ljp/sblo/pandora/aGrep/GrepView$Data;-><init>(Ljava/io/File;ILjava/lang/CharSequence;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILjava/lang/CharSequence;)V
    # InsDal Modified --> local register: (0)#
    .registers 7

    move-object/16 v0, p0
    move-object/16 v1, p1
    move/16 v2, p2
    move-object/16 v3, p3

    .param p1, "file"    # Ljava/io/File;
    .param p2, "linenumber"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Ljp/sblo/pandora/aGrep/GrepView$Data;---><init>(Ljava/io/File;ILjava/lang/CharSequence;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/GrepView$Data;->mFile:Ljava/io/File;

    .line 33
    iput v2, v0, Ljp/sblo/pandora/aGrep/GrepView$Data;->mLinenumber:I

    .line 34
    iput-object v3, v0, Ljp/sblo/pandora/aGrep/GrepView$Data;->mText:Ljava/lang/CharSequence;

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, Ljp/sblo/pandora/aGrep/GrepView$Data;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljp/sblo/pandora/aGrep/GrepView$Data;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljp/sblo/pandora/aGrep/GrepView$Data;->compare(Ljp/sblo/pandora/aGrep/GrepView$Data;Ljp/sblo/pandora/aGrep/GrepView$Data;)I

    move-result v0

    return v0
.end method

.method public compare(Ljp/sblo/pandora/aGrep/GrepView$Data;Ljp/sblo/pandora/aGrep/GrepView$Data;)I
    # InsDal Modified --> local register: (3)#
    .registers 9

    move-object/16 v3, p0
    move-object/16 v4, p1
    move-object/16 v5, p2

    .param p1, "object1"    # Ljp/sblo/pandora/aGrep/GrepView$Data;
    .param p2, "object2"    # Ljp/sblo/pandora/aGrep/GrepView$Data;

    .prologue

    const-string v6, "M_InsDal"
    const-string v7, "Ljp/sblo/pandora/aGrep/GrepView$Data;--->compare(Ljp/sblo/pandora/aGrep/GrepView$Data;Ljp/sblo/pandora/aGrep/GrepView$Data;)I"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v1, v4, Ljp/sblo/pandora/aGrep/GrepView$Data;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v5, Ljp/sblo/pandora/aGrep/GrepView$Data;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 41
    iget v1, v4, Ljp/sblo/pandora/aGrep/GrepView$Data;->mLinenumber:I

    iget v2, v5, Ljp/sblo/pandora/aGrep/GrepView$Data;->mLinenumber:I

    sub-int v0, v1, v2

    .line 43
    :cond_0
    return v0
.end method
