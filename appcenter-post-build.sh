#!/usr/bin/env bash

HOCKEYAPP_API_TOKEN="82e014418bc228de9d19717a6620646b"
HOCKEYAPP_APP_ID= "a08048d16b5044f0bebb6006a1d7af76"

# Example: Upload master branch app binary to HockeyApp using the API
if [ "$APPCENTER_BRANCH" == "master" ];
then
curl \
-F "status=2" \
-F "ipa=@$APPCENTER_OUTPUT_DIRECTORY/MyApps.ipa" \
-H "X-HockeyAppToken: $HOCKEYAPP_API_TOKEN" \
https://rink.hockeyapp.net/api/2/apps/$HOCKEYAPP_APP_ID/app_versions/upload
else
echo "Current branch is $APPCENTER_BRANCH"
fi
