"opencv\build\x64\vc15\bin\opencv_traincascade.exe" -data cascade/ -vec pos.vec -bg neg.txt -w 24 -h 24 -precalcValBufSize 2000 -precalcIdxBufSize 2000 -numPos %1 -numNeg %1 -numStages %2 -maxFalseAlarmRate 0.3 -minHitRate 0.999
copy cascade\cascade.xml object_data.xml