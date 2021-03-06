.class public Lcom/android/server/enterprise/TypefaceParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TypefaceParser.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "displayname"

.field private static final NODE_DROIDNAME:Ljava/lang/String; = "droidname"

.field private static final NODE_FILE:Ljava/lang/String; = "file"

.field private static final NODE_FILENAME:Ljava/lang/String; = "filename"

.field private static final NODE_FONT:Ljava/lang/String; = "font"

.field private static final NODE_MONOSPACE:Ljava/lang/String; = "monospace"

.field private static final NODE_SANS:Ljava/lang/String; = "sans"

.field private static final NODE_SERIF:Ljava/lang/String; = "serif"


# instance fields
.field private in_droidname:Z

.field private in_file:Z

.field private in_filename:Z

.field private in_font:Z

.field private in_monospace:Z

.field private in_sans:Z

.field private in_serif:Z

.field private mFont:Lcom/android/server/enterprise/Typeface;

.field private mFontFile:Lcom/android/server/enterprise/TypefaceFile;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_font:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_sans:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_serif:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_monospace:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_file:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_filename:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_droidname:Z

    .line 67
    iput-object v1, p0, Lcom/android/server/enterprise/TypefaceParser;->mFont:Lcom/android/server/enterprise/Typeface;

    .line 69
    iput-object v1, p0, Lcom/android/server/enterprise/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/TypefaceFile;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 6
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_filename:Z

    if-eqz v0, :cond_f

    .line 281
    iget-object v0, p0, Lcom/android/server/enterprise/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/TypefaceFile;->setFileName(Ljava/lang/String;)V

    .line 291
    :cond_e
    :goto_e
    return-void

    .line 285
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_droidname:Z

    if-eqz v0, :cond_e

    .line 287
    iget-object v0, p0, Lcom/android/server/enterprise/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/TypefaceFile;->setDroidName(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 107
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 197
    const-string v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 199
    iput-boolean v1, p0, Lcom/android/server/enterprise/TypefaceParser;->in_font:Z

    .line 263
    :cond_b
    :goto_b
    return-void

    .line 203
    :cond_c
    const-string v0, "sans"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 205
    iput-boolean v1, p0, Lcom/android/server/enterprise/TypefaceParser;->in_sans:Z

    goto :goto_b

    .line 209
    :cond_17
    const-string v0, "serif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 211
    iput-boolean v1, p0, Lcom/android/server/enterprise/TypefaceParser;->in_serif:Z

    goto :goto_b

    .line 215
    :cond_22
    const-string v0, "monospace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 217
    iput-boolean v1, p0, Lcom/android/server/enterprise/TypefaceParser;->in_monospace:Z

    goto :goto_b

    .line 221
    :cond_2d
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 223
    iput-boolean v1, p0, Lcom/android/server/enterprise/TypefaceParser;->in_file:Z

    .line 225
    iget-object v0, p0, Lcom/android/server/enterprise/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/TypefaceFile;

    if-eqz v0, :cond_b

    .line 227
    iget-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_sans:Z

    if-eqz v0, :cond_49

    .line 229
    iget-object v0, p0, Lcom/android/server/enterprise/TypefaceParser;->mFont:Lcom/android/server/enterprise/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/Typeface;->mSansFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 233
    :cond_49
    iget-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_serif:Z

    if-eqz v0, :cond_57

    .line 235
    iget-object v0, p0, Lcom/android/server/enterprise/TypefaceParser;->mFont:Lcom/android/server/enterprise/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/Typeface;->mSerifFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 239
    :cond_57
    iget-boolean v0, p0, Lcom/android/server/enterprise/TypefaceParser;->in_monospace:Z

    if-eqz v0, :cond_b

    .line 241
    iget-object v0, p0, Lcom/android/server/enterprise/TypefaceParser;->mFont:Lcom/android/server/enterprise/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/Typeface;->mMonospaceFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 249
    :cond_65
    const-string v0, "filename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 251
    iput-boolean v1, p0, Lcom/android/server/enterprise/TypefaceParser;->in_filename:Z

    goto :goto_b

    .line 255
    :cond_70
    const-string v0, "droidname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 257
    iput-boolean v1, p0, Lcom/android/server/enterprise/TypefaceParser;->in_droidname:Z

    goto :goto_b
.end method

.method public getParsedData()Lcom/android/server/enterprise/Typeface;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/enterprise/TypefaceParser;->mFont:Lcom/android/server/enterprise/Typeface;

    return-object v0
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/android/server/enterprise/Typeface;

    invoke-direct {v0}, Lcom/android/server/enterprise/Typeface;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/TypefaceParser;->mFont:Lcom/android/server/enterprise/Typeface;

    .line 97
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 127
    const-string v1, "font"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 129
    iput-boolean v2, p0, Lcom/android/server/enterprise/TypefaceParser;->in_font:Z

    .line 131
    const-string v1, "displayname"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, attrValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/TypefaceParser;->mFont:Lcom/android/server/enterprise/Typeface;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/Typeface;->setName(Ljava/lang/String;)V

    .line 177
    .end local v0           #attrValue:Ljava/lang/String;
    :cond_16
    :goto_16
    return-void

    .line 137
    :cond_17
    const-string v1, "sans"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 139
    iput-boolean v2, p0, Lcom/android/server/enterprise/TypefaceParser;->in_sans:Z

    goto :goto_16

    .line 143
    :cond_22
    const-string v1, "serif"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 145
    iput-boolean v2, p0, Lcom/android/server/enterprise/TypefaceParser;->in_serif:Z

    goto :goto_16

    .line 149
    :cond_2d
    const-string v1, "monospace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 151
    iput-boolean v2, p0, Lcom/android/server/enterprise/TypefaceParser;->in_monospace:Z

    goto :goto_16

    .line 155
    :cond_38
    const-string v1, "file"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 157
    iput-boolean v2, p0, Lcom/android/server/enterprise/TypefaceParser;->in_file:Z

    .line 159
    new-instance v1, Lcom/android/server/enterprise/TypefaceFile;

    invoke-direct {v1}, Lcom/android/server/enterprise/TypefaceFile;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/TypefaceFile;

    goto :goto_16

    .line 163
    :cond_4a
    const-string v1, "filename"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 165
    iput-boolean v2, p0, Lcom/android/server/enterprise/TypefaceParser;->in_filename:Z

    goto :goto_16

    .line 169
    :cond_55
    const-string v1, "droidname"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 171
    iput-boolean v2, p0, Lcom/android/server/enterprise/TypefaceParser;->in_droidname:Z

    goto :goto_16
.end method
