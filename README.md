# Ariana Asterisk Module
Asterisk function for persian text speech and use Asr Gooyesh Pardaz cloud account.

# Install
For install asterisk function module
1) wget https://github.com/mohammad-reza-mehri/ariana/raw/main/func_ariana.so
2) mv func_ariana.so /usr/lib/asterisk/modules/func_ariana.so
3) chmod 777 /usr/lib/asterisk/modules/func_ariana.so
4) sed 's/<\/docs>/<function name="ARIANA" language="en_US"><synopsis>Persian Text To Voice.<\/synopsis><syntax><parameter name="api_key" required="true"><para>Account API Key<\/para><\/parameter><parameter name="persian_text" required="true"><para>Persian Text For Voice<\/para><\/parameter><\/syntax><description><para>Persian Text To Voice.<\/para><\/description><\/function><\/docs>/g' /var/lib/asterisk/documentation/core-en_US.xml > /var/lib/asterisk/documentation/tmp.xml
5) mv /var/lib/asterisk/documentation/tmp.xml /var/lib/asterisk/documentation/core-en_US.xml
6) service asterisk restart



Note : This module developed for asterisk 16.17.0 and later.

# Example
For use in asterisk dialplan

exten => 777,1,Answer

exten => 777,1,Playback(${ARIANA([Asr Gooyesh Pardaz API Key],[Persian Text])})

exten => 777,1,Hangup

