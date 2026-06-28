IMAGE_NAME := "Bazzite-Lite"
REPO_ORGANIZATION := "Th3Modder"
IMAGE_DESC := "Bazzite GNOME Lite"
IMAGE_KEYWORDS := "linux,bazzite,gnome,fedora,bootc"
IMAGE_LOGO_URL := "https://avatars.githubusercontent.com/u/120078124"
DEFAULT_TAG := "latest"
BIB_IMAGE := "quay.io/centos-bootc/bootc-image-builder:latest"
check:
    @just --fmt --check
