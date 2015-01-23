#!/bin/bash

# Put your song/playlist here and it'll start playing
vlc ~/<put-your-file-name-here>.mp4 &

# Reduce the volume by every minute for 60 minutes
for volume in {70..41}
do
    # Set the new volume
    amixer set Master $volume

    # Sleep for n seconds
    sleep 60
done

# Kill VLC to stop playing music
pkill -9 vlc

# to test what happens after the scheduled time
echo nighty;

# uncomment either of the following lines as required
#systemctl suspend              # To suspend
#systemctl hibernate            # To hibernate
#sudo shutdown -h now           # To turnoff
