ARCH="x86_64"

ISO_VER="20220123"
ISO_ED="base"
ISO_INIT="runit"
ISO_FN="artix-${ISO_ED}-${ISO_INIT}-${ISO_VER}-${ARCH}.iso"
ISO_URL="https://iso.artixlinux.org/iso/${ISO_FN}"

FRTCP_BLD="21082800"
FRTCP_VER="1.25.3-2"
FRTCP_FN="fakeroot-tcp-${FRTCP_VER}-${ARCH}.pkg.tar.zst"
FRTCP_URL="https://github.com/yuk7/arch-prebuilt/releases/download/${FRTCP_BLD}/${FRTCP_FN}"

GLIBC_VER="2.35-2"
GLIBC_FN="glibc-linux4-${GLIBC_VER}-${ARCH}.pkg.tar.zst"
GLIBC_URL="https://repo.archlinuxcn.org/${ARCH}/${GLIBC_FN}"

LNCR_BLD="21082800"
LNCR_ZIP="icons.zip"
LNCR_FN="Artix.exe"
LNCR_URL="https://github.com/yuk7/wsldl/releases/download/${LNCR_BLD}/${LNCR_ZIP}"

PAC_PKGS="base ${EXTRA_PKGS}"
