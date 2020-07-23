.class Ljp/sblo/pandora/aGrep/Prefs$1;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/sblo/pandora/aGrep/Prefs;->getRecent(Landroid/content/Context;)Ljava/util/List;
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
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljp/sblo/pandora/aGrep/Prefs;


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/Prefs;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Ljp/sblo/pandora/aGrep/Prefs$1;---><init>(Ljp/sblo/pandora/aGrep/Prefs;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/Prefs$1;->this$0:Ljp/sblo/pandora/aGrep/Prefs;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 158
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map$Entry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljp/sblo/pandora/aGrep/Prefs$1;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    # InsDal Modified --> local register: (2)#
    .registers 8

    move-object/16 v2, p0
    move-object/16 v3, p1
    move-object/16 v4, p2

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "*>;)I"
        }
    .end annotation

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Ljp/sblo/pandora/aGrep/Prefs$1;--->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .local v3, "e1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .local v4, "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
