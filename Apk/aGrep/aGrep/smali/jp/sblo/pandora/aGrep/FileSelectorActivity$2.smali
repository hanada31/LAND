.class Ljp/sblo/pandora/aGrep/FileSelectorActivity$2;
.super Ljava/lang/Object;
.source "FileSelectorActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/sblo/pandora/aGrep/FileSelectorActivity;->fillList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/FileSelectorActivity;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Ljp/sblo/pandora/aGrep/FileSelectorActivity$2;---><init>(Ljp/sblo/pandora/aGrep/FileSelectorActivity;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/FileSelectorActivity$2;->this$0:Ljp/sblo/pandora/aGrep/FileSelectorActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    # InsDal Modified --> local register: (4)#
    .registers 10

    move-object/16 v4, p0
    move-object/16 v5, p1
    move-object/16 v6, p2

    .param p1, "object1"    # Ljava/io/File;
    .param p2, "object2"    # Ljava/io/File;

    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Ljp/sblo/pandora/aGrep/FileSelectorActivity$2;--->compare(Ljava/io/File;Ljava/io/File;)I"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 147
    .local v0, "isdir1":Z
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v1

    .line 149
    .local v1, "isdir2":Z
    xor-int v2, v0, v1

    if-eqz v2, :cond_1

    .line 150
    if-eqz v0, :cond_0

    .line 151
    const/4 v2, -0x1

    .line 156
    :goto_0
    return v2

    .line 153
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 143
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/io/File;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljp/sblo/pandora/aGrep/FileSelectorActivity$2;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
