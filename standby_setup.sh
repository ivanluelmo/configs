#!/bin/bash
# This script changes the delay for entering standby and hibernating
# By Sergio #20230130
# 20230407: Updated values & prompts
# 20230807: Corrected values, added indenting
# 20250715: Updated values : https://www.dssw.co.uk/reference/pmset/

echo ============================================================
echo ATTENTION: The reported values depend if you are plugged-in or battery powered.
echo Old values:
#pmset -g | grep standby
pmset -g


echo ============================================================
echo Changing values, admin rights needed.


# All cases
sudo pmset proximitywake			0	#disables wearables waking up
sudo pmset -a powernap				0	#disables powernap
sudo pmset -a womp					0	#disables wake for network access
sudo pmset -a disablesleep 			0	#enables sleep
sudo pmset -a standby 				1	#enabled for all cases
sudo pmset -a hibernatemode 		25	#enables hibernation, default is 3 
sudo pmset -a highstandbythreshold	60	#percentage for all cases
sudo pmset -a lidwake				1	#Wake the machine when the lid is opened
sudo pmset -a autopoweroff			1	#Autopoweroff
sudo pmset -a autopoweroffdelay		10800	#After sleeping for 3hr, disk write

# Values while plugged in AC: disabled
sudo pmset -c standby				1	#changed it for permanently plugged in computer <-- # selectively disabling it for AC
sudo pmset -c sleep					120	#in minutes 
sudo pmset -c standbydelay			30	#60--> 30 


# Values while mobile
sudo pmset -b standby 				1
sudo pmset -b standbydelaylow		300 #seconds
sudo pmset -b standbydelayhigh		900 #seconds
sudo pmset -b sleep 				30	# old=1800 #x2 seconds --> in minutes now


# OLD SETTINGS
#sudo pmset -a highstandbythreshold	50
#sudo pmset -a standbydelaylow		10800
#sudo pmset -a standbydelayhigh		86400



echo ============================================================
echo New values:
#pmset -g | grep standby
pmset -g
