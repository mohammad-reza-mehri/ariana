#!/bin/bash
echo "Start Downloading Ariana Module..."
sed 's/<\/docs>/<function name="ARIANA" language="en_US"><synopsis>Persian Text To Voice.<\/synopsis><syntax><parameter name="api_key" required="true"><para>Account API Key<\/para><\/parameter><parameter name="persian_text" required="true"><para>Persian Text For Voice<\/para><\/parameter><\/syntax><description><para>Persian Text To Voice.<\/para><\/description><\/function><\/docs>/g' core-en_US.xml > tmp.xml
mv /var/lib/asterisk/documentation/tmp.xml /var/lib/asterisk/documentation/core-en_US.xml
service asterisk restart
rm /var/lib/asterisk/documentation/tmp.xml
echo "Module Ariana has been installed."