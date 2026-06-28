#!/usr/bin/env bash
set -euo pipefail
 
echo '=== Inizio personalizzazione Bazzite Minimalista ==='
 
# ── 1. RIMUOVI APP PESANTI PRE-INSTALLATE ────────────────────────────────
# Questi pacchetti occupano diversi GB e li puoi reinstallare dopo
rpm-ostree override remove \
    steamdeck-dsp \
    || true   # 'true' evita errori se il pacchetto non esiste
 
# ── 2. RIMUOVI FLATPAK DI SISTEMA PESANTI ────────────────────────────────
# Steam e Lutris occupano 3-5 GB. Li rimuoviamo dall'immagine base.
# Potrai installarli dopo l'installazione dal Software Center.
flatpak uninstall --system --noninteractive \
    com.valvesoftware.Steam \
    net.lutris.Lutris \
    2>/dev/null || true
 
# ── 3. RIMUOVI LOCALIZZAZIONI INUTILI ────────────────────────────────────
# Tieni solo italiano e inglese
dnf remove -y \
    glibc-langpack-zh \
    glibc-langpack-ko \
    glibc-langpack-ja \
    glibc-langpack-ar \
    2>/dev/null || true
 
# ── 4. PULIZIA CACHE ─────────────────────────────────────────────────────
dnf clean all 2>/dev/null || true
rm -rf /var/cache/rpm-ostree
rm -rf /tmp/*
 
echo '=== Personalizzazione completata! ==='
