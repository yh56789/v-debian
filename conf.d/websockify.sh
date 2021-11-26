#!/bin/bash
cd /root
su root -l -c 'vncserver :2000 ' 
websockify --web /usr/share/novnc $PORT localhost:5900
