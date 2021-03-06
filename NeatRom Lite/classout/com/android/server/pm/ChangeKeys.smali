.class public final Lcom/android/server/pm/ChangeKeys;
.super Ljava/lang/Object;
.source "ChangeKeys.java"


# static fields
.field private static FLAG_FILE:Ljava/lang/String; = null

.field private static PUBLIC_KEYS_FILE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ChangeKeys"

.field private static TRIGGER_FILE:Ljava/lang/String;

.field private static sNewKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOldKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    .line 24
    const-string v0, "/system/etc/need_to_change_keys"

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->TRIGGER_FILE:Ljava/lang/String;

    .line 25
    const-string v0, "/system/etc/public.keys"

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->PUBLIC_KEYS_FILE:Ljava/lang/String;

    .line 26
    const-string v0, "/data/system/changed_flag"

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->FLAG_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteFile(Ljava/lang/String;)Z
    .registers 5
    .parameter "name"

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_31

    .line 82
    const-string v1, "ChangeKeys"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fail!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2f
    const/4 v1, 0x0

    :goto_30
    return v1

    .line 85
    :cond_31
    const/4 v1, 0x1

    goto :goto_30
.end method

.method private static deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .parameter "sb"
    .parameter "startStr"
    .parameter "endStr"

    .prologue
    const/4 v9, 0x1

    const/4 v11, -0x1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 30
    .local v8, startIdx:I
    if-eq v8, v11, :cond_61

    .line 31
    invoke-virtual {p0, p2, v8}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 32
    .local v4, endIdx:I
    const-string v10, "key="

    invoke-virtual {p0, v10, v8}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 34
    .local v5, key:I
    if-eq v5, v11, :cond_6b

    if-ge v5, v4, :cond_6b

    .line 36
    const-string v10, "<cert index="

    invoke-virtual {p0, v10, v8}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 37
    .local v2, certStart:I
    if-eq v2, v11, :cond_63

    .line 38
    const-string v10, "\" />"

    invoke-virtual {p0, v10, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 40
    .local v1, certEnd:I
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v2, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, cert:Ljava/lang/String;
    const-string v10, "\" />"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v2, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, certkey:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v8, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 46
    .local v7, newCertIdx:I
    if-eq v7, v11, :cond_5a

    .line 47
    const-string v10, "\" />"

    invoke-virtual {p0, v10, v7}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 48
    .local v6, newCertEndIdx:I
    const-string v10, "\" />"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v6

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v7, v10, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    .end local v0           #cert:Ljava/lang/String;
    .end local v1           #certEnd:I
    .end local v2           #certStart:I
    .end local v3           #certkey:Ljava/lang/String;
    .end local v4           #endIdx:I
    .end local v5           #key:I
    .end local v6           #newCertEndIdx:I
    .end local v7           #newCertIdx:I
    :goto_59
    return v9

    .line 52
    .restart local v0       #cert:Ljava/lang/String;
    .restart local v1       #certEnd:I
    .restart local v2       #certStart:I
    .restart local v3       #certkey:Ljava/lang/String;
    .restart local v4       #endIdx:I
    .restart local v5       #key:I
    .restart local v7       #newCertIdx:I
    :cond_5a
    const-string v9, "ChangeKeys"

    const-string v10, "Can\'t find new cert element. Error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v0           #cert:Ljava/lang/String;
    .end local v1           #certEnd:I
    .end local v2           #certStart:I
    .end local v3           #certkey:Ljava/lang/String;
    .end local v4           #endIdx:I
    .end local v5           #key:I
    .end local v7           #newCertIdx:I
    :cond_61
    :goto_61
    const/4 v9, 0x0

    goto :goto_59

    .line 54
    .restart local v2       #certStart:I
    .restart local v4       #endIdx:I
    .restart local v5       #key:I
    :cond_63
    const-string v9, "ChangeKeys"

    const-string v10, "Can\'t find cert element. Error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 58
    .end local v2           #certStart:I
    :cond_6b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v8, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_59
.end method

.method private static deletePermission(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 4
    .parameter "sb"
    .parameter "str"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, startIdx:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 76
    :cond_11
    return-void
.end method

.method public static process()Z
    .registers 28

    .prologue
    .line 93
    new-instance v24, Ljava/io/File;

    sget-object v25, Lcom/android/server/pm/ChangeKeys;->TRIGGER_FILE:Ljava/lang/String;

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v24, triggerFile:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_30

    .line 95
    const-string v25, "ChangeKeys"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ChangeKeys : no "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/server/pm/ChangeKeys;->TRIGGER_FILE:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ": ignore to run changekeys."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/16 v25, 0x0

    .line 253
    :cond_2f
    :goto_2f
    return v25

    .line 99
    :cond_30
    new-instance v10, Ljava/io/File;

    sget-object v25, Lcom/android/server/pm/ChangeKeys;->FLAG_FILE:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v10, flagFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_49

    .line 103
    const-string v25, "ChangeKeys"

    const-string v26, "Already did ChangeKeys before."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/16 v25, 0x0

    goto :goto_2f

    .line 109
    :cond_49
    :try_start_49
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_4c} :catch_a5
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_ac

    .line 118
    const-string v3, "packages.xml"

    .line 119
    .local v3, PACKAGES_XML_FILE_NAME:Ljava/lang/String;
    const-string v5, "/data/system/"

    .line 120
    .local v5, basePath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 121
    .local v7, changed:Z
    new-instance v20, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v20, packagesXmlFile:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_95

    .line 124
    const-string v5, "/dbdata/system/"

    .line 125
    new-instance v20, Ljava/io/File;

    .end local v20           #packagesXmlFile:Ljava/io/File;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v20       #packagesXmlFile:Ljava/io/File;
    :cond_95
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_b4

    .line 129
    const-string v25, "ChangeKeys"

    const-string v26, "ChangeKeys : there is no packages.xml."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v25, 0x0

    goto :goto_2f

    .line 110
    .end local v3           #PACKAGES_XML_FILE_NAME:Ljava/lang/String;
    .end local v5           #basePath:Ljava/lang/String;
    .end local v7           #changed:Z
    .end local v20           #packagesXmlFile:Ljava/io/File;
    :catch_a5
    move-exception v8

    .line 111
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 112
    const/16 v25, 0x0

    goto :goto_2f

    .line 113
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_ac
    move-exception v8

    .line 114
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    const/16 v25, 0x0

    goto/16 :goto_2f

    .line 137
    .end local v8           #e:Ljava/io/IOException;
    .restart local v3       #PACKAGES_XML_FILE_NAME:Ljava/lang/String;
    .restart local v5       #basePath:Ljava/lang/String;
    .restart local v7       #changed:Z
    .restart local v20       #packagesXmlFile:Ljava/io/File;
    :cond_b4
    new-instance v14, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ".journal"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v14, journalFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ".bak"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v4, backupFile:Ljava/io/File;
    move-object/from16 v0, v20

    invoke-static {v0, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v25

    if-nez v25, :cond_10e

    .line 140
    const-string v25, "ChangeKeys"

    const-string v26, "ChangeKeys : error on backup packages.xml to packages.xml.bak."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 142
    const/16 v25, 0x0

    goto/16 :goto_2f

    .line 149
    :cond_10e
    new-instance v21, Ljava/io/File;

    sget-object v25, Lcom/android/server/pm/ChangeKeys;->PUBLIC_KEYS_FILE:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v21, publicKeysFile:Ljava/io/File;
    :try_start_119
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v25, Ljava/io/FileReader;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 154
    .local v17, keyIn:Ljava/io/BufferedReader;
    const/16 v16, 0x0

    .line 155
    .local v16, keyIdx:I
    :cond_12d
    :goto_12d
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, key:Ljava/lang/String;
    if-eqz v15, :cond_186

    .line 156
    const-string v25, "#"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_12d

    .line 159
    rem-int/lit8 v25, v16, 0x2

    if-nez v25, :cond_14b

    .line 160
    sget-object v25, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :goto_148
    add-int/lit8 v16, v16, 0x1

    goto :goto_12d

    .line 162
    :cond_14b
    sget-object v25, Lcom/android/server/pm/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_152
    .catch Ljava/io/FileNotFoundException; {:try_start_119 .. :try_end_152} :catch_153
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_152} :catch_17b

    goto :goto_148

    .line 166
    .end local v15           #key:Ljava/lang/String;
    .end local v16           #keyIdx:I
    .end local v17           #keyIn:Ljava/io/BufferedReader;
    :catch_153
    move-exception v9

    .line 168
    .local v9, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 169
    const-string v25, "ChangeKeys"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ChangeKeys : no "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/server/pm/ChangeKeys;->PUBLIC_KEYS_FILE:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ": ignore to run changekeys."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/16 v25, 0x0

    goto/16 :goto_2f

    .line 171
    .end local v9           #e1:Ljava/io/FileNotFoundException;
    :catch_17b
    move-exception v8

    .line 173
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 175
    const/16 v25, 0x0

    goto/16 :goto_2f

    .line 181
    .end local v8           #e:Ljava/io/IOException;
    .restart local v15       #key:Ljava/lang/String;
    .restart local v16       #keyIdx:I
    .restart local v17       #keyIn:Ljava/io/BufferedReader;
    :cond_186
    sget-object v25, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    sget-object v26, Lcom/android/server/pm/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1a3

    .line 182
    const-string v25, "ChangeKeys"

    const-string v26, "ChangeKeys : mismatch count of keys"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v25, 0x0

    goto/16 :goto_2f

    .line 190
    :cond_1a3
    :try_start_1a3
    new-instance v13, Ljava/io/InputStreamReader;

    new-instance v25, Ljava/io/FileInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v26, "utf-8"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v13, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 193
    .local v13, in:Ljava/io/InputStreamReader;
    const/16 v25, 0x1000

    move/from16 v0, v25

    new-array v6, v0, [C

    .line 194
    .local v6, buf:[C
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    .local v22, sb:Ljava/lang/StringBuffer;
    :goto_1c2
    invoke-virtual {v13, v6}, Ljava/io/InputStreamReader;->read([C)I

    move-result v18

    .local v18, nread:I
    const/16 v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_1fc

    .line 196
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v18

    invoke-virtual {v0, v6, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_1d9
    .catchall {:try_start_1a3 .. :try_end_1d9} :catchall_335
    .catch Ljava/io/FileNotFoundException; {:try_start_1a3 .. :try_end_1d9} :catch_1da
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1d9} :catch_30b

    goto :goto_1c2

    .line 240
    .end local v6           #buf:[C
    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v15           #key:Ljava/lang/String;
    .end local v18           #nread:I
    .end local v22           #sb:Ljava/lang/StringBuffer;
    :catch_1da
    move-exception v8

    .line 241
    .local v8, e:Ljava/io/FileNotFoundException;
    :try_start_1db
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1de
    .catchall {:try_start_1db .. :try_end_1de} :catchall_335

    .line 242
    const/16 v25, 0x0

    .line 248
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v26

    if-nez v26, :cond_1ed

    .line 249
    const-string v26, "ChangeKeys"

    const-string v27, "journalFile delete fail!!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1ed
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v26

    if-nez v26, :cond_2f

    .line 251
    const-string v26, "ChangeKeys"

    const-string v27, "backupFile delete fail!!"

    .end local v8           #e:Ljava/io/FileNotFoundException;
    :goto_1f7
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 198
    .restart local v6       #buf:[C
    .restart local v13       #in:Ljava/io/InputStreamReader;
    .restart local v15       #key:Ljava/lang/String;
    .restart local v18       #nread:I
    .restart local v22       #sb:Ljava/lang/StringBuffer;
    :cond_1fc
    :try_start_1fc
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V

    .line 200
    const/4 v11, 0x0

    .local v11, i:I
    :goto_200
    sget-object v25, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_239

    .line 201
    sget-object v25, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #key:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 202
    .restart local v15       #key:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 203
    .local v12, idx:I
    if-ltz v12, :cond_236

    .line 204
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v25

    add-int v26, v12, v25

    sget-object v25, Lcom/android/server/pm/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v22

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const/4 v7, 0x1

    .line 200
    :cond_236
    add-int/lit8 v11, v11, 0x1

    goto :goto_200

    .line 209
    .end local v12           #idx:I
    :cond_239
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v0, v7, :cond_29f

    .line 210
    const-string v25, "<package name=\"com.sec.android.app.samsungapps\""

    const-string v26, "</package>"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    const-string v25, "<updated-package name=\"com.sec.android.app.samsungapps\""

    const-string v26, "</updated-package>"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    const-string v25, "<package name=\"com.sec.android.app.samsungapps.una\""

    const-string v26, "</package>"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    const-string v25, "<updated-package name=\"com.sec.android.app.samsungapps.una\""

    const-string v26, "</updated-package>"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    const-string v25, "<item name=\"com.sec.android.provider.una.astore.permission.READ\" package=\"com.sec.android.app.samsungapps.una\" />"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/server/pm/ChangeKeys;->deletePermission(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 215
    const-string v25, "<item name=\"com.sec.android.provider.una.astore.permission.WRITE\" package=\"com.sec.android.app.samsungapps.una\" />"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/server/pm/ChangeKeys;->deletePermission(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 216
    const-string v25, "/data/app/com.sec.android.app.samsungapps-1.apk"

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_292

    .line 217
    const-string v25, "/data/app/com.sec.android.app.samsungapps-2.apk"

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    .line 218
    :cond_292
    const-string v25, "/data/app/com.sec.android.app.samsungapps.una-1.apk"

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_29f

    .line 219
    const-string v25, "/data/app/com.sec.android.app.samsungapps.una-2.apk"

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    .line 222
    :cond_29f
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 223
    .local v19, out:Ljava/io/FileOutputStream;
    new-instance v23, Ljava/io/OutputStreamWriter;

    const-string v25, "utf-8"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 224
    .local v23, sout:Ljava/io/OutputStreamWriter;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 226
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStreamWriter;->close()V

    .line 228
    move-object/from16 v0, v20

    invoke-static {v14, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v25

    if-nez v25, :cond_2fd

    .line 229
    const-string v25, "ChangeKeys"

    const-string v26, "ChangeKeys : failed to copy packages.xml.journal to packages.xml."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 231
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_2df
    .catchall {:try_start_1fc .. :try_end_2df} :catchall_335
    .catch Ljava/io/FileNotFoundException; {:try_start_1fc .. :try_end_2df} :catch_1da
    .catch Ljava/io/IOException; {:try_start_1fc .. :try_end_2df} :catch_30b

    .line 248
    :goto_2df
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v25

    if-nez v25, :cond_2ec

    .line 249
    const-string v25, "ChangeKeys"

    const-string v26, "journalFile delete fail!!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_2ec
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v25

    if-nez v25, :cond_2f9

    .line 251
    const-string v25, "ChangeKeys"

    const-string v26, "backupFile delete fail!!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_2f9
    const/16 v25, 0x1

    goto/16 :goto_2f

    .line 234
    :cond_2fd
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v0, v7, :cond_32d

    .line 235
    :try_start_303
    const-string v25, "ChangeKeys"

    const-string v26, "ChangeKeys : succeed in changing keys."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30a
    .catchall {:try_start_303 .. :try_end_30a} :catchall_335
    .catch Ljava/io/FileNotFoundException; {:try_start_303 .. :try_end_30a} :catch_1da
    .catch Ljava/io/IOException; {:try_start_303 .. :try_end_30a} :catch_30b

    goto :goto_2df

    .line 243
    .end local v6           #buf:[C
    .end local v11           #i:I
    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v15           #key:Ljava/lang/String;
    .end local v18           #nread:I
    .end local v19           #out:Ljava/io/FileOutputStream;
    .end local v22           #sb:Ljava/lang/StringBuffer;
    .end local v23           #sout:Ljava/io/OutputStreamWriter;
    :catch_30b
    move-exception v8

    .line 244
    .local v8, e:Ljava/io/IOException;
    :try_start_30c
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 245
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_312
    .catchall {:try_start_30c .. :try_end_312} :catchall_335

    .line 246
    const/16 v25, 0x0

    .line 248
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v26

    if-nez v26, :cond_321

    .line 249
    const-string v26, "ChangeKeys"

    const-string v27, "journalFile delete fail!!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_321
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v26

    if-nez v26, :cond_2f

    .line 251
    const-string v26, "ChangeKeys"

    const-string v27, "backupFile delete fail!!"

    goto/16 :goto_1f7

    .line 237
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #buf:[C
    .restart local v11       #i:I
    .restart local v13       #in:Ljava/io/InputStreamReader;
    .restart local v15       #key:Ljava/lang/String;
    .restart local v18       #nread:I
    .restart local v19       #out:Ljava/io/FileOutputStream;
    .restart local v22       #sb:Ljava/lang/StringBuffer;
    .restart local v23       #sout:Ljava/io/OutputStreamWriter;
    :cond_32d
    :try_start_32d
    const-string v25, "ChangeKeys"

    const-string v26, "ChangeKeys: success process, but there is no old keys."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_334
    .catchall {:try_start_32d .. :try_end_334} :catchall_335
    .catch Ljava/io/FileNotFoundException; {:try_start_32d .. :try_end_334} :catch_1da
    .catch Ljava/io/IOException; {:try_start_32d .. :try_end_334} :catch_30b

    goto :goto_2df

    .line 248
    .end local v6           #buf:[C
    .end local v11           #i:I
    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v15           #key:Ljava/lang/String;
    .end local v18           #nread:I
    .end local v19           #out:Ljava/io/FileOutputStream;
    .end local v22           #sb:Ljava/lang/StringBuffer;
    .end local v23           #sout:Ljava/io/OutputStreamWriter;
    :catchall_335
    move-exception v25

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v26

    if-nez v26, :cond_343

    .line 249
    const-string v26, "ChangeKeys"

    const-string v27, "journalFile delete fail!!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_343
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v26

    if-nez v26, :cond_350

    .line 251
    const-string v26, "ChangeKeys"

    const-string v27, "backupFile delete fail!!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_350
    throw v25
.end method
