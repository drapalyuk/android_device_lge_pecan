#!/bin/sh

# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=pecan
MANUFACTURER=lge

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/wl
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware

# Sensors
adb pull /system/lib/hw/sensors.pecan.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/lights.pecan.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/bin/ami304d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# 3D
adb pull /system/lib/egl/egl.cfg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/libgsl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware

# Camera
adb pull /system/lib/liboemcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmipl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# Wifi
adb pull /system/etc/wl/nvram.txt ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/wl
adb pull /system/etc/wl/rtecdc.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/wl
adb pull /system/etc/wl/rtecdc-apsta.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/wl
adb pull /system/etc/wl/rtecdc-mfgtest.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/wl

# Audio
adb pull /system/lib/liba2dp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libaudioeq.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# LGE services
adb pull /system/bin/qmuxd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# rmt_storage
adb pull /system/bin/rmt_storage ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# port-bridge
adb pull /system/bin/port-bridge ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# wipeirface
adb pull /system/bin/wiperiface ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# Touchscreen firmware updater
adb pull /system/bin/tsdown ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/etc/MELFAS_FIRM.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc

# netmgr
adb pull /system/bin/netmgrd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/lib/libdsutils.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libnetmgr.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# RIL
adb pull /system/lib/libril-qc-1.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liboncrpc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdsm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libqueue.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdiag.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libauth.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libnv.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libpbmlib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libwms.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libwmsts.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmgsdilib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libgsdi_exp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libgstk_exp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libril-qcril-hook-oem.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liboem_rapi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libsnd.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libqmi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdll.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liblgeat.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liblgdrm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liblgdrmwbxml.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liblgerft.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libbcmwl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdss.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/bin/rild ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/lib/libril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libloc-rpc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libloc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcommondefs.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# OMX
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAacDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAacEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAdpcmDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrRtpDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrwbDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxMp3Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelp13Enc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelpDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxWmaDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxWmvDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxCore.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# Bluetooth
adb pull /system/bin/BCM43291A0_003.001.013.0060.Pecan.hcd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries

# Sensors
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/sensors.pecan.so:system/lib/hw/sensors.pecan.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/lights.pecan.so:system/lib/hw/lights.pecan.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/ami304d:system/bin/ami304d \\

# 3D
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libgsl.so:system/lib/libgsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\

# Camera
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \\

# Wifi
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/wl/nvram.txt:system/etc/wl/nvram.txt \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin \\

# Audio
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \\

# LGE services
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/qmuxd:system/bin/qmuxd \\

# rmt_storage
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/rmt_storage:system/bin/rmt_storage \\

# port-bridge
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/port-bridge:system/bin/port-bridge \\

# wipeirface
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/wiperiface:system/bin/wiperiface \\

# Touchscreen firmware updater
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/tsdown:system/bin/tsdown \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/MELFAS_FIRM.bin:system/etc/MELFAS_FIRM.bin \\

# netmgr
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/netmgrd:system/bin/netmgrd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libnetmgr.so:system/lib/libnetmgr.so \\

# RIL
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdsm.so:system/lib/libdsm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libqueue.so:system/lib/libqueue.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdiag.so:system/lib/libdiag.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libauth.so:system/lib/libauth.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcm.so:system/lib/libcm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libnv.so:system/lib/libnv.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libwms.so:system/lib/libwms.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libsnd.so:system/lib/libsnd.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libqmi.so:system/lib/libqmi.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdll.so:system/lib/libdll.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liblgeat.so:system/lib/liblgeat.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liblgdrm.so:system/lib/liblgdrm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liblgdrmwbxml.so:system/lib/liblgdrmwbxml.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liblgerft.so:system/lib/liblgerft.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libbcmwl.so:system/lib/libbcmwl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdss.so:system/lib/libdss.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/rild:system/bin/rild \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril.so:system/lib/libril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libloc-rpc.so:system/lib/libloc-rpc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libloc.so:system/lib/libloc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \\

# OMX
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxCore.so:system/lib/libOmxCore.so \\

# Bluetooth
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/BCM43291A0_003.001.013.0060.Pecan.hcd:system/bin/BCM43291A0_003.001.013.0060.Pecan.hcd \\

EOF

./setup-makefiles.sh
