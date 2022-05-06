local metadata =
{
    plugin =
    {
        format = 'jar',
        manifest = 
        {
            permissions = {},
            usesPermissions = {
            },
            usesFeatures = {},
            applicationChildElements = 
            {
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
