#!/bin/bash



DOIT() {
	LANGUAGE=$1
	TITLE=$2
	FIX=$(echo "($3 + 1)"| bc -l)
	echo $1 $2 $3 $FIX
#exit

	ffmpeg -y -i "Foundation.S01E01.The.Emperors.Peace.1080p.mkv" 		-map 0:s:$3  Foundation.S01E01.The.Emperors.Peace.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E02.Preparing.to.Live.1080p.mkv" 		-map 0:s:$3  Foundation.S01E02.Preparing.to.Live.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E03.The.Mathematicians.Ghost.1080p.mkv" -map 0:s:$3  Foundation.S01E03.The.Mathematicians.Ghost.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E04.Barbarians.at.the.Gate.1080p.mkv" 	-map 0:s:$FIX  Foundation.S01E04.Barbarians.at.the.Gate.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E05.Upon.Awakening.1080p.mkv" 			-map 0:s:$FIX  Foundation.S01E05.Upon.Awakening.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E06.Death.and.the.Maiden.1080p.mkv" 	-map 0:s:$FIX  Foundation.S01E06.Death.and.the.Maiden.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E07.Mysteries.and.Martyrs.1080p.mkv" 	-map 0:s:$FIX  Foundation.S01E07.Mysteries.and.Martyrs.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E08.The.Missing.Piece.1080p.mkv" 		-map 0:s:$FIX  Foundation.S01E08.The.Missing.Piece.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E09.The.First.Crisis.1080p.mkv" 		-map 0:s:$FIX  Foundation.S01E09.The.First.Crisis.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E10.The.Leap.1080p.mkv" 				-map 0:s:$FIX  Foundation.S01E10.The.Leap.1080p.$LANGUAGE.srt

	mv Foundation.S01E01.The.Emperors.Peace.1080p.$LANGUAGE.srt 		Foundation.S01E01.The.Emperors.Peace.1080p.$LANGUAGE.srt.double
	mv Foundation.S01E01.The.Emperors.Peace.1080p.$LANGUAGE.srt 		Foundation.S01E01.The.Emperors.Peace.1080p.$LANGUAGE.srt.double
	mv Foundation.S01E02.Preparing.to.Live.1080p.$LANGUAGE.srt 			Foundation.S01E02.Preparing.to.Live.1080p.$LANGUAGE.srt.double
	mv Foundation.S01E03.The.Mathematicians.Ghost.1080p.$LANGUAGE.srt 	Foundation.S01E03.The.Mathematicians.Ghost.1080p.$LANGUAGE.srt.double
	mv Foundation.S01E04.Barbarians.at.the.Gate.1080p.$LANGUAGE.srt 	Foundation.S01E04.Barbarians.at.the.Gate.1080p.$LANGUAGE.srt.double
	mv Foundation.S01E05.Upon.Awakening.1080p.$LANGUAGE.srt 			Foundation.S01E05.Upon.Awakening.1080p.$LANGUAGE.srt.double
	mv Foundation.S01E06.Death.and.the.Maiden.1080p.$LANGUAGE.srt 		Foundation.S01E06.Death.and.the.Maiden.1080p.$LANGUAGE.srt.double
	mv Foundation.S01E07.Mysteries.and.Martyrs.1080p.$LANGUAGE.srt 		Foundation.S01E07.Mysteries.and.Martyrs.1080p.$LANGUAGE.srt.double
	mv Foundation.S01E08.The.Missing.Piece.1080p.$LANGUAGE.srt 			Foundation.S01E08.The.Missing.Piece.1080p.$LANGUAGE.srt.double
	mv Foundation.S01E09.The.First.Crisis.1080p.$LANGUAGE.srt 			Foundation.S01E09.The.First.Crisis.1080p.$LANGUAGE.srt.double
	mv Foundation.S01E10.The.Leap.1080p.$LANGUAGE.srt 					Foundation.S01E10.The.Leap.1080p.$LANGUAGE.srt.double


	echo 'Foundation.S01E01.The.Emperors.Peace.1080p.mkv' > filename.txt
	burn_video.sh $LANGUAGE $TITLE
	echo 'Foundation.S01E02.Preparing.to.Live.1080p.mkv' > filename.txt
	burn_video.sh $LANGUAGE $TITLE
	echo 'Foundation.S01E03.The.Mathematicians.Ghost.1080p.mkv' > filename.txt
	burn_video.sh $LANGUAGE $TITLE
	echo 'Foundation.S01E04.Barbarians.at.the.Gate.1080p.mkv' > filename.txt
	burn_video.sh $LANGUAGE $TITLE
	echo 'Foundation.S01E05.Upon.Awakening.1080p.mkv' > filename.txt
	burn_video.sh $LANGUAGE $TITLE
	echo 'Foundation.S01E06.Death.and.the.Maiden.1080p.mkv' > filename.txt
	burn_video.sh $LANGUAGE $TITLE
	echo 'Foundation.S01E07.Mysteries.and.Martyrs.1080p.mkv' > filename.txt
	burn_video.sh $LANGUAGE $TITLE
	echo 'Foundation.S01E08.The.Missing.Piece.1080p.mkv' > filename.txt
	burn_video.sh $LANGUAGE $TITLE
	echo 'Foundation.S01E09.The.First.Crisis.1080p.mkv' > filename.txt
	burn_video.sh $LANGUAGE $TITLE
	echo 'Foundation.S01E10.The.Leap.1080p.mkv' > filename.txt
	burn_video.sh $LANGUAGE $TITLE

	rm filelist.txt
	echo "file 'out/Foundation.S01E01.The.Emperors.Peace.1080p.$LANGUAGE.mp4'" >> filelist.txt
	echo "file 'out/Foundation.S01E02.Preparing.to.Live.1080p.$LANGUAGE.mp4'" >> filelist.txt
	echo "file 'out/Foundation.S01E03.The.Mathematicians.Ghost.1080p.$LANGUAGE.mp4'" >> filelist.txt
	echo "file 'out/Foundation.S01E04.Barbarians.at.the.Gate.1080p.$LANGUAGE.mp4'" >> filelist.txt
	echo "file 'out/Foundation.S01E05.Upon.Awakening.1080p.$LANGUAGE.mp4'" >> filelist.txt
	echo "file 'out/Foundation.S01E06.Death.and.the.Maiden.1080p.$LANGUAGE.mp4'" >> filelist.txt
	echo "file 'out/Foundation.S01E07.Mysteries.and.Martyrs.1080p.$LANGUAGE.mp4'" >> filelist.txt
	echo "file 'out/Foundation.S01E08.The.Missing.Piece.1080p.$LANGUAGE.mp4'" >> filelist.txt
	echo "file 'out/Foundation.S01E09.The.First.Crisis.1080p.$LANGUAGE.mp4'" >> filelist.txt
	echo "file 'out/Foundation.S01E10.The.Leap.1080p.$LANGUAGE.mp4'" >> filelist.txt

	ffmpeg -y -safe 0 -f concat -i filelist.txt -c copy Foundation.S01.$LANGUAGE.mp4
}
# DOIT "ger" "German"
#DOIT "ita" "Italian"
#DOIT "tur" "Turkish"
#DOIT "ara" "Arabic"
#DOIT "rus" "Russian"
#DOIT "ukr" "Ukrain"
#DOIT "ara" "Arabic"

