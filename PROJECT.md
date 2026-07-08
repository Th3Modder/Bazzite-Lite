# Bazzite-Lite Project Summary

## About
Bazzite-Lite is a lightweight, customizable Bazzite distribution optimized for KDE and GNOME desktops across all PC hardware. Built on bootc technology for efficient container-based OS management.

## Key Features
✨ **Lightweight Design** - Optimized for universal PC compatibility
🖥️ **Desktop Flexibility** - KDE and GNOME pre-configured
📦 **Container-Native** - Full bootc support
💿 **Multiple Formats** - ISO, QCOW2, and RAW disk images
🔒 **Secure** - Integrated cosign signing
☁️ **Cloud Ready** - Optional S3 upload support
🛠️ **Developer Friendly** - Just recipes for easy building

## Technology Stack
- **Language:** Just, Shell, Dockerfile
- **Base:** Fedora Atomic / Universal Blue
- **Container Tech:** Bootc, Podman
- **CI/CD:** GitHub Actions
- **Signing:** Cosign
- **Image Building:** Bootc Image Builder

## Quick Start
1. Use this template to create your repository
2. Generate cosign keys for signing
3. Configure your base image and customizations
4. Push to GitHub and let Actions build your image
5. Deploy via `bootc switch` or disk images

## Community
- 🌐 [Universal Blue Forums](https://universal-blue.discourse.group/)
- 💬 [Discord Community](https://discord.gg/WEu6BdFEtp)
- 📚 [Bootc Discussions](https://github.com/bootc-dev/bootc/discussions)

## License
Apache License 2.0

---

*Built on top of the Universal Blue image-template project*
