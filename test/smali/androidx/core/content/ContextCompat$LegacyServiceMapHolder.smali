.class final Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyServiceMapHolder"
.end annotation


# static fields
.field static final SERVICES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 896
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    .line 899
    nop

    .line 900
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/telephony/SubscriptionManager;

    const-string v2, "telephony_subscription_service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/app/usage/UsageStatsManager;

    const-string/jumbo v2, "usagestats"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    nop

    .line 904
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/appwidget/AppWidgetManager;

    const-string v2, "appwidget"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/os/BatteryManager;

    const-string v2, "batterymanager"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/hardware/camera2/CameraManager;

    const-string v2, "camera"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/app/job/JobScheduler;

    const-string v2, "jobscheduler"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/content/pm/LauncherApps;

    const-string v2, "launcherapps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/media/projection/MediaProjectionManager;

    const-string v2, "media_projection"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/media/session/MediaSessionManager;

    const-string v2, "media_session"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/content/RestrictionsManager;

    const-string v2, "restrictions"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/telecom/TelecomManager;

    const-string v2, "telecom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/media/tv/TvInputManager;

    const-string/jumbo v2, "tv_input"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    nop

    .line 916
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/app/AppOpsManager;

    const-string v2, "appops"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/view/accessibility/CaptioningManager;

    const-string v2, "captioning"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/hardware/ConsumerIrManager;

    const-string v2, "consumer_ir"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/print/PrintManager;

    const-string v2, "print"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    nop

    .line 922
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/bluetooth/BluetoothManager;

    const-string v2, "bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    nop

    .line 925
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/hardware/display/DisplayManager;

    const-string v2, "display"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/os/UserManager;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    nop

    .line 929
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/hardware/input/InputManager;

    const-string v2, "input"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/media/MediaRouter;

    const-string v2, "media_router"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/net/nsd/NsdManager;

    const-string v2, "servicediscovery"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    const-string v2, "accessibility"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/accounts/AccountManager;

    const-string v2, "account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "activity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/app/AlarmManager;

    const-string v2, "alarm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/media/AudioManager;

    const-string v2, "audio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/content/ClipboardManager;

    const-string v2, "clipboard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/net/ConnectivityManager;

    const-string v2, "connectivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    const-string v2, "device_policy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/app/DownloadManager;

    const-string v2, "download"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/os/DropBoxManager;

    const-string v2, "dropbox"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    const-string v2, "input_method"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/app/KeyguardManager;

    const-string v2, "keyguard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/view/LayoutInflater;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/location/LocationManager;

    const-string v2, "location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/nfc/NfcManager;

    const-string v2, "nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/app/NotificationManager;

    const-string v2, "notification"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/os/PowerManager;

    const-string v2, "power"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/app/SearchManager;

    const-string v2, "search"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/hardware/SensorManager;

    const-string v2, "sensor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/os/storage/StorageManager;

    const-string v2, "storage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/view/textservice/TextServicesManager;

    const-string/jumbo v2, "textservices"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/app/UiModeManager;

    const-string/jumbo v2, "uimode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/hardware/usb/UsbManager;

    const-string/jumbo v2, "usb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/os/Vibrator;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/app/WallpaperManager;

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/net/wifi/p2p/WifiP2pManager;

    const-string/jumbo v2, "wifip2p"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/net/wifi/WifiManager;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    const-class v1, Landroid/view/WindowManager;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
