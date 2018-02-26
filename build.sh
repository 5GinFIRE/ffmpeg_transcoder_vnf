#!/bin/bash

mkdir ffmpeg_transcoder_vnf
cp -r vnf/* ffmpeg_transcoder_vnf
cp -r charm ffmpeg_transcoder_vnf
cd ffmpeg_transcoder_vnf
find * -type f -print | while read line; do md5sum $line >> checksums.txt; done
cd ..
tar -czvf ffmpeg_transcoder_vnf.tar.gz ffmpeg_transcoder_vnf
rm -rf ffmpeg_transcoder_vnf

mkdir ffmpeg_transcoder_ns
cp -r ns/* ffmpeg_transcoder_ns
cd ffmpeg_transcoder_ns
find * -type f -print | while read line; do md5sum $line >> checksums.txt; done
cd ..
tar -czvf ffmpeg_transcoder_ns.tar.gz ffmpeg_transcoder_ns
rm -rf ffmpeg_transcoder_ns
