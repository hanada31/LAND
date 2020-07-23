.class public Ljp/sblo/pandora/aGrep/ColorPickerActivity;
.super Landroid/app/Activity;
.source "ColorPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorArrayAdapter;,
        Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;
    }
.end annotation


# static fields
.field static final COLOR_NAMES:[Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

.field public static final EXTRA_COLOR:Ljava/lang/String; = "EXTRA_COLOR"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "EXTRA_TITLE"


# instance fields
.field private mColorIconHeight:I

.field private mColorIconPadding:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    # InsDal Modified --> local register: (7)#
    .registers 10



    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Ljp/sblo/pandora/aGrep/ColorPickerActivity;---><clinit>()V"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const v6, -0xff01

    const v5, -0xff0001

    .line 180
    const/16 v0, 0x8d

    new-array v0, v0, [Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    new-instance v1, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const-string v2, "Input Color Code"

    invoke-direct {v1, v3, v2}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/high16 v3, -0x1000000

    const-string v4, "Black"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xffff80

    const-string v4, "Navy"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xffff75

    const-string v4, "DarkBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xffff33

    const-string v4, "MediumBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xffff01

    const-string v4, "Blue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xff9c00

    const-string v4, "DarkGreen"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xff8000

    const-string v4, "Green"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xff7f80

    const-string v4, "Teal"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xff7475

    const-string v4, "DarkCyan"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xff4001

    const-string v4, "DeepSkyBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xff312f

    const-string v4, "DarkTurquoise"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xff0566

    const-string v4, "MediumSpringGreen"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xff0100

    const-string v4, "Lime"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xff0081

    const-string v4, "SpringGreen"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const-string v3, "Aqua"

    invoke-direct {v2, v5, v3}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const-string v3, "Cyan"

    invoke-direct {v2, v5, v3}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xe6e690

    const-string v4, "MidnightBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xe16f01

    const-string v4, "DodgerBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xdf4d56

    const-string v4, "LightSeaGreen"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xdd74de

    const-string v4, "ForestGreen"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xd174a9

    const-string v4, "SeaGreen"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xd0b0b1

    const-string v4, "DarksLateGray"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xcd32ce

    const-string v4, "LimeGreen"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xc34c8f

    const-string v4, "MediumSeaGreen"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xbf1f30

    const-string v4, "Turquoise"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xbe961f

    const-string v4, "RoyalBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xb97d4c

    const-string v4, "SteelBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xb7c275

    const-string v4, "DarksLateBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xb72e34

    const-string v4, "MediumTurquoise"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xb4ff7e

    const-string v4, "Indigo"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xaa94d1

    const-string v4, "DarkOliveGreen"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xa06160

    const-string v4, "CadetBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x9b6a13

    const-string v4, "CornFlowerBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x993256

    const-string v4, "MediumAquamarine"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x969697

    const-string v4, "DimGray"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x95a533

    const-string v4, "SlateBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x9471dd

    const-string v4, "OliveDrab"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x8f7f70

    const-string v4, "SlateGray"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x887767

    const-string v4, "LightSlateGray"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x849712

    const-string v4, "MediumSlateBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x830400

    const-string v4, "LawnGreen"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x800100

    const-string v4, "Chartreuse"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x80002c

    const-string v4, "Aquamarine"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    const-string v4, "Maroon"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x7fff80

    const-string v4, "Purple"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x7f8000

    const-string v4, "Olive"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x7f7f80

    const-string v4, "Gray"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x783115

    const-string v4, "SkyBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x783106

    const-string v4, "LightSkyBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x75d41e

    const-string v4, "BlueViolet"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/high16 v3, -0x750000

    const-string v4, "DarkRed"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x74ff75

    const-string v4, "DarkMagenta"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x74baed

    const-string v4, "SaddleBrown"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x704371

    const-string v4, "DarkSeaGreen"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x6f1170

    const-string v4, "LightGreen"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x6c8f25

    const-string v4, "MediumPurple"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x6bff2d

    const-string v4, "DarkViolet"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x670468

    const-string v4, "PaleGreen"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x66cd34

    const-string v4, "DarkOrchid"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x6532ce

    const-string v4, "YellowGreen"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x5fadd3

    const-string v4, "Sienna"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x5ad5d6

    const-string v4, "Brown"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x565657

    const-string v4, "DarkGray"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x52271a

    const-string v4, "LightBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x5200d1

    const-string v4, "GreenYellow"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x501112

    const-string v4, "PaleTurquoise"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x4f3b22

    const-string v4, "LightSteelBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x4f1f1a

    const-string v4, "PowderBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x4dddde

    const-string v4, "Firebrick"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x4779f5

    const-string v4, "DarkGoldenrod"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x45aa2d

    const-string v4, "MediumOrchid"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x437071

    const-string v4, "RosyBrown"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x424895

    const-string v4, "DarkKhaki"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x3f3f40

    const-string v4, "Silver"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x38ea7b

    const-string v4, "MediumVioletRed"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x32a3a4

    const-string v4, "IndianRed"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x327ac1

    const-string v4, "Peru"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x2d96e2

    const-string v4, "Chocolate"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x2d4b74

    const-string v4, "Tan"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x2c2c2d

    const-string v4, "LightGrey"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x274028

    const-string v4, "Thistle"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x258f2a

    const-string v4, "Orchid"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x255ae0

    const-string v4, "GoldenRod"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x248f6d

    const-string v4, "PaleVioletRed"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x23ebc4

    const-string v4, "Crimson"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x232324

    const-string v4, "GainsBoro"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x225f23

    const-string v4, "Plum"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x214779

    const-string v4, "BurlyWood"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x1f0001

    const-string v4, "LightCyan"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x191906

    const-string v4, "Lavender"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x166986

    const-string v4, "DarkSalmon"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x117d12

    const-string v4, "Violet"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x111756

    const-string v4, "PaleGoldenRod"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xf7f80

    const-string v4, "LightCoral"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xf1974

    const-string v4, "Khaki"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xf0701

    const-string v4, "AliceBlue"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xf0010

    const-string v4, "Honeydew"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xf0001

    const-string v4, "Azure"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xb5ba0

    const-string v4, "SandyBrown"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xa214d

    const-string v4, "Wheat"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xa0a24

    const-string v4, "Beige"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xa0a0b

    const-string v4, "WhiteSmoke"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xa0006

    const-string v4, "MintCream"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x70701

    const-string v4, "GhostWhite"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x57f8e

    const-string v4, "Salmon"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x51429

    const-string v4, "AntiqueWhite"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x50f1a

    const-string v4, "Linen"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x5052e

    const-string v4, "LightGoldenRodYellow"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x20a1a

    const-string v4, "Oldlace"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/high16 v3, -0x10000

    const-string v4, "Red"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const-string v3, "Fuchsia"

    invoke-direct {v2, v6, v3}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const-string v3, "Magenta"

    invoke-direct {v2, v6, v3}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xeb6d

    const-string v4, "DeepPink"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0xbb00

    const-string v4, "OrangeRed"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x9cb9

    const-string v4, "Tomato"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x964c

    const-string v4, "HotPink"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const v3, -0x80b0

    const-string v4, "Coral"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x7400

    const-string v4, "DarkOrange"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x5f86

    const-string v4, "LightSalmon"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x5b00

    const-string v4, "Orange"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x493f

    const-string v4, "LightPink"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x3f35

    const-string v4, "Pink"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x2900

    const-string v4, "Gold"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x2547

    const-string v4, "PeachPuff"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x2153

    const-string v4, "NavajoWhite"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x1b4b

    const-string v4, "Moccasin"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x1b3c

    const-string v4, "Bisque"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x1b1f

    const-string v4, "MistyRose"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x1433

    const-string v4, "BlancheDalmond"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x102b

    const-string v4, "Papayawhip"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0xf0b

    const-string v4, "LavenderBlush"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0xa12

    const-string v4, "SeaShell"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x724

    const-string v4, "CornSilk"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x533

    const-string v4, "LemonChiffon"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x510

    const-string v4, "FloralWhite"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x506

    const-string v4, "Snow"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x100

    const-string v4, "Yellow"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x20

    const-string v4, "LightYellow"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/16 v3, -0x10

    const-string v4, "Ivory"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-instance v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    const/4 v3, -0x1

    const-string v4, "White"

    invoke-direct {v2, v3, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->COLOR_NAMES:[Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    return-void
.end method

.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Ljp/sblo/pandora/aGrep/ColorPickerActivity;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Ljp/sblo/pandora/aGrep/ColorPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/ColorPickerActivity;

    .prologue
    .line 23
    iget v0, p0, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->mColorIconHeight:I

    return v0
.end method

.method static synthetic access$100(Ljp/sblo/pandora/aGrep/ColorPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/ColorPickerActivity;

    .prologue
    .line 23
    iget v0, p0, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->mColorIconPadding:I

    return v0
.end method

.method static synthetic access$200(Ljp/sblo/pandora/aGrep/ColorPickerActivity;I)V
    .locals 0
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/ColorPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->setCurrentColor(I)V

    return-void
.end method

.method private setCurrentColor(I)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move/16 v3, p1

    .param p1, "color"    # I

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Ljp/sblo/pandora/aGrep/ColorPickerActivity;--->setCurrentColor(I)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v2}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_COLOR"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const/4 v1, -0x1

    invoke-virtual {v2, v1, v0}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 165
    invoke-virtual {v2}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->finish()V

    .line 166
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    # InsDal Modified --> local register: (6)#
    .registers 11

    move-object/16 v6, p0
    move-object/16 v7, p1

    .param p1, "v"    # Landroid/view/View;

    .prologue

    const-string v8, "M_InsDal"
    const-string v9, "Ljp/sblo/pandora/aGrep/ColorPickerActivity;--->onClick(Landroid/view/View;)V"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 117
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 118
    check-cast v0, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    .line 119
    .local v0, "cn":Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;
    iget v3, v0, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;->color:I

    if-eqz v3, :cond_1

    .line 120
    iget v3, v0, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;->color:I

    invoke-direct {v6, v3}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->setCurrentColor(I)V

    .line 158
    .end local v0    # "cn":Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local v0    # "cn":Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;
    :cond_1
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 123
    .local v1, "edtInput":Landroid/widget/EditText;
    const v3, 0x7f060025

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 124
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 125
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Ljp/sblo/pandora/aGrep/ColorPickerActivity$1;

    invoke-direct {v5, v6}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$1;-><init>(Ljp/sblo/pandora/aGrep/ColorPickerActivity;)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 137
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020005

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060024

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060011

    new-instance v5, Ljp/sblo/pandora/aGrep/ColorPickerActivity$2;

    invoke-direct {v5, v6, v1}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$2;-><init>(Ljp/sblo/pandora/aGrep/ColorPickerActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060012

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (6)#
    .registers 11

    move-object/16 v6, p0
    move-object/16 v7, p1

    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 46
    invoke-super {v6, v7}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V


    const-string v8, "M_InsDal"
    const-string v9, "Ljp/sblo/pandora/aGrep/ColorPickerActivity;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v6, v5}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->setResult(I)V

    .line 48
    const/high16 v3, 0x7f030000

    invoke-virtual {v6, v3}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->setContentView(I)V

    .line 50
    invoke-virtual {v6}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 51
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 52
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    invoke-virtual {v6}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 55
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "EXTRA_TITLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->mTitle:Ljava/lang/String;

    .line 57
    iget-object v3, v6, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v6}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f040000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v6, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->mColorIconHeight:I

    .line 60
    invoke-virtual {v6}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v6, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->mColorIconPadding:I

    .line 62
    const/high16 v3, 0x7f090000

    invoke-virtual {v6, v3}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 63
    .local v1, "gv":Landroid/widget/GridView;
    new-instance v3, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorArrayAdapter;

    sget-object v4, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->COLOR_NAMES:[Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;

    invoke-direct {v3, v6, v6, v5, v4}, Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorArrayAdapter;-><init>(Ljp/sblo/pandora/aGrep/ColorPickerActivity;Landroid/content/Context;I[Ljp/sblo/pandora/aGrep/ColorPickerActivity$ColorName;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    # InsDal Modified --> local register: (2)#
    .registers 8

    move-object/16 v2, p0
    move/16 v3, p1
    move-object/16 v4, p2

    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Ljp/sblo/pandora/aGrep/ColorPickerActivity;--->onMenuItemSelected(ILandroid/view/MenuItem;)Z"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 172
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 177
    invoke-super {v2, v3, v4}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 174
    :pswitch_0
    invoke-virtual {v2}, Ljp/sblo/pandora/aGrep/ColorPickerActivity;->finish()V

    .line 175
    const/4 v1, 0x1

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
