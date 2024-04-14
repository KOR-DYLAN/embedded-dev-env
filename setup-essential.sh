#!/bin/bash

# essential
pkg="${pkg} build-essential gdb libssl-dev cmake meson mkisofs tree net-tools git unzip curl ssh"
# vim
pkg="${pkg} vim neovim universal-ctags cscope"
# 32bit
pkg="${pkg} gcc-multilib g++-multilib"
# llvm
pkg="${pkg} llvm lldb clang"
# rust
pkg="${pkg} rust-all rust-clippy rust-src rustfmt rust-gdb"
# ncurses
pkg="${pkg} libncurses5 libncurses5-dev libncursesw5 libncursesw5-dev"
# kbuild
pkg="${pkg} bison flex u-boot-tools"
# x11
pkg="${pkg} libx11-dev libx11-6:i386"
# python
pkg="${pkg} python3-dev python2.7-dev"
# language
pkg="${pkg} font-manager language-pack-en language-pack-ko"
# qemu
pkg="${pkg} qemu qemu-system qemu-efi qemu-kvm qemu-system-common qemu-system-data qemu-system-gui qemubuilder qemu-user qemu-user-binfmt qemu-utils"
# qemu-arm
pkg="${pkg} qemu-system-arm qemu-efi-arm qemu-efi-aarch64"
# i386
pkg="${pkg} libc6:i386 libncurses5:i386 libstdc++6:i386"

# add i386 repo
echo "sudo dpkg --add-architecture i386"
sudo dpkg --add-architecture i386

# update & upgrade
echo "sudo apt update -y && sudo apt upgrade -y"
sudo apt update -y && sudo apt upgrade -y

# package install
echo "sudo apt install ${pkg}"
sudo apt install ${pkg} -y

echo "set .bashrc"
echo "" >> ~/.bashrc
echo "# alias" >> ~/.bashrc
echo alias vi=\"nvim\" >> ~/.bashrc
echo alias vim=\"nvim\" >> ~/.bashrc
echo alias sudo=\"sudo \" >> ~/.bashrc
source ~/.bashrc
