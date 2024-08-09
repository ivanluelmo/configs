#!/bin/bash
# This script changes the delay for entering standby and hibernating
# By Sergio #20230130
# 20230407: Updated values & prompts
# 20230807: Corrected values, added indenting

echo ============================================================
echo ATTENTION: The reported values depend if you are plugged-in or battery powered.
echo Old values:
#pmset -g | grep standby
pmset -g


echo ============================================================
echo Changing values, admin rights needed.


# All cases
sudo pmset proximitywake			0	#disables wearables waking up
sudo pmset -a disablesleep 			0	#enables sleep
sudo pmset -a hibernatemode 		25	#enables hibernation, default is 3
sudo pmset -a standby 				1	#enabled for all cases
sudo pmset -a highstandbythreshold	60  #percentage for all cases

# Values while plugged in AC: disabled
sudo pmset -c sleep					1
sudo pmset -c standby				0	#selectively disabling it for AC
sudo pmset -c standbydelay			60	#moo point?


# Values while mobile
sudo pmset -b standbydelaylow		300 #seconds
sudo pmset -b standbydelayhigh		900 #seconds
sudo pmset -b sleep 				1800 #x2 seconds
sudo pmset -b standby 1


# OLD SETTINGS
#sudo pmset -a highstandbythreshold	50
#sudo pmset -a standbydelaylow		10800
#sudo pmset -a standbydelayhigh		86400



echo ============================================================
echo New values:
#pmset -g | grep standby
pmset -g
