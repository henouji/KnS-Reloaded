.class public Lcom/com2us/security/message/CryptMessage;
.super Ljava/lang/Object;
.source "CryptMessage.java"


# static fields
.field static final ENCODING:Ljava/lang/String; = "UTF-8"


# instance fields
.field properties:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/com2us/security/message/CryptMessage;->properties:Ljava/util/Properties;

    .line 61
    return-void
.end method


# virtual methods
.method public getMessage(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 7
    .param p1, "systemId"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "timeoutSeconds"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/com2us/security/message/MessageCryptException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/com2us/security/message/CryptMessage;->getMessage(Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;
    .locals 13
    .param p1, "systemId"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "timeoutSeconds"    # J
    .param p5, "isUrl"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/com2us/security/message/MessageCryptException;
        }
    .end annotation

    .prologue
    .line 103
    const-string v7, "utcexpire"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    add-long v8, v8, p3

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/com2us/security/message/CryptMessage;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :try_start_0
    iget-object v7, p0, Lcom/com2us/security/message/CryptMessage;->properties:Ljava/util/Properties;

    invoke-virtual {v7}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-nez v7, :cond_1

    .line 115
    new-instance v3, Lcom/com2us/security/cryptography/StringEncrypter;

    invoke-direct {v3, p1, p2}, Lcom/com2us/security/cryptography/StringEncrypter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v3, "encrypter":Lcom/com2us/security/cryptography/StringEncrypter;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/com2us/security/cryptography/StringEncrypter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "encrypted":Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 119
    const-string v7, "\\+"

    const-string v8, "-"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\/"

    const-string v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\="

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .end local v2    # "encrypted":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 108
    .end local v3    # "encrypter":Lcom/com2us/security/cryptography/StringEncrypter;
    :cond_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 109
    .local v5, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/com2us/security/message/CryptMessage;->properties:Ljava/util/Properties;

    invoke-virtual {v7, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, "value":Ljava/lang/String;
    if-nez v6, :cond_2

    const-string v6, ""

    .line 111
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_3

    const-string v7, "&"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :cond_3
    const-string v7, "UTF-8"

    invoke-static {v5, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v6, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    .end local v4    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/com2us/security/message/MessageCryptException;

    const-string v8, "Encryption error"

    invoke-direct {v7, v8, v1}, Lcom/com2us/security/message/MessageCryptException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/com2us/security/message/CryptMessage;->properties:Ljava/util/Properties;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/com2us/security/message/CryptMessage;->properties:Ljava/util/Properties;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/com2us/security/message/CryptMessage;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "systemId"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/com2us/security/message/MessageTimeoutException;,
            Lcom/com2us/security/message/MessageCryptException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/com2us/security/message/CryptMessage;->setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    return-void
.end method

.method public setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 23
    .param p1, "systemId"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isUrl"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/com2us/security/message/MessageTimeoutException;,
            Lcom/com2us/security/message/MessageCryptException;
        }
    .end annotation

    .prologue
    .line 142
    if-eqz p4, :cond_1

    .line 143
    :try_start_0
    const-string v20, "\\-"

    const-string v21, "+"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "\\_"

    const-string v22, "/"

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 144
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v20

    rem-int/lit8 v20, v20, 0x4

    add-int/lit8 v20, v20, -0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 145
    .local v16, "pad":I
    const/16 v20, 0x4

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/16 v16, 0x0

    .line 147
    :cond_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-lt v12, v0, :cond_3

    .line 150
    .end local v12    # "i":I
    .end local v16    # "pad":I
    :cond_1
    new-instance v9, Lcom/com2us/security/cryptography/StringEncrypter;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v9, v0, v1}, Lcom/com2us/security/cryptography/StringEncrypter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v9, "encrypter":Lcom/com2us/security/cryptography/StringEncrypter;
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/com2us/security/cryptography/StringEncrypter;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "decrypted":Ljava/lang/String;
    new-instance v18, Ljava/util/StringTokenizer;

    const-string v20, "&"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v18, "tokenizer":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    if-nez v20, :cond_4

    .line 178
    const-string v20, "utcexpire"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/com2us/security/message/CryptMessage;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 179
    .local v10, "expire":Ljava/lang/String;
    const-wide/16 v14, 0x0

    .line 181
    .local v14, "longExpire":J
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_7

    :cond_2
    new-instance v20, Lcom/com2us/security/message/MessageTimeoutException;

    const-string v21, "Message has no expire time"

    invoke-direct/range {v20 .. v21}, Lcom/com2us/security/message/MessageTimeoutException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 147
    .end local v6    # "decrypted":Ljava/lang/String;
    .end local v9    # "encrypter":Lcom/com2us/security/cryptography/StringEncrypter;
    .end local v10    # "expire":Ljava/lang/String;
    .end local v14    # "longExpire":J
    .end local v18    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v12    # "i":I
    .restart local v16    # "pad":I
    :cond_3
    :try_start_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 154
    .end local v12    # "i":I
    .end local v16    # "pad":I
    .restart local v6    # "decrypted":Ljava/lang/String;
    .restart local v9    # "encrypter":Lcom/com2us/security/cryptography/StringEncrypter;
    .restart local v18    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 155
    .local v17, "token":Ljava/lang/String;
    const/4 v13, 0x0

    .line 156
    .local v13, "key":Ljava/lang/String;
    const/16 v19, 0x0

    .line 158
    .local v19, "value":Ljava/lang/String;
    const/16 v20, 0x3d

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 160
    .local v7, "delimeterIndex":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v7, v0, :cond_6

    .line 161
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 162
    add-int/lit8 v20, v7, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 163
    add-int/lit8 v20, v7, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 172
    :goto_2
    const-string v20, "UTF-8"

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/com2us/security/message/CryptMessage;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 174
    .end local v6    # "decrypted":Ljava/lang/String;
    .end local v7    # "delimeterIndex":I
    .end local v9    # "encrypter":Lcom/com2us/security/cryptography/StringEncrypter;
    .end local v13    # "key":Ljava/lang/String;
    .end local v17    # "token":Ljava/lang/String;
    .end local v18    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v19    # "value":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 175
    .local v8, "e":Ljava/lang/Exception;
    new-instance v20, Lcom/com2us/security/message/MessageCryptException;

    const-string v21, "Decryption error"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8}, Lcom/com2us/security/message/MessageCryptException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 165
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "decrypted":Ljava/lang/String;
    .restart local v7    # "delimeterIndex":I
    .restart local v9    # "encrypter":Lcom/com2us/security/cryptography/StringEncrypter;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v17    # "token":Ljava/lang/String;
    .restart local v18    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v19    # "value":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v19, ""

    goto :goto_2

    .line 168
    :cond_6
    move-object/from16 v13, v17

    .line 169
    const-string v19, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 184
    .end local v7    # "delimeterIndex":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v17    # "token":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    .restart local v10    # "expire":Ljava/lang/String;
    .restart local v14    # "longExpire":J
    :cond_7
    :try_start_3
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v14

    .line 189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 190
    .local v4, "currentTime":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 192
    .local v11, "expireTime":Ljava/util/Calendar;
    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v14

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 194
    invoke-virtual {v4, v11}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 195
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 196
    .local v5, "dateformat":Ljava/text/SimpleDateFormat;
    new-instance v20, Lcom/com2us/security/message/MessageTimeoutException;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Current time ("

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 197
    const-string v22, ") is after expire time ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 196
    invoke-direct/range {v20 .. v21}, Lcom/com2us/security/message/MessageTimeoutException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 185
    .end local v4    # "currentTime":Ljava/util/Calendar;
    .end local v5    # "dateformat":Ljava/text/SimpleDateFormat;
    .end local v11    # "expireTime":Ljava/util/Calendar;
    :catch_1
    move-exception v8

    .line 186
    .restart local v8    # "e":Ljava/lang/Exception;
    new-instance v20, Lcom/com2us/security/message/MessageTimeoutException;

    const-string v21, "Invalid expire time"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8}, Lcom/com2us/security/message/MessageTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 199
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "currentTime":Ljava/util/Calendar;
    .restart local v11    # "expireTime":Ljava/util/Calendar;
    :cond_8
    return-void
.end method

.method public setProperties(Ljava/util/Properties;)V
    .locals 0
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/com2us/security/message/CryptMessage;->properties:Ljava/util/Properties;

    .line 69
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/com2us/security/message/CryptMessage;->properties:Ljava/util/Properties;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/com2us/security/message/CryptMessage;->properties:Ljava/util/Properties;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/com2us/security/message/CryptMessage;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
