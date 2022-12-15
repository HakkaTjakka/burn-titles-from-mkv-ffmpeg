#!/bin/bash


#index=14|codec_type=subtitle|tag:language=fre|tag:title=French (France)
#index=35|codec_type=subtitle|tag:language=spa|tag:title=Spanish (Spain)
#index=29|codec_type=subtitle|tag:language=por
#-map 0:s:14 fre
#-map 0:s:29 por
#-map 0:s:35 spa

DOIT2() {
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
#DOIT2 "fre" "French" 13

DOIT() {
	LANGUAGE=$1
	TITLE=$2
	echo $1 $2
#	exit 

	ffmpeg -y -i "Foundation.S01E01.The.Emperors.Peace.1080p.mkv" 		-map 0:s:m:language:$LANGUAGE  Foundation.S01E01.The.Emperors.Peace.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E02.Preparing.to.Live.1080p.mkv" 		-map 0:s:m:language:$LANGUAGE  Foundation.S01E02.Preparing.to.Live.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E03.The.Mathematicians.Ghost.1080p.mkv" -map 0:s:m:language:$LANGUAGE  Foundation.S01E03.The.Mathematicians.Ghost.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E04.Barbarians.at.the.Gate.1080p.mkv" 	-map 0:s:m:language:$LANGUAGE  Foundation.S01E04.Barbarians.at.the.Gate.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E05.Upon.Awakening.1080p.mkv" 			-map 0:s:m:language:$LANGUAGE  Foundation.S01E05.Upon.Awakening.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E06.Death.and.the.Maiden.1080p.mkv" 	-map 0:s:m:language:$LANGUAGE  Foundation.S01E06.Death.and.the.Maiden.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E07.Mysteries.and.Martyrs.1080p.mkv" 	-map 0:s:m:language:$LANGUAGE  Foundation.S01E07.Mysteries.and.Martyrs.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E08.The.Missing.Piece.1080p.mkv" 		-map 0:s:m:language:$LANGUAGE  Foundation.S01E08.The.Missing.Piece.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E09.The.First.Crisis.1080p.mkv" 		-map 0:s:m:language:$LANGUAGE  Foundation.S01E09.The.First.Crisis.1080p.$LANGUAGE.srt
	ffmpeg -y -i "Foundation.S01E10.The.Leap.1080p.mkv" 				-map 0:s:m:language:$LANGUAGE  Foundation.S01E10.The.Leap.1080p.$LANGUAGE.srt

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
# DOIT "ita" "Italian"
# DOIT "tur" "Turkish"

#DOIT "ara" "Arabic"
#DOIT "rus" "Russian"
#DOIT "ukr" "Ukrain"
#DOIT "bul" "Bulgarian"
#DOIT "dan" "Danish"
#DOIT "est" "Estonian"
#DOIT "fin" "Finnish"


DOIT "heb" "Hebrew"
DOIT "hin" "Hindi"
DOIT "hun" "Hungarian"
DOIT "ind" "Indonesian"
DOIT "jpn" "Japanese"
DOIT "kor" "Korean"
DOIT "lav" "Latvian"
DOIT "lit" "Lithuanian"
DOIT "nor" "Norwegian"
DOIT "pol" "Polish"
DOIT "slo" "Slovenian"
DOIT "swe" "Swedish"
DOIT "tam" "Tamil"
DOIT "tel" "Telugu"
DOIT "tha" "Thai"
DOIT "vie" "Vietnamese"

