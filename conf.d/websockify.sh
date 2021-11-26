#!/bin/bash
websockify --web /usr/share/novnc $PORT localhost:5900






RUN echo 'cd /root' >>/luo.sh
RUN echo "su root -l -c 'vncserver :2000 ' "  >>/luo.sh
RUN echo 'cd /noVNC-1.2.0' >>/luo.sh
RUN echo './utils/launch.sh  --vnc localhost:7900 --listen 80 ' >>/luo.sh
