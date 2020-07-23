.class Ljp/sblo/pandora/aGrep/Settings$12;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/sblo/pandora/aGrep/Settings;->setListItem(Landroid/widget/LinearLayout;Ljava/util/ArrayList;Landroid/view/View$OnLongClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
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
        "Ljp/sblo/pandora/aGrep/CheckedString;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljp/sblo/pandora/aGrep/Settings;


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/Settings;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Ljp/sblo/pandora/aGrep/Settings$12;---><init>(Ljp/sblo/pandora/aGrep/Settings;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/Settings$12;->this$0:Ljp/sblo/pandora/aGrep/Settings;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 285
    check-cast p1, Ljp/sblo/pandora/aGrep/CheckedString;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljp/sblo/pandora/aGrep/CheckedString;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljp/sblo/pandora/aGrep/Settings$12;->compare(Ljp/sblo/pandora/aGrep/CheckedString;Ljp/sblo/pandora/aGrep/CheckedString;)I

    move-result v0

    return v0
.end method

.method public compare(Ljp/sblo/pandora/aGrep/CheckedString;Ljp/sblo/pandora/aGrep/CheckedString;)I
    # InsDal Modified --> local register: (2)#
    .registers 8

    move-object/16 v2, p0
    move-object/16 v3, p1
    move-object/16 v4, p2

    .param p1, "object1"    # Ljp/sblo/pandora/aGrep/CheckedString;
    .param p2, "object2"    # Ljp/sblo/pandora/aGrep/CheckedString;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Ljp/sblo/pandora/aGrep/Settings$12;--->compare(Ljp/sblo/pandora/aGrep/CheckedString;Ljp/sblo/pandora/aGrep/CheckedString;)I"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, v3, Ljp/sblo/pandora/aGrep/CheckedString;->string:Ljava/lang/String;

    iget-object v1, v4, Ljp/sblo/pandora/aGrep/CheckedString;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
