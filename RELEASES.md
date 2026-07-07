# Releases & Downloads

## Download Pre-built ISOs

Pre-built ISO images for Bazzite-Lite (KDE & GNOME variants) are available on our release page. These are ready-to-use installation media for direct installation on your PC.

### Available Downloads

- **Bazzite-Lite KDE** - KDE Plasma desktop environment
- **Bazzite-Lite GNOME** - GNOME desktop environment

### Download Locations

Due to file size limitations (5GB+), ISOs are hosted on external storage services:

#### **Option 1: SourceForge (Recommended)**
SourceForge is the most trusted platform for Linux distributions and provides reliable downloads.

```
https://sourceforge.net/projects/bazzite-lite/files/
```

**Benefits:**
- Reliable mirror network
- Automatic backup mirrors
- Perfect for Linux distributions
- Detailed download statistics

#### **Option 2: Internet Archive**
Community-backed permanent storage with excellent uptime.

```
https://archive.org/download/bazzite-lite/
```

**Benefits:**
- Permanent archival
- No file limits
- Community accessible
- Great for long-term preservation

#### **Option 3: GitHub Releases (Metadata Only)**
GitHub Releases page contains checksums and build information with links to the actual downloads.

```
https://github.com/Th3Modder/Bazzite-Lite/releases
```

---

## Build Your Own ISO

If you prefer to build a custom ISO locally, follow this simple guide:

### Prerequisites

- Linux system with bootc support (Fedora 39+, Bazzite, Aurora, Bluefin, etc.)
- ~30GB free disk space
- Internet connection
- `just` command installed (default on Universal Blue)

### Quick Build Steps

1. **Clone the repository:**
```bash
git clone https://github.com/Th3Modder/Bazzite-Lite.git
cd Bazzite-Lite
```

2. **Configure your build:**
```bash
# Edit image name and organization
nano image-template.env

# Choose your desktop environment by editing the Containerfile
# Look for the FROM line and customize as needed
nano Containerfile
```

3. **Build the container image:**
```bash
just build
```

4. **Generate the ISO:**
```bash
just build-iso
```

5. **Find your ISO:**
```bash
ls -lh build/
```

The ISO will be in the `build/` directory, ready to write to USB or burn to DVD.

### Advanced Build Options

**For QCOW2 (Virtual Machine):**
```bash
just build-qcow2
```

**For RAW disk image:**
```bash
just build-raw
```

**For custom tags:**
```bash
just build my-custom-image v1.0
just build-iso my-custom-image v1.0
```

**For testing locally before publishing:**
```bash
sudo just build
sudo bootc switch --transport containers-storage localhost/bazzite-lite:latest
sudo reboot
```

---

## Verification & Checksums

All releases include SHA256 checksums for verification:

```bash
# Download the checksums file
wget https://sourceforge.net/projects/bazzite-lite/files/SHA256SUMS

# Verify your ISO
sha256sum -c SHA256SUMS
```

---

## Installation Instructions

### From ISO

1. **Prepare installation media:**
   - Write ISO to USB: `sudo dd if=bazzite-lite-kde.iso of=/dev/sdX bs=4M status=progress`
   - Or use Etcher: https://www.balena.io/etcher/

2. **Boot from USB:**
   - Insert USB and reboot
   - Press F12 (or your BIOS key) during boot
   - Select USB drive

3. **Run installer and follow prompts**

### From Running System

If you're already on a bootc-based system:

```bash
sudo bootc switch ghcr.io/th3modder/bazzite-lite:latest
sudo reboot
```

---

## Build Your Custom Variant

Want to customize Bazzite-Lite further? Use our template:

```bash
# Use this repository as a template
# See README.md for detailed customization guide
```

---

## Need Help?

- 📖 [Full Documentation](README.md)
- 🛠️ [Build Instructions](README.md#justfile-documentation)
- 💬 [Universal Blue Discord](https://discord.gg/WEu6BdFEtp)
- 🌐 [Universal Blue Forums](https://universal-blue.discourse.group/)
- 📚 [Bootc Documentation](https://bootc.dev/)

---

## File Size Reference

| Format | Size | Use Case |
|--------|------|----------|
| ISO | ~5GB | USB/DVD installation |
| QCOW2 | ~3GB | Virtual machines |
| RAW | ~3GB | Direct disk write |

---

*Last Updated: July 7, 2026*
