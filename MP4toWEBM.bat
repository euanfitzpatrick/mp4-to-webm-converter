set ffm="C:\Program Files\Common Files\ffmpeg\bin\ffmpeg.exe"
set frmt=*.mp4
for %%f in (%frmt%) do %ffm% -i "%%f" -acodec libvorbis -ac 1 -ab 96k -ar 48000 -b:v 1100k -maxrate 1100k -bufsize 1835k "%%f.WebM"
mkdir old
move %frmt% old\
@echo **********************************
@echo **** Press any key to finish *****
@echo **********************************
pause
