.class Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;
.super Landroid/os/AsyncTask;
.source "TextViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/sblo/pandora/aGrep/TextViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mOffsetForLine:I

.field final synthetic this$0:Ljp/sblo/pandora/aGrep/TextViewer;


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/TextViewer;)V
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;---><init>(Ljp/sblo/pandora/aGrep/TextViewer;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-object v2, v1, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    invoke-direct {v1}, Landroid/os/AsyncTask;-><init>()V

    .line 84
    const/4 v0, -0x1

    iput v0, v1, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->mOffsetForLine:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    # InsDal Modified --> local register: (14)#
    .registers 19

    move-object/16 v14, p0
    move-object/16 v15, p1

    .param p1, "params"    # [Ljava/lang/String;

    .prologue

    const-string v16, "M_InsDal"
    const-string v17, "Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;--->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;"
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    .line 94
    new-instance v7, Ljava/io/File;

    aget-object v11, v15, v13

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 99
    :try_start_0
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v12, 0x10000

    invoke-direct {v8, v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 100
    .local v8, "is":Ljava/io/InputStream;
    const/high16 v11, 0x10000

    invoke-virtual {v8, v11}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 102
    const/4 v6, 0x0

    .line 105
    .local v6, "encode":Ljava/lang/String;
    :try_start_1
    new-instance v3, Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-direct {v3}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>()V
    :try_end_1
    .catch Lorg/mozilla/universalchardet/UniversalDetector$DetectorException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 108
    .local v3, "detector":Lorg/mozilla/universalchardet/UniversalDetector;
    const/16 v11, 0x1000

    :try_start_2
    new-array v2, v11, [B

    .line 109
    .local v2, "buff":[B
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "nread":I
    if-lez v9, :cond_0

    .line 110
    const/4 v11, 0x0

    invoke-virtual {v3, v2, v11, v9}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)I

    .line 112
    :cond_0
    invoke-virtual {v3}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/mozilla/universalchardet/UniversalDetector$DetectorException; {:try_start_2 .. :try_end_2} :catch_3

    .line 119
    :try_start_3
    invoke-virtual {v3}, Lorg/mozilla/universalchardet/UniversalDetector;->getCharset()Ljava/lang/String;

    move-result-object v6

    .line 120
    invoke-virtual {v8}, Ljava/io/InputStream;->reset()V

    .line 121
    invoke-virtual {v3}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()I

    .line 122
    invoke-virtual {v3}, Lorg/mozilla/universalchardet/UniversalDetector;->destroy()V
    :try_end_3
    .catch Lorg/mozilla/universalchardet/UniversalDetector$DetectorException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 126
    .end local v2    # "buff":[B
    .end local v3    # "detector":Lorg/mozilla/universalchardet/UniversalDetector;
    .end local v9    # "nread":I
    :goto_0
    const/4 v0, 0x0

    .line 128
    .local v0, "br":Ljava/io/BufferedReader;
    if-eqz v6, :cond_2

    .line 129
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v12, 0x2000

    invoke-direct {v1, v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 135
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "text":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 136
    iget-object v11, v14, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    iget-object v11, v11, Ljp/sblo/pandora/aGrep/TextViewer;->mData:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 142
    .end local v10    # "text":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 143
    .local v4, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 149
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "encode":Ljava/lang/String;
    .end local v8    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_2
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    :goto_3
    return-object v11

    .line 114
    .restart local v3    # "detector":Lorg/mozilla/universalchardet/UniversalDetector;
    .restart local v6    # "encode":Ljava/lang/String;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    .line 115
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 117
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catch Lorg/mozilla/universalchardet/UniversalDetector$DetectorException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v11

    goto :goto_3

    .line 131
    .end local v3    # "detector":Lorg/mozilla/universalchardet/UniversalDetector;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :try_start_7
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v12, 0x2000

    invoke-direct {v1, v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 139
    .restart local v10    # "text":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 140
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 141
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v11

    goto :goto_3

    .line 145
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "encode":Ljava/lang/String;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v10    # "text":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 146
    .local v5, "e1":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 124
    .end local v5    # "e1":Ljava/io/IOException;
    .restart local v6    # "encode":Ljava/lang/String;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v11

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 83
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    # InsDal Modified --> local register: (8)#
    .registers 13

    move-object/16 v8, p0
    move-object/16 v9, p1

    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue

    const-string v10, "M_InsDal"
    const-string v11, "Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;--->onPostExecute(Ljava/lang/Boolean;)V"
    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 154
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    new-instance v0, Ljp/sblo/pandora/aGrep/TextPreview$Adapter;

    iget-object v3, v8, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    invoke-virtual {v3}, Ljp/sblo/pandora/aGrep/TextViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030007

    const v5, 0x7f090014

    iget-object v6, v8, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    iget-object v6, v6, Ljp/sblo/pandora/aGrep/TextViewer;->mData:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, v5, v6}, Ljp/sblo/pandora/aGrep/TextPreview$Adapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    .line 157
    .local v0, "adapter":Ljp/sblo/pandora/aGrep/TextPreview$Adapter;
    iget-object v3, v8, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    iput-object v7, v3, Ljp/sblo/pandora/aGrep/TextViewer;->mData:Ljava/util/ArrayList;

    .line 161
    iget-object v3, v8, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/TextViewer;->access$000(Ljp/sblo/pandora/aGrep/TextViewer;)Ljp/sblo/pandora/aGrep/Prefs;

    move-result-object v3

    iget-boolean v3, v3, Ljp/sblo/pandora/aGrep/Prefs;->mIgnoreCase:Z

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, v8, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/TextViewer;->access$100(Ljp/sblo/pandora/aGrep/TextViewer;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4a

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 167
    .local v2, "pattern":Ljava/util/regex/Pattern;
    :goto_0
    iget-object v3, v8, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/TextViewer;->access$000(Ljp/sblo/pandora/aGrep/TextViewer;)Ljp/sblo/pandora/aGrep/Prefs;

    move-result-object v3

    iget v3, v3, Ljp/sblo/pandora/aGrep/Prefs;->mHighlightFg:I

    iget-object v4, v8, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    invoke-static {v4}, Ljp/sblo/pandora/aGrep/TextViewer;->access$000(Ljp/sblo/pandora/aGrep/TextViewer;)Ljp/sblo/pandora/aGrep/Prefs;

    move-result-object v4

    iget v4, v4, Ljp/sblo/pandora/aGrep/Prefs;->mHighlightBg:I

    iget-object v5, v8, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    invoke-static {v5}, Ljp/sblo/pandora/aGrep/TextViewer;->access$000(Ljp/sblo/pandora/aGrep/TextViewer;)Ljp/sblo/pandora/aGrep/Prefs;

    move-result-object v5

    iget v5, v5, Ljp/sblo/pandora/aGrep/Prefs;->mFontSize:I

    invoke-virtual {v0, v2, v3, v4, v5}, Ljp/sblo/pandora/aGrep/TextPreview$Adapter;->setFormat(Ljava/util/regex/Pattern;III)V

    .line 168
    iget-object v3, v8, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/TextViewer;->access$200(Ljp/sblo/pandora/aGrep/TextViewer;)Ljp/sblo/pandora/aGrep/TextPreview;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljp/sblo/pandora/aGrep/TextPreview;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v3, v8, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/TextViewer;->access$200(Ljp/sblo/pandora/aGrep/TextViewer;)Ljp/sblo/pandora/aGrep/TextPreview;

    move-result-object v3

    invoke-virtual {v3}, Ljp/sblo/pandora/aGrep/TextPreview;->getHeight()I

    move-result v1

    .line 171
    .local v1, "height":I
    iget-object v3, v8, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/TextViewer;->access$200(Ljp/sblo/pandora/aGrep/TextViewer;)Ljp/sblo/pandora/aGrep/TextPreview;

    move-result-object v3

    iget-object v4, v8, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    invoke-static {v4}, Ljp/sblo/pandora/aGrep/TextViewer;->access$300(Ljp/sblo/pandora/aGrep/TextViewer;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v5, v1, 0x4

    invoke-virtual {v3, v4, v5}, Ljp/sblo/pandora/aGrep/TextPreview;->setSelectionFromTop(II)V

    .line 172
    const/4 v0, 0x0

    .line 173
    iget-object v3, v8, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    invoke-static {v3, v7}, Ljp/sblo/pandora/aGrep/TextViewer;->access$202(Ljp/sblo/pandora/aGrep/TextViewer;Ljp/sblo/pandora/aGrep/TextPreview;)Ljp/sblo/pandora/aGrep/TextPreview;

    .line 174
    iget-object v3, v8, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    invoke-static {v3, v7}, Ljp/sblo/pandora/aGrep/TextViewer;->access$402(Ljp/sblo/pandora/aGrep/TextViewer;Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;)Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;

    .line 176
    .end local v0    # "adapter":Ljp/sblo/pandora/aGrep/TextPreview$Adapter;
    .end local v1    # "height":I
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    :cond_0
    return-void

    .line 164
    .restart local v0    # "adapter":Ljp/sblo/pandora/aGrep/TextPreview$Adapter;
    :cond_1
    iget-object v3, v8, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->this$0:Ljp/sblo/pandora/aGrep/TextViewer;

    invoke-static {v3}, Ljp/sblo/pandora/aGrep/TextViewer;->access$100(Ljp/sblo/pandora/aGrep/TextViewer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .restart local v2    # "pattern":Ljava/util/regex/Pattern;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 83
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue
    .line 89
    invoke-super {v0}, Landroid/os/AsyncTask;->onPreExecute()V


    const-string v1, "M_InsDal"
    const-string v2, "Ljp/sblo/pandora/aGrep/TextViewer$TextLoadTask;--->onPreExecute()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method
