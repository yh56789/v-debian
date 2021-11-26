FROM debian

# Install git, supervisor, VNC, & X11 packages
RUN set -ex; \
    apt-get update; \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
      bash \
      fluxbox \
      git \
      net-tools \
      novnc \
      socat \
      supervisor \
      x11vnc \
      xterm firefox-esr mate-system-monitor wget rclone lxde \
      xvfb

# Setup demo environment variables
ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN.UTF-8 \
    LC_ALL=zh_CN.UTF-8 \
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1800 \
    DISPLAY_HEIGHT=960 \
    RUN_XTERM=yes \
    RUN_FLUXBOX=yes
COPY . /app
RUN chmod +x /app/conf.d/websockify.sh
CMD ["/app/entrypoint.sh"]
