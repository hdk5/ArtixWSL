CWD=$(realpath $(dirname $0))

ARCH="x86_64"

ISO_VER="20220123"
ISO_ED="base"
ISO_INIT="runit"
ISO_FN="artix-${ISO_ED}-${ISO_INIT}-${ISO_VER}-${ARCH}.iso"
ISO_URL="https://iso.artixlinux.org/iso/${ISO_FN}"
ISO_SHA256="130393975175be93a927d32714f664840e2e4b2fbace3ee0af95a774c6ce6246"

FRTCP_BLD="21082800"
FRTCP_VER="1.25.3-2"
FRTCP_FN="fakeroot-tcp-${FRTCP_VER}-${ARCH}.pkg.tar.zst"
FRTCP_URL="https://github.com/yuk7/arch-prebuilt/releases/download/${FRTCP_BLD}/${FRTCP_FN}"
FRTCP_SHA256="702a2c85989e652ce1dacd923717fddf90a4738a520c476b7219309aedefe3ee"

GLIBC_VER="2.35-2"
GLIBC_FN="glibc-linux4-${GLIBC_VER}-${ARCH}.pkg.tar.zst"
GLIBC_URL="https://repo.archlinuxcn.org/${ARCH}/${GLIBC_FN}"
GLIBC_SHA256="0f4e89387e71426fb193e4a68fe01bd8400f50ee89bb70963aa881d296b479d5"

LNCR_BLD="22020900"
LNCR_ZIP="icons.zip"
LNCR_FN="Artix.exe"
LNCR_URL="https://github.com/yuk7/wsldl/releases/download/${LNCR_BLD}/${LNCR_ZIP}"
LNCR_SHA256="d270a65a5dda491d5d566ad5f3bbb1e507caa714f5e57e139a2cc25abd507948"

pushd ${CWD}/download
curl -L ${ISO_URL} -o artix.iso
curl -L ${FRTCP_URL} -o fakeroot-tcp.pkg
curl -L ${GLIBC_URL} -o glibc-linux4.pkg
curl -L ${LNCR_URL} -o wsldl.zip

cat <<EOF | sha256sum --check
${ISO_SHA256} artix.iso
${FRTCP_SHA256} fakeroot-tcp.pkg
${GLIBC_SHA256} glibc-linux4.pkg
${LNCR_SHA256} wsldl.zip
EOF
