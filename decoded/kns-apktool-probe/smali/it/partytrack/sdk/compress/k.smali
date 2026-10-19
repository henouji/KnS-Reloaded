.class public final Lit/partytrack/sdk/compress/k;
.super Ljava/lang/Thread;


# instance fields
.field private a:I

.field private a:Lit/partytrack/sdk/compress/j;

.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v0, p0, Lit/partytrack/sdk/compress/k;->a:I

    iput v0, p0, Lit/partytrack/sdk/compress/k;->b:I

    iput-object v1, p0, Lit/partytrack/sdk/compress/k;->a:Ljava/lang/String;

    iput-object v1, p0, Lit/partytrack/sdk/compress/k;->a:Lit/partytrack/sdk/compress/j;

    const/4 v0, 0x1

    iput v0, p0, Lit/partytrack/sdk/compress/k;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v0, p0, Lit/partytrack/sdk/compress/k;->a:I

    iput v0, p0, Lit/partytrack/sdk/compress/k;->b:I

    iput-object v1, p0, Lit/partytrack/sdk/compress/k;->a:Ljava/lang/String;

    iput-object v1, p0, Lit/partytrack/sdk/compress/k;->a:Lit/partytrack/sdk/compress/j;

    const/4 v0, 0x2

    iput v0, p0, Lit/partytrack/sdk/compress/k;->a:I

    iput p1, p0, Lit/partytrack/sdk/compress/k;->b:I

    return-void
.end method

.method public constructor <init>(Lit/partytrack/sdk/compress/j;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v0, p0, Lit/partytrack/sdk/compress/k;->a:I

    iput v0, p0, Lit/partytrack/sdk/compress/k;->b:I

    iput-object v1, p0, Lit/partytrack/sdk/compress/k;->a:Ljava/lang/String;

    iput-object v1, p0, Lit/partytrack/sdk/compress/k;->a:Lit/partytrack/sdk/compress/j;

    const/4 v0, 0x3

    iput v0, p0, Lit/partytrack/sdk/compress/k;->a:I

    iput-object p1, p0, Lit/partytrack/sdk/compress/k;->a:Lit/partytrack/sdk/compress/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v0, p0, Lit/partytrack/sdk/compress/k;->a:I

    iput v0, p0, Lit/partytrack/sdk/compress/k;->b:I

    iput-object v1, p0, Lit/partytrack/sdk/compress/k;->a:Ljava/lang/String;

    iput-object v1, p0, Lit/partytrack/sdk/compress/k;->a:Lit/partytrack/sdk/compress/j;

    const/4 v0, 0x2

    iput v0, p0, Lit/partytrack/sdk/compress/k;->a:I

    iput-object p1, p0, Lit/partytrack/sdk/compress/k;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lit/partytrack/sdk/compress/k;->a:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "start_event"

    invoke-static {v0}, Lit/partytrack/sdk/compress/b;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "collector_js_version"

    invoke-static {v0}, Lit/partytrack/sdk/compress/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "0.0"

    :cond_1
    const-string v3, "adtruth_js_collector_version"

    invoke-interface {v2, v3, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lit/partytrack/sdk/compress/f;

    const-string v3, "i.json"

    invoke-static {v3}, Lit/partytrack/sdk/compress/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lit/partytrack/sdk/compress/a;->a(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lit/partytrack/sdk/compress/f;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lit/partytrack/sdk/compress/f;->a()V

    iget v2, v0, Lit/partytrack/sdk/compress/f;->a:I

    const/16 v3, 0x190

    if-lt v2, v3, :cond_2

    iget v2, v0, Lit/partytrack/sdk/compress/f;->a:I

    const/16 v3, 0x1f4

    if-ge v2, v3, :cond_2

    const-string v0, "Failed to initialize request"

    invoke-static {v0}, Lit/partytrack/sdk/compress/a;->a(Ljava/lang/String;)V

    const-string v0, "Please check APP_ID, APP_KEY, and PartTrack\'s settings your application"

    invoke-static {v0}, Lit/partytrack/sdk/compress/a;->a(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lit/partytrack/sdk/compress/d;->a:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    iget v2, v0, Lit/partytrack/sdk/compress/f;->a:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_3

    const-string v0, "Failed to initialize request"

    invoke-static {v0}, Lit/partytrack/sdk/compress/a;->a(Ljava/lang/String;)V

    const-string v0, "Please check your device could connect internet"

    invoke-static {v0}, Lit/partytrack/sdk/compress/a;->a(Ljava/lang/String;)V

    const-string v0, "Another case, PartyTrack server might be buzy, so please check later or contact us"

    invoke-static {v0}, Lit/partytrack/sdk/compress/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, v0, Lit/partytrack/sdk/compress/f;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "adtruth_js_collector_version"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "adtruth_js_collector_version"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "collector_js_version"

    invoke-static {v3, v0}, Lit/partytrack/sdk/compress/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "collector_js"

    const-string v3, "adtruth_js_collector"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lit/partytrack/sdk/compress/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lit/partytrack/sdk/compress/d;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v7, :cond_5

    const-string v0, "Invalid app status received"

    invoke-static {v0}, Lit/partytrack/sdk/compress/a;->a(Ljava/lang/String;)V

    const-string v0, "Please cehck your app status about PartyTack"

    invoke-static {v0}, Lit/partytrack/sdk/compress/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lit/partytrack/sdk/compress/b;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lit/partytrack/sdk/compress/d;->a:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_5
    :try_start_1
    const-string v0, "ssl"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ssl"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    sput-boolean v0, Lit/partytrack/sdk/compress/d;->a:Z

    :cond_6
    const-string v0, "identifiers"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-lt v0, v3, :cond_7

    invoke-static {v7}, Lit/partytrack/sdk/compress/b;->a(Z)V

    goto/16 :goto_0

    :cond_7
    :try_start_2
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lit/partytrack/sdk/compress/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "identifier key:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "identifier value:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    sget-object v5, Lit/partytrack/sdk/compress/d;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lit/partytrack/sdk/compress/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lit/partytrack/sdk/compress/k;->b:I

    if-eqz v0, :cond_9

    iget v0, p0, Lit/partytrack/sdk/compress/k;->b:I

    invoke-static {v0}, Lit/partytrack/sdk/compress/b;->a(I)V

    invoke-static {v1}, Lit/partytrack/sdk/compress/b;->a(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lit/partytrack/sdk/compress/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/partytrack/sdk/compress/k;->a:Ljava/lang/String;

    invoke-static {v0}, Lit/partytrack/sdk/compress/b;->a(Ljava/lang/String;)V

    invoke-static {v1}, Lit/partytrack/sdk/compress/b;->a(Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lit/partytrack/sdk/compress/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/partytrack/sdk/compress/k;->a:Lit/partytrack/sdk/compress/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/partytrack/sdk/compress/k;->a:Lit/partytrack/sdk/compress/j;

    invoke-static {v0}, Lit/partytrack/sdk/compress/b;->a(Lit/partytrack/sdk/compress/j;)V

    invoke-static {v1}, Lit/partytrack/sdk/compress/b;->a(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
