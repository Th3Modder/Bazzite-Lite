# Partenza: Bazzite GNOME ufficiale (stabile)
FROM ghcr.io/ublue-os/bazzite-gnome:stable

# Disabilita repo terra-mesa che causa problemi con bootc-image-builder
RUN sed -i 's/enabled=1/enabled=0/' /etc/yum.repos.d/terra-mesa.repo 2>/dev/null || true

COPY build_files/build.sh /tmp/build.sh
RUN chmod +x /tmp/build.sh && /tmp/build.sh

RUN rpm-ostree cleanup -m && \
    ostree container commit
