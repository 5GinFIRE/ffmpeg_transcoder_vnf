# FFMpeg Transcoder VNF

This repository hosts a FFMpeg Video Transcoder VNF. It also contains an example NS descriptor to deploy this VNF.

## Download the VM Image

You can find the VM image [here](https://atnog.av.it.pt/~eduardosousa/ffmpeg_transcoder_image.qcow2).
The VM image should be uploaded with the following name: **ffmpeg_transcoder_image**

## Build the descriptors

To build the descriptors, you must run the following command:

~~~~
./build.sh
~~~~

After running this command, you should have two .tar.gz files:

~~~~
ffmpeg_transcoder_vnf.tar.gz
ffmpeg_transcoder_ns.tar.gz
~~~~

The **ffmpeg_transcoder_vnf.tar.gz**, which is the VNF Descriptor.
The **ffmpeg_transcoder_ns.tar.gz**, which is the NS Descriptor.

After they are built, you can upload them to OSM to be used.

## Configuring the FFMpeg Transcoder VNF

After the VNF is launched, you must configure the source of the video stream via OSM. The value you must pass is the complete URL.
