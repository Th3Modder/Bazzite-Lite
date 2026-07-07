# Contributing to Bazzite-Lite

Thank you for your interest in contributing to Bazzite-Lite! This document provides guidelines and instructions for contributing to the project.

---

## Ways to Contribute

### 1. **Report Issues**
- Found a bug? Open an [issue](https://github.com/Th3Modder/Bazzite-Lite/issues)
- Include:
  - What you were trying to do
  - What happened
  - Expected behavior
  - Your system info (`bootc status`)

### 2. **Suggest Features**
- Have an idea? Open a [discussion](https://github.com/Th3Modder/Bazzite-Lite/discussions)
- Describe the feature and why it would be useful
- Check if similar suggestions exist first

### 3. **Submit Code**
- Fix bugs or add features via pull requests
- See [Development Setup](#development-setup) below

### 4. **Improve Documentation**
- Fix typos or unclear sections
- Add examples or guides
- Improve README or other docs

### 5. **Test & Feedback**
- Build the ISOs and test on real hardware
- Report compatibility issues
- Share your experience

---

## Development Setup

### Prerequisites

```bash
# Install required tools
sudo dnf install -y git podman just

# Or on other distros:
sudo apt install git podman just    # Debian/Ubuntu
sudo pacman -S git podman just      # Arch
```

### Fork & Clone

```bash
# 1. Fork the repository on GitHub (click "Fork" button)

# 2. Clone your fork
git clone https://github.com/YOUR-USERNAME/Bazzite-Lite.git
cd Bazzite-Lite

# 3. Add upstream remote
git remote add upstream https://github.com/Th3Modder/Bazzite-Lite.git
```

### Create a Branch

```bash
# Create feature branch from main
git checkout -b feature/your-feature-name
# or for bug fixes:
git checkout -b fix/bug-description
```

### Make Changes

1. **Edit files** in your editor of choice
2. **Test locally:**
   ```bash
   # Check syntax
   just check
   
   # Format shell scripts
   just format
   
   # Lint shell scripts
   just lint
   
   # Build container
   just build
   
   # Build ISO
   just build-iso
   ```

3. **Commit with clear messages:**
   ```bash
   git add .
   git commit -m "feat: add new feature" 
   # or
   git commit -m "fix: resolve issue with X"
   ```

### Push & Create Pull Request

```bash
# Push to your fork
git push origin feature/your-feature-name

# Go to GitHub and click "Create Pull Request"
```

---

## Commit Message Guidelines

Use semantic commit messages:

```
feat:   New feature (feat: add KDE customizations)
fix:    Bug fix (fix: resolve boot timeout)
docs:   Documentation (docs: update README)
style:  Code style (style: format build.sh)
refactor: Code refactor (refactor: simplify build logic)
test:   Tests (test: add validation)
ci:     CI/CD (ci: update workflow)
```

**Example:**
```bash
git commit -m "feat: add support for custom kernel modules"
git commit -m "fix: resolve ISO size exceeding limit"
```

---

## Pull Request Process

1. **Update from upstream:**
   ```bash
   git fetch upstream
   git rebase upstream/main
   ```

2. **Provide clear PR description:**
   - What does this change?
   - Why is it needed?
   - Any breaking changes?
   - Testing done?

3. **Link related issues:**
   ```markdown
   Fixes #123
   Related to #456
   ```

4. **Keep PR focused:**
   - One feature per PR
   - Smaller PRs are reviewed faster

5. **Respond to feedback:**
   - Be open to suggestions
   - Make requested changes
   - Push updates to the same branch

---

## Code Style Guidelines

### Shell Scripts

```bash
# Use meaningful variable names
ISO_OUTPUT_PATH="/tmp/bazzite-lite.iso"

# Add comments for complex logic
# Download latest base image
podman pull "${BASE_IMAGE}"

# Use error handling
if ! command -v just &> /dev/null; then
    echo "Error: 'just' is not installed"
    exit 1
fi
```

### Containerfile

```dockerfile
# Use clear layer descriptions
RUN dnf install -y \
    kernel-modules-extra \
    nvidia-driver

# Group related operations
RUN dnf install -y package1 \
    && dnf install -y package2 \
    && dnf clean all
```

### Documentation

- Use clear, simple language
- Include examples where helpful
- Keep lines under 100 characters
- Use markdown formatting

---

## Testing Guidelines

### Before Submitting

```bash
# Run all checks
just check
just lint
just format

# Build container locally
sudo just build

# Test ISO build
sudo just build-iso

# Verify checksums
sha256sum -c SHA256SUMS
```

### Testing on Hardware

1. Write ISO to USB
2. Boot and test all features
3. Report any issues
4. Include system info in bug reports

---

## Areas for Contribution

### High Priority
- 🐛 Bug fixes (check Issues)
- 📖 Documentation improvements
- ✅ ISO testing on different hardware

### Medium Priority
- 🎨 UI/UX improvements to build system
- 🚀 Performance optimizations
- 🔧 Customization options

### Future Features
- See [Discussions](https://github.com/Th3Modder/Bazzite-Lite/discussions)

---

## Community & Support

### Communication Channels

- **GitHub Issues** - Bug reports & feature requests
- **GitHub Discussions** - Questions & ideas
- [Universal Blue Discord](https://discord.gg/WEu6BdFEtp) - Real-time chat
- [Universal Blue Forums](https://universal-blue.discourse.group/) - Community discussions

### Code of Conduct

We are committed to providing a welcoming and inclusive environment:

- ✅ Be respectful and constructive
- ✅ Welcome diverse perspectives
- ✅ Focus on the code, not the person
- ❌ No harassment or discrimination
- ❌ No spam or abuse

---

## Review Process

Your PR will be reviewed for:

1. **Code Quality** - Does it follow guidelines?
2. **Functionality** - Does it work as intended?
3. **Testing** - Is it adequately tested?
4. **Documentation** - Are changes documented?
5. **Compatibility** - Does it break anything?

---

## Getting Help

### Questions?

- 📖 Check [README.md](README.md)
- 📋 See [RELEASES.md](RELEASES.md) for downloads
- 🛠️ Review [PROJECT.md](PROJECT.md) for overview
- 💬 Ask in [Discussions](https://github.com/Th3Modder/Bazzite-Lite/discussions)

### Need to Report a Security Issue?

- **DO NOT** open a public issue
- Email maintainer directly
- Include detailed description
- Allow time for fix before disclosure

---

## Recognition

Contributors will be:
- ✨ Thanked in release notes
- 📝 Listed in CONTRIBUTORS.md (coming soon)
- 🏆 Recognized in community channels

---

## Additional Resources

- [Git Documentation](https://git-scm.com/doc)
- [GitHub Guides](https://guides.github.com/)
- [Bootc Documentation](https://bootc.dev/)
- [Universal Blue Docs](https://docs.ublue.it/)

---

## License

By contributing, you agree that your contributions will be licensed under the same Apache License 2.0 as the project.

---

**Thank you for making Bazzite-Lite better!** 🚀

*Questions? Open an [issue](https://github.com/Th3Modder/Bazzite-Lite/issues) or [discussion](https://github.com/Th3Modder/Bazzite-Lite/discussions).*
