# convert all videos in a directory to 720x480 video mpg
# find . \( -name "*.mov" -or -name "*.mp4" -or -name "*.m4v" -or -name "*.mpg") -exec ffmpeg -i {} -s 720x480 {}.mpg


# combine movies
# ffmpeg -i concat"1.mpg|2.mpg" -c copy output.mp4

