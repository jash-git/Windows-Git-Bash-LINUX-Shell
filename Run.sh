#!/bin/bash
#《特拉·威利：未知星球》線上看-小鴨影音 ~ https://777tv.tw/vodplay/211866-1-1.html
mkdir part

# Set input video file name
input_file="videoplayback.mp4"

# Set segment duration in seconds
segment_duration=120

# Set output file name pattern
output_file_pattern="./part/part%04d.mp4"

# Calculate total number of segments
total_segments=45

# Split the video into segments
for i in $(seq 0 $((total_segments - 1))); do
start_time=$((i * segment_duration))
output_file=$(printf "$output_file_pattern" $i)
./ffmpeg.exe -i "$input_file" -ss $start_time -t $segment_duration -c copy "$output_file"
done