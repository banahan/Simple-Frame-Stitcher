cd Frames_For_Stitching
ls *.jpg > frames-list.txt 
mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:aspect=16/9:vbitrate=8000000 -vf scale=900:900 -o Stitched_Frames.mp4 -mf type=jpeg:fps=10 mf://@frames-list.txt
