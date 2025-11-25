# Add project specific ProGuard rules here.
# You can find more details about ProGuard in the official documentation:
# https://www.guardsquare.com/en/products/proguard/manual/introduction

# Keep all public classes and methods that are used in your XML layout files.
-keep class **.R$* {
    *;
}

# Keep all classes that are used as parameters in your layouts.
-keep public class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
    public void set*(...);
}

# Keep the R file classes, which are used to access resources.
-keep class **.R
-keep class **.R$*

# Keep the following classes for Fresco
-keep class com.facebook.infer.annotation.** { *; }
-keep class * extends com.facebook.common.internal.DoNotStrip {
    *;
}

# Keep the following classes for animated WebP
-keep class com.facebook.animated.webp.** { *; }

# Keep the following classes for animated GIF
-keep class com.facebook.animated.gif.** { *; }
