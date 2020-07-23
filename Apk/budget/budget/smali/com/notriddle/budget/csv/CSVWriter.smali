.class public final Lcom/notriddle/budget/csv/CSVWriter;
.super Ljava/lang/Object;
.source "CSVWriter.java"


# instance fields
.field private escapechar:C

.field private lineEnd:Ljava/lang/String;

.field private pw:Ljava/io/PrintWriter;

.field private quotechar:C

.field private separator:C


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1

    .param p1, "writer"    # Ljava/io/Writer;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/csv/CSVWriter;---><init>(Ljava/io/Writer;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v0, "\n"

    invoke-direct {v1, v2, v0}, Lcom/notriddle/budget/csv/CSVWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    # InsDal Modified --> local register: (2)#
    .registers 8

    move-object/16 v2, p0
    move-object/16 v3, p1
    move-object/16 v4, p2

    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "lineEnd"    # Ljava/lang/String;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/csv/CSVWriter;---><init>(Ljava/io/Writer;Ljava/lang/String;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x22

    .line 114
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, v2, Lcom/notriddle/budget/csv/CSVWriter;->pw:Ljava/io/PrintWriter;

    .line 116
    const/16 v0, 0x2c

    iput-char v0, v2, Lcom/notriddle/budget/csv/CSVWriter;->separator:C

    .line 117
    iput-char v1, v2, Lcom/notriddle/budget/csv/CSVWriter;->quotechar:C

    .line 118
    iput-char v1, v2, Lcom/notriddle/budget/csv/CSVWriter;->escapechar:C

    .line 119
    iput-object v4, v2, Lcom/notriddle/budget/csv/CSVWriter;->lineEnd:Ljava/lang/String;

    .line 120
    return-void
.end method


# virtual methods
.method public final writeNext([Ljava/lang/String;)V
    # InsDal Modified --> local register: (7)#
    .registers 12

    move-object/16 v7, p0
    move-object/16 v8, p1

    .param p1, "nextLine"    # [Ljava/lang/String;

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/csv/CSVWriter;--->writeNext([Ljava/lang/String;)V"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-nez v8, :cond_0

    .line 163
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v8

    if-ge v0, v5, :cond_7

    .line 137
    if-eqz v0, :cond_1

    .line 138
    iget-char v5, v7, Lcom/notriddle/budget/csv/CSVWriter;->separator:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    :cond_1
    aget-object v3, v8, v0

    .line 142
    .local v3, "nextElement":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 143
    iget-char v5, v7, Lcom/notriddle/budget/csv/CSVWriter;->quotechar:C

    if-eqz v5, :cond_2

    .line 145
    iget-char v5, v7, Lcom/notriddle/budget/csv/CSVWriter;->quotechar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 147
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 148
    .local v2, "nextChar":C
    iget-char v5, v7, Lcom/notriddle/budget/csv/CSVWriter;->escapechar:C

    if-eqz v5, :cond_3

    iget-char v5, v7, Lcom/notriddle/budget/csv/CSVWriter;->quotechar:C

    if-ne v2, v5, :cond_3

    .line 149
    iget-char v5, v7, Lcom/notriddle/budget/csv/CSVWriter;->escapechar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 150
    :cond_3
    iget-char v5, v7, Lcom/notriddle/budget/csv/CSVWriter;->escapechar:C

    if-eqz v5, :cond_4

    iget-char v5, v7, Lcom/notriddle/budget/csv/CSVWriter;->escapechar:C

    if-ne v2, v5, :cond_4

    .line 151
    iget-char v5, v7, Lcom/notriddle/budget/csv/CSVWriter;->escapechar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 153
    :cond_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 156
    .end local v2    # "nextChar":C
    :cond_5
    iget-char v5, v7, Lcom/notriddle/budget/csv/CSVWriter;->quotechar:C

    if-eqz v5, :cond_6

    .line 157
    iget-char v5, v7, Lcom/notriddle/budget/csv/CSVWriter;->quotechar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    .end local v1    # "j":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    .end local v3    # "nextElement":Ljava/lang/String;
    :cond_7
    iget-object v5, v7, Lcom/notriddle/budget/csv/CSVWriter;->lineEnd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    iget-object v5, v7, Lcom/notriddle/budget/csv/CSVWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
