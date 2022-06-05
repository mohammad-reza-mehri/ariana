# Ariana Asterisk Module
Asterisk function for persian text speech and use Asr Gooyesh Pardaz cloud account.

http://asr-gooyesh.com/fa/

# Install
For install asterisk function module following install.txt file

Note : This module developed for asterisk 16.17.0 and later.

# Function Usage

ARIANA( ApiKey , PersianText , [VoiceType] )

ApiKey and PersianText is requerd.

VoiceType is optional.

VoiceType can be Female1 or Male1 or Male2

Female1 as a default type

Note : For get api key visit http://asr-gooyesh.com/fa/ website.

# Example

For use in asterisk dialplan

exten => 777,1,Answer

exten => 777,n,Playback(${ARIANA(A1B2C3D4E5F6G7H,شرکت عصر گویش پرداز ، با افتخار ، تقدیم میکند,Female1)})

exten => 777,n,Hangup

