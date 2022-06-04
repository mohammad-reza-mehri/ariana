# ariana
Asterisk function for persian text speech and use Asr Gooyesh Pardaz cloud account.

# Install
For install asterisk function module
1) Download ariana_install.sh
2) Run ./ariana_install.sh


Note : This module developed for asterisk 16.17.0 and later.

# Example
For use in asterisk dialplan:

exten => 777,1,Answer
exten => 777,1,Playback(${ARIANA([Asr Gooyesh Pardaz API Key],[Persian Text])})
exten => 777,1,Hangup