#DOIT "spa" "Spanish" 34
#DOIT "por" "Portugese" 28
DOIT "fre" "French" 13

#index=14|codec_type=subtitle|tag:language=fre|tag:title=French (France)
#index=35|codec_type=subtitle|tag:language=spa|tag:title=Spanish (Spain)
#index=29|codec_type=subtitle|tag:language=por
#-map 0:s:14 fre
#-map 0:s:29 por
#-map 0:s:35 spa

# ffprobe -show_entries stream=index,codec_type:stream_tags=language,title -of compact \
# 	'Foundation.S01E01.The.Emperors.Peace.1080p.mkv' > 01.lst
# ffprobe -show_entries stream=index,codec_type:stream_tags=language,title -of compact \
# 	'Foundation.S01E02.Preparing.to.Live.1080p.mkv' > 02.lst
# ffprobe -show_entries stream=index,codec_type:stream_tags=language,title -of compact \
# 	'Foundation.S01E03.The.Mathematicians.Ghost.1080p.mkv' > 03.lst
# ffprobe -show_entries stream=index,codec_type:stream_tags=language,title -of compact \
# 	'Foundation.S01E04.Barbarians.at.the.Gate.1080p.mkv' > 04.lst
# ffprobe -show_entries stream=index,codec_type:stream_tags=language,title -of compact \
# 	'Foundation.S01E05.Upon.Awakening.1080p.mkv' > 05.lst
# ffprobe -show_entries stream=index,codec_type:stream_tags=language,title -of compact \
# 	'Foundation.S01E06.Death.and.the.Maiden.1080p.mkv' > 06.lst
# ffprobe -show_entries stream=index,codec_type:stream_tags=language,title -of compact \
# 	'Foundation.S01E07.Mysteries.and.Martyrs.1080p.mkv' > 07.lst
# ffprobe -show_entries stream=index,codec_type:stream_tags=language,title -of compact \
# 	'Foundation.S01E08.The.Missing.Piece.1080p.mkv' > 08.lst
# ffprobe -show_entries stream=index,codec_type:stream_tags=language,title -of compact \
# 	'Foundation.S01E09.The.First.Crisis.1080p.mkv' > 09.lst
# ffprobe -show_entries stream=index,codec_type:stream_tags=language,title -of compact \
# 	'Foundation.S01E10.The.Leap.1080p.mkv' > 10.lst
