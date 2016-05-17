.class public Lcyanogenmod/app/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# static fields
.field public static final MODIFY_NETWORK_SETTINGS_PERMISSION:Ljava/lang/String; = "cyanogenmod.permission.MODIFY_NETWORK_SETTINGS"

.field public static final MODIFY_SOUND_SETTINGS_PERMISSION:Ljava/lang/String; = "cyanogenmod.permission.MODIFY_SOUND_SETTINGS"

.field private static final TAG:Ljava/lang/String; = "SettingsManager"

.field public static final ZEN_MODE_IMPORTANT_INTERRUPTIONS:I = 0x1

.field public static final ZEN_MODE_NO_INTERRUPTIONS:I = 0x2

.field public static final ZEN_MODE_OFF:I

.field private static sService:Lcyanogenmod/app/ISettingsManager;

.field private static sSettingsManagerInstance:Lcyanogenmod/app/SettingsManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 80
    iput-object v0, p0, Lcyanogenmod/app/SettingsManager;->mContext:Landroid/content/Context;

    .line 84
    :goto_0
    invoke-static {}, Lcyanogenmod/app/SettingsManager;->getService()Lcyanogenmod/app/ISettingsManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/SettingsManager;->sService:Lcyanogenmod/app/ISettingsManager;

    .line 85
    return-void

    .line 82
    :cond_0
    iput-object p1, p0, Lcyanogenmod/app/SettingsManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/app/SettingsManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v0, Lcyanogenmod/app/SettingsManager;->sSettingsManagerInstance:Lcyanogenmod/app/SettingsManager;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcyanogenmod/app/SettingsManager;

    invoke-direct {v0, p0}, Lcyanogenmod/app/SettingsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/app/SettingsManager;->sSettingsManagerInstance:Lcyanogenmod/app/SettingsManager;

    .line 96
    :cond_0
    sget-object v0, Lcyanogenmod/app/SettingsManager;->sSettingsManagerInstance:Lcyanogenmod/app/SettingsManager;

    return-object v0
.end method

.method public static getService()Lcyanogenmod/app/ISettingsManager;
    .locals 2

    .prologue
    .line 101
    sget-object v1, Lcyanogenmod/app/SettingsManager;->sService:Lcyanogenmod/app/ISettingsManager;

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lcyanogenmod/app/SettingsManager;->sService:Lcyanogenmod/app/ISettingsManager;

    .line 109
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 104
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "cmsettings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 105
    .restart local v0    # "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 106
    invoke-static {v0}, Lcyanogenmod/app/ISettingsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ISettingsManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/SettingsManager;->sService:Lcyanogenmod/app/ISettingsManager;

    .line 107
    sget-object v1, Lcyanogenmod/app/SettingsManager;->sService:Lcyanogenmod/app/ISettingsManager;

    goto :goto_0

    .line 109
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public rebootDevice()V
    .locals 3

    .prologue
    .line 199
    sget-object v1, Lcyanogenmod/app/SettingsManager;->sService:Lcyanogenmod/app/ISettingsManager;

    if-nez v1, :cond_0

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/SettingsManager;->getService()Lcyanogenmod/app/ISettingsManager;

    move-result-object v1

    invoke-interface {v1}, Lcyanogenmod/app/ISettingsManager;->reboot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SettingsManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAirplaneModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 121
    sget-object v1, Lcyanogenmod/app/SettingsManager;->sService:Lcyanogenmod/app/ISettingsManager;

    if-nez v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 125
    :cond_0
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/SettingsManager;->getService()Lcyanogenmod/app/ISettingsManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/ISettingsManager;->setAirplaneModeEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SettingsManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 139
    sget-object v1, Lcyanogenmod/app/SettingsManager;->sService:Lcyanogenmod/app/ISettingsManager;

    if-nez v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 143
    :cond_0
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/SettingsManager;->getService()Lcyanogenmod/app/ISettingsManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/ISettingsManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SettingsManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setZenMode(I)Z
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 164
    sget-object v2, Lcyanogenmod/app/SettingsManager;->sService:Lcyanogenmod/app/ISettingsManager;

    if-nez v2, :cond_0

    .line 172
    :goto_0
    return v1

    .line 168
    :cond_0
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/SettingsManager;->getService()Lcyanogenmod/app/ISettingsManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcyanogenmod/app/ISettingsManager;->setZenMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SettingsManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public shutdownDevice()V
    .locals 3

    .prologue
    .line 182
    sget-object v1, Lcyanogenmod/app/SettingsManager;->sService:Lcyanogenmod/app/ISettingsManager;

    if-nez v1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 186
    :cond_0
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/SettingsManager;->getService()Lcyanogenmod/app/ISettingsManager;

    move-result-object v1

    invoke-interface {v1}, Lcyanogenmod/app/ISettingsManager;->shutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SettingsManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method