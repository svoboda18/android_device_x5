# Device Tree for Building Lineage OS 14.1
- Suitable Also For AOSP.

# Target Device: DOOGEE X5
- MT6580 Chipset
- Marshmallow 6.0 (3.18.19 Kernel)
- 5,0" 1280x720 display
- 2400MAh battery capacity
- 1GB RAM / 8GB ROM

# Whats Working:
- Cameras(Both with 8MP/2MP).
- Audio/Audio in calls.
- Bluetooth.
- GPS.
- Video Player/Streaming.
- HW Composer/Gralloc.
- Mic.
- RIL/FM Radio.
- WiFi/Hotspot.
- Screen/Video Recording (Without Color issues).
- Both storages (SD and Internal) mounting in both Phone and PC.
- Gapps.
- MicroG. (After Sigin.Spoof Patch)
- SafteyNet Got Baypassed.

# Whats Not Working:
- Some Apps Will Give Graphics Gilitches.
- Some Media Codecs issues.

# Next Fixes:
- Fix The EGL Based Gilitches (libhwui and fw/native).

# Changes Tarker:
- Fixed BatteryStates Service Errors.
- Fixed NetdConnector Fails.
- Fixed MediaPlayer JNI Errors.
- Fixed MTK SMI Errors.
- Fixed KernelWakeLocoReader Errors.
- Fixed Mnld Errors.
- Added Camera Correct Permission.
- Pervent Log From Spamming Audio Blobs.
- Fixed libhwui Thats Makes Apps Crash.
- Corrected wpa_supplicant_8 (Fix Cant Connect Hidden SSID).
- Fixed Battery Voltages.
- Stabilized RIL.
- Cleans boot.img For Nougat.

# For LineageOMS
Tow Conditions , In Order To Get Good Results:
- Most Be On Pure LineageOS Source ( Recently Synced & Un-Patched/Locally Changed. ).
- OMS Patches Must Be On: `` $REPO/device/*/*/patches/oms ``

Start Patching, By:
- `` cd device/doogee/x5/patches/oms ``
- `` bash do.sh ``

# Credits:
| People Who Helped/Contributed : |
| :-------|
| pedropereira22 | 

| seluce |
| andrey167 |
