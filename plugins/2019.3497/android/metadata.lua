local metadata =
{
    plugin =
    {
        format = 'jar',
        manifest = 
        {
            permissions = {},
            usesPermissions = {
                -- From play-services-ads-lite package
                "android.permission.INTERNET",
                "android.permission.ACCESS_NETWORK_STATE",
            },
            usesFeatures = {},
            applicationChildElements = 
            {
                -- Meta-data for base logic layer
                [[
                <meta-data android:name="usesGooglePlayServicesComponentAds" android:value="true" />
                ]],
                -- From play-services-ads-lite package
                [[
                <!--Include the AdActivity and InAppPurchaseActivity configChanges and themes. -->
                <activity
                    android:name="com.google.android.gms.ads.AdActivity"
                    android:configChanges="keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize"
                    android:theme="@android:style/Theme.Translucent" />
                <activity android:name="com.google.android.gms.ads.purchase.InAppPurchaseActivity"
                    android:theme="@style/Theme.IAPTheme"/>
                ]],
            },
        }
    },
    coronaManifest = {
        dependencies = {
            ["shared.google.play.services.base"] = "com.coronalabs",
        },
    },
}

return metadata
