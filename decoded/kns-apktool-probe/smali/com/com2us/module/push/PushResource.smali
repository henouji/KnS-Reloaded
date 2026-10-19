.class Lcom/com2us/module/push/PushResource;
.super Ljava/lang/Object;
.source "PushResourceHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x91d178e86988105L


# instance fields
.field active:Ljava/lang/String;

.field bigmsg:Ljava/lang/String;

.field bigpicture:Ljava/lang/String;

.field broadcastAction:Ljava/lang/String;

.field bucketsize:I

.field buckettype:I

.field elapsedRealtime:J

.field icon:Ljava/lang/String;

.field msg:Ljava/lang/String;

.field noticeID:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field pushID:Ljava/lang/String;

.field savedCurrentTime:J

.field sound:Ljava/lang/String;

.field ticker:Ljava/lang/String;

.field title:Ljava/lang/String;

.field triggerAtTime:J

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;IILjava/lang/String;)V
    .locals 4
    .param p1, "pushID"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "bigmsg"    # Ljava/lang/String;
    .param p5, "ticker"    # Ljava/lang/String;
    .param p6, "noticeID"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;
    .param p8, "icon"    # Ljava/lang/String;
    .param p9, "sound"    # Ljava/lang/String;
    .param p10, "active"    # Ljava/lang/String;
    .param p11, "packageName"    # Ljava/lang/String;
    .param p12, "elapsedRealtime"    # J
    .param p14, "savedCurrentTime"    # J
    .param p16, "triggerAtTime"    # J
    .param p18, "broadcastAction"    # Ljava/lang/String;
    .param p19, "buckettype"    # I
    .param p20, "bucketsize"    # I
    .param p21, "bigpicture"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[PushResource]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lcom/com2us/module/push/PushResource;->pushID:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/com2us/module/push/PushResource;->title:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/com2us/module/push/PushResource;->msg:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lcom/com2us/module/push/PushResource;->bigmsg:Ljava/lang/String;

    .line 103
    iput-object p5, p0, Lcom/com2us/module/push/PushResource;->ticker:Ljava/lang/String;

    .line 104
    iput-object p6, p0, Lcom/com2us/module/push/PushResource;->noticeID:Ljava/lang/String;

    .line 105
    iput-object p7, p0, Lcom/com2us/module/push/PushResource;->type:Ljava/lang/String;

    .line 106
    iput-object p8, p0, Lcom/com2us/module/push/PushResource;->icon:Ljava/lang/String;

    .line 107
    iput-object p9, p0, Lcom/com2us/module/push/PushResource;->sound:Ljava/lang/String;

    .line 108
    iput-object p10, p0, Lcom/com2us/module/push/PushResource;->active:Ljava/lang/String;

    .line 109
    iput-object p11, p0, Lcom/com2us/module/push/PushResource;->packageName:Ljava/lang/String;

    .line 110
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/com2us/module/push/PushResource;->elapsedRealtime:J

    .line 111
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/com2us/module/push/PushResource;->savedCurrentTime:J

    .line 112
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/com2us/module/push/PushResource;->triggerAtTime:J

    .line 113
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/com2us/module/push/PushResource;->broadcastAction:Ljava/lang/String;

    .line 114
    move/from16 v0, p19

    iput v0, p0, Lcom/com2us/module/push/PushResource;->buckettype:I

    .line 115
    move/from16 v0, p20

    iput v0, p0, Lcom/com2us/module/push/PushResource;->bucketsize:I

    .line 116
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/com2us/module/push/PushResource;->bigpicture:Ljava/lang/String;

    .line 117
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[pushID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/push/PushResource;->pushID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 123
    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/push/PushResource;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 124
    const-string v2, ", msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/push/PushResource;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 125
    const-string v2, ", bigmsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/push/PushResource;->bigmsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 126
    const-string v2, ", ticker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/push/PushResource;->ticker:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 127
    const-string v2, ", noticeID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/push/PushResource;->noticeID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 128
    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/push/PushResource;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 129
    const-string v2, ", icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/push/PushResource;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 130
    const-string v2, ", sound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/push/PushResource;->sound:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 131
    const-string v2, ", active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/push/PushResource;->active:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 132
    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/push/PushResource;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 133
    const-string v2, ", elapsedRealtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/com2us/module/push/PushResource;->elapsedRealtime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 134
    const-string v2, ", savedCurrentTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/com2us/module/push/PushResource;->savedCurrentTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 135
    const-string v2, ", triggerAtTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/com2us/module/push/PushResource;->triggerAtTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 136
    const-string v2, ", broadcastAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/push/PushResource;->broadcastAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 137
    const-string v2, ", buckettype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/com2us/module/push/PushResource;->buckettype:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 138
    const-string v2, ", bucketsize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/com2us/module/push/PushResource;->bucketsize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 139
    const-string v2, ", bigpicture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/push/PushResource;->bigpicture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 140
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
