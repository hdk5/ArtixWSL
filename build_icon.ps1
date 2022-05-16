#requires -PSEdition Core

$WSLDL_BLD = "22020900"
$WSLDL_FN = "wsldl.exe"
$WSLDL_URL = "https://github.com/yuk7/wsldl/releases/download/$WSLDL_BLD/$WSLDL_FN"
$WSLDL_SHA256 = "06C0451582F545083778934CF48604080C222BF1F1DFD1B6B90E4019A5306539"

$RCEDIT_BLD = "v1.1.1"
$RCEDIT_FN = "rcedit-x64.exe"
$RCEDIT_URL = "https://github.com/electron/rcedit/releases/download/$RCEDIT_BLD/$RCEDIT_FN"
$RCEDIT_SHA256 = "02E8E8C5D430D8B768980F517B62D7792D690982B9BA0F7E04163CBC1A6E7915"

Invoke-WebRequest $WSLDL_URL -OutFile $WSLDL_FN
Invoke-WebRequest $RCEDIT_URL -OutFile $RCEDIT_FN

if (
    (Get-FileHash $WSLDL_FN -Algorithm SHA256).Hash -ne $WSLDL_SHA256 -or
    (Get-FileHash $RCEDIT_FN -Algorithm SHA256).Hash -ne $RCEDIT_SHA256
) {
    throw "SHA256 mismatch"
}

& .\$RCEDIT_FN $WSLDL_FN --set-icon icon.ico

Move-Item -Force -Path $WSLDL_FN -Destination Artix.exe
