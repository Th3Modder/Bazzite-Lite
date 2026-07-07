# SourceForge Setup Guide for Bazzite-Lite ISOs

Complete step-by-step guide to hosting your 5GB+ ISO files on SourceForge - the most trusted platform for Linux distribution downloads.

---

## Why SourceForge?

✅ **Trusted by Linux Community** - Home to thousands of Linux projects  
✅ **No Size Limits** - Unlimited file storage  
✅ **Automatic Mirrors** - Global CDN with backup mirrors  
✅ **Easy Management** - Simple web interface  
✅ **Statistics** - Track downloads and user engagement  
✅ **Free Forever** - No hidden costs  

---

## Step 1: Create a SourceForge Account

1. Go to **[sourceforge.net](https://sourceforge.net)**
2. Click **"Sign Up"** (top right)
3. Fill in:
   - **Username:** `Th3Modder` (or your preference)
   - **Email:** Your GitHub email
   - **Password:** Strong password
4. Complete email verification
5. ✅ Account created!

---

## Step 2: Create a New Project

1. Log in to SourceForge
2. Click your **profile icon** → **"Create Project"**
3. Fill in project details:
   - **Project Name:** `Bazzite-Lite`
   - **URL:** Will be auto-generated (e.g., `bazzite-lite`)
   - **Description:** 
     ```
     A lightweight, customizable Bazzite distribution optimized for KDE and GNOME desktops. 
     Built on bootc technology for efficient container-based OS management.
     ```
   - **License:** `Apache License 2.0`
   - **Category:** `Operating System > Linux`
   - **Tags:** `bazzite`, `linux`, `fedora`, `kde`, `gnome`, `bootc`

4. Click **"Create Project"**
5. ✅ Project created!

---

## Step 3: Upload Your ISO Files

### Via Web Interface (Easiest)

1. **Go to your project page**
   - URL: `https://sourceforge.net/projects/bazzite-lite/`

2. **Click "Files" tab**

3. **Create folders** (optional but organized):
   ```
   bazzite-lite/
   ├── KDE/
   ├── GNOME/
   └── Checksums/
   ```

4. **Upload ISO files:**
   - Click **"Upload File"** button
   - Select your KDE ISO (e.g., `bazzite-lite-kde-latest.iso`)
   - Choose appropriate folder
   - Click **"Upload"**
   - Repeat for GNOME ISO

5. **Upload Checksums file:**
   - Create `SHA256SUMS` file locally:
     ```bash
     sha256sum bazzite-lite-kde-latest.iso > SHA256SUMS
     sha256sum bazzite-lite-gnome-latest.iso >> SHA256SUMS
     ```
   - Upload to Checksums folder

6. ✅ Files uploaded!

---

## Step 4: Set Default Downloads

1. **Go to Files tab**
2. For each ISO file:
   - Click the **file icon** next to the ISO
   - Select **"Set as default download"** for your OS
     - KDE version as default for Linux
   - This makes it the prominent download button

3. ✅ Default set!

---

## Step 5: Create Release Notes

1. **Go to "Releases" section** of your project
2. Click **"Create Release"** (usually for first release)
3. Fill in:
   - **Release Name:** `Bazzite-Lite v1.0`
   - **Release Date:** Today
   - **Release Notes:**
     ```markdown
     # Bazzite-Lite v1.0 Release

     ## Available Downloads

     - **Bazzite-Lite KDE** - KDE Plasma desktop environment
     - **Bazzite-Lite GNOME** - GNOME desktop environment

     ## Installation

     1. Download the ISO for your preferred desktop
     2. Write to USB: `sudo dd if=bazzite-lite-kde.iso of=/dev/sdX bs=4M`
     3. Boot and install

     ## Verification

     ```bash
     sha256sum -c SHA256SUMS
     ```

     ## Features

     - Lightweight design for universal PC hardware
     - KDE & GNOME pre-optimized
     - Full bootc support
     - Container-native OS management

     ## Documentation

     - [GitHub Repository](https://github.com/Th3Modder/Bazzite-Lite)
     - [Build Instructions](https://github.com/Th3Modder/Bazzite-Lite#justfile-documentation)
     - [Downloads Guide](https://github.com/Th3Modder/Bazzite-Lite/blob/main/RELEASES.md)
     ```

4. Click **"Save"**
5. ✅ Release notes created!

---

## Step 6: Link from GitHub

### Add to GitHub Releases

1. Go to **[GitHub Releases](https://github.com/Th3Modder/Bazzite-Lite/releases)**
2. Click **"Create a new release"**
3. Fill in:
   - **Tag version:** `v1.0`
   - **Release title:** `Bazzite-Lite v1.0`
   - **Description:**
     ```markdown
     # Bazzite-Lite v1.0

     A lightweight Bazzite distribution optimized for KDE and GNOME desktops.

     ## Download Pre-built ISOs

     Due to GitHub file size limits, ISOs are hosted on SourceForge:

     ### **[📥 Download from SourceForge](https://sourceforge.net/projects/bazzite-lite/files/)**

     - **Bazzite-Lite KDE** (~5GB) - KDE Plasma desktop
     - **Bazzite-Lite GNOME** (~5GB) - GNOME desktop

     ## Verification

     Download `SHA256SUMS` and verify:
     ```bash
     sha256sum -c SHA256SUMS
     ```

     ## Build Your Own

     Prefer to build locally? See [RELEASES.md](https://github.com/Th3Modder/Bazzite-Lite/blob/main/RELEASES.md)

     ```bash
     git clone https://github.com/Th3Modder/Bazzite-Lite.git
     cd Bazzite-Lite
     just build
     just build-iso
     ```

     ## Installation

     1. Write ISO to USB: `sudo dd if=bazzite-lite-kde.iso of=/dev/sdX bs=4M`
     2. Boot from USB and run installer
     3. Or switch on existing system: `sudo bootc switch ghcr.io/th3modder/bazzite-lite:latest`

     ## Features

     - 🎯 Lightweight design for universal PC compatibility
     - 🖥️ KDE and GNOME pre-optimized
     - 📦 Full bootc support
     - 💿 Multiple formats (ISO, QCOW2, RAW)
     - 🔒 Container signing (cosign)

     See [README.md](https://github.com/Th3Modder/Bazzite-Lite) for full documentation.
     ```

4. Click **"Publish release"**
5. ✅ Release published!

### Update RELEASES.md

Already done! Your RELEASES.md points users to SourceForge.

---

## Step 7: Share Your Downloads

### Twitter/X
```
🚀 Bazzite-Lite v1.0 Released!

Lightweight Bazzite for KDE & GNOME. Now available for download!

📥 Download: https://sourceforge.net/projects/bazzite-lite/

Built on bootc. Free. Open Source. #Linux #Fedora #BazziteLite
```

### Reddit (r/linux, r/bazzite, r/fedora)
```
[RELEASE] Bazzite-Lite v1.0 - Lightweight Bazzite for KDE & GNOME

I've released Bazzite-Lite, a streamlined Bazzite variant optimized for KDE and GNOME desktops. 

Download: https://sourceforge.net/projects/bazzite-lite/
GitHub: https://github.com/Th3Modder/Bazzite-Lite

Features:
- Lightweight design for universal PC hardware
- Full bootc support
- Automated CI/CD builds
- Multiple disk formats

Built on the Universal Blue template, licensed under Apache 2.0.
```

### Discord (Universal Blue Server)
```
@everyone Bazzite-Lite v1.0 is out! 🎉

A lightweight Bazzite remix for KDE and GNOME. Perfect for older hardware or users who want minimal bloat.

📥 Download: https://sourceforge.net/projects/bazzite-lite/
📖 Docs: https://github.com/Th3Modder/Bazzite-Lite
```

---

## Step 8: Ongoing Maintenance

### Each New Release

1. **Build locally or via GitHub Actions:**
   ```bash
   just build
   just build-iso
   ```

2. **Generate checksums:**
   ```bash
   sha256sum bazzite-lite-kde-latest.iso > SHA256SUMS
   sha256sum bazzite-lite-gnome-latest.iso >> SHA256SUMS
   ```

3. **Upload new ISOs to SourceForge**
   - Go to Files → Upload new versions
   - Delete or archive old versions

4. **Create GitHub Release**
   - Tag: `v2.0` (etc.)
   - Link to SourceForge downloads

5. **Update version numbers** in your docs

---

## Troubleshooting

### File Upload Fails
- **Solution:** Try uploading via FTP or check file integrity:
  ```bash
  # Verify ISO before upload
  sha256sum bazzite-lite-kde.iso
  ```

### Download Stats Not Showing
- **Solution:** Give it 24 hours, SourceForge updates stats daily

### Want to Mirror on Internet Archive Too?
- Go to **[archive.org](https://archive.org)**
- Create account
- Upload same ISO files
- Both services = ultimate redundancy

---

## Quick Links

| Service | URL |
|---------|-----|
| **SourceForge Project** | https://sourceforge.net/projects/bazzite-lite/ |
| **GitHub Repository** | https://github.com/Th3Modder/Bazzite-Lite |
| **GitHub Releases** | https://github.com/Th3Modder/Bazzite-Lite/releases |
| **Download Guide** | https://github.com/Th3Modder/Bazzite-Lite/blob/main/RELEASES.md |

---

## Need Help?

- 💬 [SourceForge Support](https://sourceforge.net/support/)
- 🌐 [Universal Blue Discord](https://discord.gg/WEu6BdFEtp)
- 📚 [GitHub Documentation](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository)

---

*Last Updated: July 7, 2026*
