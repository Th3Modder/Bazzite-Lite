# Partenza: Bazzite GNOME ufficiale (stabile)
FROM ghcr.io/ublue-os/bazzite:stable
 
# ── Copiamo i file di personalizzazione ──────────────────────────────────
COPY build_files/build.sh /tmp/build.sh
RUN chmod +x /tmp/build.sh && /tmp/build.sh
 
# ── Pulizia finale dei layer ─────────────────────────────────────────────
RUN rpm-ostree cleanup -m && \
    ostree container commit
