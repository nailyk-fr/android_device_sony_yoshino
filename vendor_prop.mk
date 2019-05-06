#
# Copyright (C) 2017 The LineAgeOS Project
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
#

### USB
PRODUCT_PROPERTY_OVERRIDES += \
    sys.usb.controller=a800000.dwc3 \
    sys.usb.rndis.func.name=gsi \
    persist.sys.usb.config.extra=none

# OpenGLES version
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610

### SENSORS configuration
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sensors.max_accel_rate=false \
    ro.vendor.sensors.max_gyro_rate=false \
    ro.vendor.sensors.max_mag_rate=false \
    ro.vendor.sensors.max_geomag_rotv=50

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sdk.sensors.gestures=false \
    ro.vendor.sensors.amd=false \
    ro.vendor.sensors.bte=false \
    ro.vendor.sensors.cmc=false \
    ro.vendor.sensors.dev_ori=true \
    ro.vendor.sensors.dpc=false \
    ro.vendor.sensors.facing=false \
    ro.vendor.sensors.fast_amd=false \
    ro.vendor.sensors.fns=false \
    ro.vendor.sensors.game_rv=true \
    ro.vendor.sensors.georv=true \
    ro.vendor.sensors.gravity=true \
    ro.vendor.sensors.gtap=false \
    ro.vendor.sensors.iod=false \
    ro.vendor.sensors.laccel=true \
    ro.vendor.sensors.mot_detect=true \
    ro.vendor.sensors.multishake=false \
    ro.vendor.sensors.orientation=true \
    ro.vendor.sensors.pam=false \
    ro.vendor.sensors.pedometer=false \
    ro.vendor.sensors.pmd=false \
    ro.vendor.sensors.proximity=true \
    ro.vendor.sensors.pug=false \
    ro.vendor.sensors.qheart=false \
    ro.vendor.sensors.qmd=false \
    ro.vendor.sensors.rawdata_mode=false \
    ro.vendor.sensors.rmd=false \
    ro.vendor.sensors.rotvec=true \
    ro.vendor.sensors.scrn_ortn=false \
    ro.vendor.sensors.smd=true \
    ro.vendor.sensors.sta_detect=true \
    ro.vendor.sensors.step_counter=true \
    ro.vendor.sensors.step_detector=true \
    ro.vendor.sensors.tap=false \
    ro.vendor.sensors.tilt=false \
    ro.vendor.sensors.tilt_detector=true \
    ro.vendor.sensors.vmd=false \
    ro.vendor.sensors.wrist_tilt=false \
    ro.vendor.sensors.wu=true \
    ro.vendor.qf_use_report_period=false

### AANC mixer tuning
PRODUCT_PROPERTY_OVERRIDES += \
    persist.aanc.enable=true

### BLUETOOTH
PRODUCT_PROPERTY_OVERRIDES += \
    bt.max.hfpclient.connections=1 \
    vendor.qcom.bluetooth.soc=cherokee \
    ro.bluetooth.library_name=libbluetooth_qti.so \
    ro.vendor.btstack.hfp.ver=1.7 \
    ro.vendor.bt.bdaddr_path="/data/vendor/etc/bluetooth_bdaddr" \
    persist.vendor.bt.enable.splita2dp=false \
    persist.vendor.btstack.a2dp_offload_cap=false

### AUDIO
# Reduce client buffer size for fast audio output tracks
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1

# Low latency audio buffer size in frames
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio_hal.period_size=192

# Audio fluence
# fluencetype can be "fluence" or "fluencepro" or "none"
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.audio.sdk.fluencetype=fluence \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.fluence.voicecall=true\
    persist.vendor.audio.fluence.voicerec=false

# Disable tunnel encoding
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.tunnel.encode=false

# Disable RAS Feature by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio.ras.enabled=false

# Buffer size in kbytes for compress offload playback
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.offload.buffer.size.kb=32

# Disable offload audio video playback by default
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.video=true

# Enable audio track offload by default
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.offload.track.enable=true

# Enable music through deep buffer
PRODUCT_PROPERTY_OVERRIDES += \
    audio.deep_buffer.media=true

#enable voice path for PCM VoIP by default
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.voice.path.for.pcm.voip=true

# Enable multi channel aac through offload
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.offload.multiaac.enable=true

#Enable DS2, Hardbypass feature for Dolby
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.dolby.ds2.enabled=false\
    vendor.audio.dolby.ds2.hardbypass=false

# Enable Multiple offload session
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.offload.multiple.enabled=true

#Disable Compress passthrough playback
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.offload.passthrough=false

#Disable surround sound recording
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.audio.sdk.ssr=false

# Enable dsp gapless mode by default
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.offload.gapless.enabled=true

# Enable pbe effects
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.safx.pbe.enabled=true

# Parser input buffer size(256kb) in byte stream mode
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.parser.ip.buffer.size=262144

# Flac sw decoder 24 bit decode capability
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.flac.sw.decoder.24bit=true

# Split a2dp DSP supported encoder list
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxhd-aac

# Enable software decoders for ALAC and APE
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.use.sw.alac.decoder=true

PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.use.sw.ape.decoder=true

# Enable hw aac encoder by default
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.hw.aac.encoder=true

#Disable FM a2dp concurrency
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.fm.a2dp.conc.disabled=true

# Audio becoming noisy intent broadcast delay
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.noisy.broadcast.delay=600

# Offload pausetime out duration to 3 secs to inline with other outputs
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.offload.pstimeout.secs=3

### SDM
# Disable QC HDR and cabl
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.disable_hdr_lut_gen=1 \
    ro.vendor.display.cabl=2

# Assertive display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qcom.ad=1 \
    ro.qcom.ad.calib.data=/vendor/etc/ad_calib.cfg \
    ro.qcom.ad.sensortype=2

# Enable display default color mode
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.enable_default_color_mode=true

# Disable HDR
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.hwc_disable_hdr=1 \
    vendor.vidc.enc.disable.pq=true

# Touch
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.backlight_on=1

# SD Encryption supported
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sdcrypt.supported=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.ims_call_transfer=true \
    persist.vendor.radio.mt_sms_ack=19 \
    persist.vendor.radio.report_codec=1 \
    persist.vendor.data.iwlan.enable=true \
    persist.vendor.service.bdroid.ssrlvl=3 \
    persist.vendor.radio.block_allow_data=1 \
    persist.vendor.ims.vcel_rtcp_report=5

# Power save functionality for modem
# FIXME This completely breaks SIM unlock
#
#    persist.vendor.radio.apm_sim_not_pwdn=1 \
# -> don't power down sim in airplane mode
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.add_power_save=1 \
    persist.vendor.radio.oem_socket=true

# Radio IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.ims_volte_enable=1 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1

# CAMERA
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.HAL3.enabled=1

# DISPLAY_HDR
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qcom.hdr.config=/vendor/etc/hdr_tm_config.xml

# Thermal
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.thermal=somc
