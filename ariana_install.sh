#!/bin/bash
echo "Start Downloading Ariana Module..."
wget https://github.com/mohammad-reza-mehri/ariana/raw/main/func_ariana.so
mv func_ariana.so /usr/lib/asterisk/modules/func_ariana.so
chmod 777 /usr/lib/asterisk/modules/func_ariana.so
sed 's/<\/docs>/<function name="ARIANA" language="en_US"><synopsis>Persian Text To Voice.<\/synopsis><syntax><parameter name="api_key" required="true"><para>Account API Key<\/para><\/parameter><parameter name="persian_text" required="true"><para>Persian Text For Voice<\/para><\/parameter><\/syntax><description><para>Persian Text To Voice.<\/para><\/description><\/function><\/docs>/g' /var/lib/asterisk/documentation/core-en_US.xml > /var/lib/asterisk/documentation/tmp.xml
mv /var/lib/asterisk/documentation/tmp.xml /var/lib/asterisk/documentation/core-en_US.xml
echo "Restarting Asterisk Service."
service asterisk restart
echo "Module Ariana has been installed."
