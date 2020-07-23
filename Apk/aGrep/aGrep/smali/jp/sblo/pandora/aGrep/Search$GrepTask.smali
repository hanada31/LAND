.class Ljp/sblo/pandora/aGrep/Search$GrepTask;
.super Landroid/os/AsyncTask;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/sblo/pandora/aGrep/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GrepTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljp/sblo/pandora/aGrep/GrepView$Data;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mCancelled:Z

.field private mFileCount:I

.field private mFoundcount:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Ljp/sblo/pandora/aGrep/Search;


# direct methods
.method constructor <init>(Ljp/sblo/pandora/aGrep/Search;)V
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/Search$GrepTask;---><init>(Ljp/sblo/pandora/aGrep/Search;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 139
    iput-object v2, v1, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-direct {v1}, Landroid/os/AsyncTask;-><init>()V

    .line 142
    iput v0, v1, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mFileCount:I

    .line 143
    iput v0, v1, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mFoundcount:I

    return-void
.end method

.method static synthetic access$102(Ljp/sblo/pandora/aGrep/Search$GrepTask;Z)Z
    .locals 0
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/Search$GrepTask;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mCancelled:Z

    return p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1

    .param p1, "params"    # [Ljava/lang/String;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/Search$GrepTask;--->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->grepRoot(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 139
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method grepDirectory(Ljava/io/File;)Z
    # InsDal Modified --> local register: (8)#
    .registers 13

    move-object/16 v8, p0
    move-object/16 v9, p1

    .param p1, "dir"    # Ljava/io/File;

    .prologue

    const-string v10, "M_InsDal"
    const-string v11, "Ljp/sblo/pandora/aGrep/Search$GrepTask;--->grepDirectory(Ljava/io/File;)Z"
    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 226
    invoke-virtual {v8}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v6

    .line 229
    :cond_1
    if-eqz v9, :cond_0

    .line 233
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 235
    .local v2, "flist":[Ljava/io/File;
    if-eqz v2, :cond_3

    .line 236
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 237
    .local v1, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 238
    .local v5, "res":Z
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 239
    invoke-virtual {v8, v1}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->grepDirectory(Ljava/io/File;)Z

    move-result v5

    .line 243
    :goto_2
    if-eqz v5, :cond_0

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 241
    :cond_2
    invoke-virtual {v8, v1}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->grepFile(Ljava/io/File;)Z

    move-result v5

    goto :goto_2

    .line 248
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "res":Z
    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method

.method grepFile(Ljava/io/File;)Z
    # InsDal Modified --> local register: (26)#
    .registers 31

    move-object/16 v26, p0
    move-object/16 v27, p1

    .param p1, "file"    # Ljava/io/File;

    .prologue

    const-string v28, "M_InsDal"
    const-string v29, "Ljp/sblo/pandora/aGrep/Search$GrepTask;--->grepFile(Ljava/io/File;)Z"
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual/range {v26 .. v26}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->isCancelled()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 255
    const/16 v23, 0x0

    .line 373
    :goto_0
    return v23

    .line 257
    :cond_0
    if-nez v27, :cond_1

    .line 258
    const/16 v23, 0x0

    goto :goto_0

    .line 261
    :cond_1
    const/4 v14, 0x0

    .line 262
    .local v14, "extok":Z
    move-object/from16 v0, v26

    iget-object v0, v0, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljp/sblo/pandora/aGrep/Search;->access$600(Ljp/sblo/pandora/aGrep/Search;)Ljp/sblo/pandora/aGrep/Prefs;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Ljp/sblo/pandora/aGrep/Prefs;->mExtList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljp/sblo/pandora/aGrep/CheckedString;

    .line 263
    .local v13, "ext":Ljp/sblo/pandora/aGrep/CheckedString;
    iget-boolean v0, v13, Ljp/sblo/pandora/aGrep/CheckedString;->checked:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 264
    iget-object v0, v13, Ljp/sblo/pandora/aGrep/CheckedString;->string:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "*"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 265
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x2e

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 266
    const/4 v14, 0x1

    .line 275
    .end local v13    # "ext":Ljp/sblo/pandora/aGrep/CheckedString;
    :cond_3
    :goto_1
    if-nez v14, :cond_5

    .line 276
    const/16 v23, 0x1

    goto :goto_0

    .line 269
    .restart local v13    # "ext":Ljp/sblo/pandora/aGrep/CheckedString;
    :cond_4
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Ljp/sblo/pandora/aGrep/CheckedString;->string:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 270
    const/4 v14, 0x1

    .line 271
    goto :goto_1

    .line 281
    .end local v13    # "ext":Ljp/sblo/pandora/aGrep/CheckedString;
    :cond_5
    :try_start_0
    new-instance v17, Ljava/io/BufferedInputStream;

    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v24, 0x10000

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 282
    .local v17, "is":Ljava/io/InputStream;
    const/high16 v23, 0x10000

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 285
    const/4 v12, 0x0

    .line 287
    .local v12, "encode":Ljava/lang/String;
    :try_start_1
    new-instance v9, Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-direct {v9}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>()V
    :try_end_1
    .catch Lorg/mozilla/universalchardet/UniversalDetector$DetectorException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 290
    .local v9, "detector":Lorg/mozilla/universalchardet/UniversalDetector;
    const/16 v23, 0x1000

    :try_start_2
    move/from16 v0, v23

    new-array v6, v0, [B

    .line 291
    .local v6, "buff":[B
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v20

    .local v20, "nread":I
    if-lez v20, :cond_6

    .line 292
    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v9, v6, v0, v1}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)I

    .line 294
    :cond_6
    invoke-virtual {v9}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/mozilla/universalchardet/UniversalDetector$DetectorException; {:try_start_2 .. :try_end_2} :catch_4

    .line 305
    :try_start_3
    invoke-virtual {v9}, Lorg/mozilla/universalchardet/UniversalDetector;->getCharset()Ljava/lang/String;

    move-result-object v12

    .line 306
    invoke-virtual {v9}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()I

    .line 307
    invoke-virtual {v9}, Lorg/mozilla/universalchardet/UniversalDetector;->destroy()V
    :try_end_3
    .catch Lorg/mozilla/universalchardet/UniversalDetector$DetectorException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 311
    .end local v6    # "buff":[B
    .end local v9    # "detector":Lorg/mozilla/universalchardet/UniversalDetector;
    .end local v20    # "nread":I
    :goto_2
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 313
    const/4 v4, 0x0

    .line 315
    .local v4, "br":Ljava/io/BufferedReader;
    if-eqz v12, :cond_c

    .line 316
    :try_start_5
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v24, 0x2000

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v5, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .end local v4    # "br":Ljava/io/BufferedReader;
    .local v5, "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 323
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :goto_3
    const/16 v18, 0x0

    .line 324
    .local v18, "line":I
    const/4 v15, 0x0

    .line 325
    .local v15, "found":Z
    move-object/from16 v0, v26

    iget-object v0, v0, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljp/sblo/pandora/aGrep/Search;->access$700(Ljp/sblo/pandora/aGrep/Search;)Ljava/util/regex/Pattern;

    move-result-object v21

    .line 326
    .local v21, "pattern":Ljava/util/regex/Pattern;
    const/16 v19, 0x0

    .line 327
    .local v19, "m":Ljava/util/regex/Matcher;
    const/4 v7, 0x0

    .line 328
    .local v7, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    move-object/from16 v0, v26

    iget v0, v0, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mFileCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v26

    iput v0, v1, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mFileCount:I

    :cond_7
    move-object v8, v7

    .line 329
    .end local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    .local v8, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    :cond_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v22

    .local v22, "text":Ljava/lang/String;
    if-eqz v22, :cond_f

    .line 330
    add-int/lit8 v18, v18, 0x1

    .line 331
    if-nez v19, :cond_d

    .line 332
    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 336
    :goto_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 337
    const/4 v15, 0x1

    .line 339
    move-object/from16 v0, v26

    iget-object v0, v0, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljp/sblo/pandora/aGrep/Search;->access$200(Ljp/sblo/pandora/aGrep/Search;)Ljava/util/ArrayList;

    move-result-object v24

    monitor-enter v24
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 340
    :try_start_6
    move-object/from16 v0, v26

    iget v0, v0, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mFoundcount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v26

    iput v0, v1, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mFoundcount:I

    .line 341
    if-nez v8, :cond_e

    .line 342
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 344
    .end local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    .restart local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    :goto_5
    :try_start_7
    new-instance v23, Ljp/sblo/pandora/aGrep/GrepView$Data;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Ljp/sblo/pandora/aGrep/GrepView$Data;-><init>(Ljava/io/File;ILjava/lang/CharSequence;)V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    move-object/from16 v0, v26

    iget v0, v0, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mFoundcount:I

    move/from16 v23, v0

    const/16 v25, 0xa

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 347
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljp/sblo/pandora/aGrep/GrepView$Data;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->publishProgress([Ljava/lang/Object;)V

    .line 348
    const/4 v7, 0x0

    .line 350
    :cond_9
    monitor-exit v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 351
    :try_start_8
    move-object/from16 v0, v26

    iget-boolean v0, v0, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mCancelled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 356
    :goto_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 357
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 358
    if-eqz v7, :cond_a

    .line 359
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljp/sblo/pandora/aGrep/GrepView$Data;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->publishProgress([Ljava/lang/Object;)V

    .line 360
    const/4 v7, 0x0

    .line 362
    :cond_a
    if-nez v15, :cond_b

    .line 363
    move-object/from16 v0, v26

    iget v0, v0, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mFileCount:I

    move/from16 v23, v0

    rem-int/lit8 v23, v23, 0xa

    if-nez v23, :cond_b

    .line 364
    const/16 v23, 0x0

    check-cast v23, [Ljp/sblo/pandora/aGrep/GrepView$Data;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 373
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    .end local v12    # "encode":Ljava/lang/String;
    .end local v15    # "found":Z
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v18    # "line":I
    .end local v19    # "m":Ljava/util/regex/Matcher;
    .end local v21    # "pattern":Ljava/util/regex/Pattern;
    .end local v22    # "text":Ljava/lang/String;
    :cond_b
    :goto_7
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 296
    .restart local v9    # "detector":Lorg/mozilla/universalchardet/UniversalDetector;
    .restart local v12    # "encode":Ljava/lang/String;
    .restart local v17    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v10

    .line 297
    .local v10, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 298
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 299
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 300
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v10

    .line 301
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 302
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Lorg/mozilla/universalchardet/UniversalDetector$DetectorException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 303
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 319
    .end local v9    # "detector":Lorg/mozilla/universalchardet/UniversalDetector;
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :cond_c
    :try_start_a
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v24, 0x2000

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v5, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 334
    .restart local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    .restart local v15    # "found":Z
    .restart local v18    # "line":I
    .restart local v19    # "m":Ljava/util/regex/Matcher;
    .restart local v21    # "pattern":Ljava/util/regex/Pattern;
    .restart local v22    # "text":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_4

    .line 367
    .end local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    .end local v15    # "found":Z
    .end local v18    # "line":I
    .end local v19    # "m":Ljava/util/regex/Matcher;
    .end local v21    # "pattern":Ljava/util/regex/Pattern;
    .end local v22    # "text":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 368
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_7

    .line 370
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v12    # "encode":Ljava/lang/String;
    .end local v17    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v11

    .line 371
    .local v11, "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 350
    .end local v11    # "e1":Ljava/io/IOException;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    .restart local v12    # "encode":Ljava/lang/String;
    .restart local v15    # "found":Z
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v18    # "line":I
    .restart local v19    # "m":Ljava/util/regex/Matcher;
    .restart local v21    # "pattern":Ljava/util/regex/Pattern;
    .restart local v22    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v23

    move-object v7, v8

    .end local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    .restart local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    :goto_8
    :try_start_c
    monitor-exit v24
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v23
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    :catchall_1
    move-exception v23

    goto :goto_8

    .line 309
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    .end local v15    # "found":Z
    .end local v18    # "line":I
    .end local v19    # "m":Ljava/util/regex/Matcher;
    .end local v21    # "pattern":Ljava/util/regex/Pattern;
    .end local v22    # "text":Ljava/lang/String;
    :catch_4
    move-exception v23

    goto/16 :goto_2

    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    .restart local v15    # "found":Z
    .restart local v18    # "line":I
    .restart local v19    # "m":Ljava/util/regex/Matcher;
    .restart local v21    # "pattern":Ljava/util/regex/Pattern;
    .restart local v22    # "text":Ljava/lang/String;
    :cond_e
    move-object v7, v8

    .end local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    .restart local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    goto/16 :goto_5

    .end local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    .restart local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    :cond_f
    move-object v7, v8

    .end local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    .restart local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/sblo/pandora/aGrep/GrepView$Data;>;"
    goto/16 :goto_6
.end method

.method grepRoot(Ljava/lang/String;)Z
    # InsDal Modified --> local register: (4)#
    .registers 9

    move-object/16 v4, p0
    move-object/16 v5, p1

    .param p1, "text"    # Ljava/lang/String;

    .prologue

    const-string v6, "M_InsDal"
    const-string v7, "Ljp/sblo/pandora/aGrep/Search$GrepTask;--->grepRoot(Ljava/lang/String;)Z"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v2, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-static {v2}, Ljp/sblo/pandora/aGrep/Search;->access$600(Ljp/sblo/pandora/aGrep/Search;)Ljp/sblo/pandora/aGrep/Prefs;

    move-result-object v2

    iget-object v2, v2, Ljp/sblo/pandora/aGrep/Prefs;->mDirList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/sblo/pandora/aGrep/CheckedString;

    .line 217
    .local v0, "dir":Ljp/sblo/pandora/aGrep/CheckedString;
    iget-boolean v2, v0, Ljp/sblo/pandora/aGrep/CheckedString;->checked:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Ljp/sblo/pandora/aGrep/CheckedString;->string:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->grepDirectory(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    const/4 v2, 0x0

    .line 221
    .end local v0    # "dir":Ljp/sblo/pandora/aGrep/CheckedString;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onCancelled()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue
    .line 191
    invoke-super {v1}, Landroid/os/AsyncTask;->onCancelled()V


    const-string v2, "M_InsDal"
    const-string v3, "Ljp/sblo/pandora/aGrep/Search$GrepTask;--->onCancelled()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->onPostExecute(Ljava/lang/Boolean;)V

    .line 193
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    # InsDal Modified --> local register: (4)#
    .registers 9

    move-object/16 v4, p0
    move-object/16 v5, p1

    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue

    const-string v6, "M_InsDal"
    const-string v7, "Ljp/sblo/pandora/aGrep/Search$GrepTask;--->onPostExecute(Ljava/lang/Boolean;)V"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 176
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 177
    iput-object v3, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 178
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-static {v0}, Ljp/sblo/pandora/aGrep/Search;->access$200(Ljp/sblo/pandora/aGrep/Search;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-static {v0}, Ljp/sblo/pandora/aGrep/Search;->access$200(Ljp/sblo/pandora/aGrep/Search;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljp/sblo/pandora/aGrep/GrepView$Data;

    invoke-direct {v2}, Ljp/sblo/pandora/aGrep/GrepView$Data;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 180
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-static {v0}, Ljp/sblo/pandora/aGrep/Search;->access$300(Ljp/sblo/pandora/aGrep/Search;)Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;->notifyDataSetChanged()V

    .line 181
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-static {v0}, Ljp/sblo/pandora/aGrep/Search;->access$400(Ljp/sblo/pandora/aGrep/Search;)Ljp/sblo/pandora/aGrep/GrepView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljp/sblo/pandora/aGrep/GrepView;->setSelection(I)V

    .line 183
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-virtual {v0}, Ljp/sblo/pandora/aGrep/Search;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060008

    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-static {v0, v3}, Ljp/sblo/pandora/aGrep/Search;->access$202(Ljp/sblo/pandora/aGrep/Search;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 185
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-static {v0, v3}, Ljp/sblo/pandora/aGrep/Search;->access$302(Ljp/sblo/pandora/aGrep/Search;Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;)Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;

    .line 186
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-static {v0, v3}, Ljp/sblo/pandora/aGrep/Search;->access$502(Ljp/sblo/pandora/aGrep/Search;Ljp/sblo/pandora/aGrep/Search$GrepTask;)Ljp/sblo/pandora/aGrep/Search$GrepTask;

    .line 187
    return-void

    .line 181
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 183
    :cond_0
    const v0, 0x7f060009

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 139
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    # InsDal Modified --> local register: (4)#
    .registers 8

    move-object/16 v4, p0


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Ljp/sblo/pandora/aGrep/Search$GrepTask;--->onPreExecute()V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    iput-boolean v2, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mCancelled:Z

    .line 149
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 150
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 151
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-static {v1}, Ljp/sblo/pandora/aGrep/Search;->access$000(Ljp/sblo/pandora/aGrep/Search;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 153
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 154
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 155
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Ljp/sblo/pandora/aGrep/Search$GrepTask$1;

    invoke-direct {v1, v4}, Ljp/sblo/pandora/aGrep/Search$GrepTask$1;-><init>(Ljp/sblo/pandora/aGrep/Search$GrepTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 164
    iget-object v0, v4, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 165
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 139
    check-cast p1, [Ljp/sblo/pandora/aGrep/GrepView$Data;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->onProgressUpdate([Ljp/sblo/pandora/aGrep/GrepView$Data;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljp/sblo/pandora/aGrep/GrepView$Data;)V
    # InsDal Modified --> local register: (10)#
    .registers 15

    move-object/16 v10, p0
    move-object/16 v11, p1

    .param p1, "progress"    # [Ljp/sblo/pandora/aGrep/GrepView$Data;

    .prologue

    const-string v12, "M_InsDal"
    const-string v13, "Ljp/sblo/pandora/aGrep/Search$GrepTask;--->onProgressUpdate([Ljp/sblo/pandora/aGrep/GrepView$Data;)V"
    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v10}, Ljp/sblo/pandora/aGrep/Search$GrepTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v4, v10, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v5, v10, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    const v6, 0x7f060019

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v10, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-static {v9}, Ljp/sblo/pandora/aGrep/Search;->access$000(Ljp/sblo/pandora/aGrep/Search;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, v10, Ljp/sblo/pandora/aGrep/Search$GrepTask;->mFileCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljp/sblo/pandora/aGrep/Search;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 202
    if-eqz v11, :cond_0

    .line 203
    iget-object v4, v10, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-static {v4}, Ljp/sblo/pandora/aGrep/Search;->access$200(Ljp/sblo/pandora/aGrep/Search;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 204
    move-object v0, v11

    .local v0, "arr$":[Ljp/sblo/pandora/aGrep/GrepView$Data;
    :try_start_0
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 205
    .local v1, "data":Ljp/sblo/pandora/aGrep/GrepView$Data;
    iget-object v4, v10, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-static {v4}, Ljp/sblo/pandora/aGrep/Search;->access$200(Ljp/sblo/pandora/aGrep/Search;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    .end local v1    # "data":Ljp/sblo/pandora/aGrep/GrepView$Data;
    :cond_2
    iget-object v4, v10, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-static {v4}, Ljp/sblo/pandora/aGrep/Search;->access$300(Ljp/sblo/pandora/aGrep/Search;)Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;

    move-result-object v4

    invoke-virtual {v4}, Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;->notifyDataSetChanged()V

    .line 208
    iget-object v4, v10, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-static {v4}, Ljp/sblo/pandora/aGrep/Search;->access$400(Ljp/sblo/pandora/aGrep/Search;)Ljp/sblo/pandora/aGrep/GrepView;

    move-result-object v4

    iget-object v6, v10, Ljp/sblo/pandora/aGrep/Search$GrepTask;->this$0:Ljp/sblo/pandora/aGrep/Search;

    invoke-static {v6}, Ljp/sblo/pandora/aGrep/Search;->access$200(Ljp/sblo/pandora/aGrep/Search;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljp/sblo/pandora/aGrep/GrepView;->setSelection(I)V

    .line 209
    monitor-exit v5

    goto :goto_0

    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
