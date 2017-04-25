#!/bin/bash

FILES=(
#02
# "/Users/aviaizenman/Desktop/Data2Analyze/02/01162017_1 02"
# "/Users/aviaizenman/Desktop/Data2Analyze/02/02032017_01 02"
# "/Users/aviaizenman/Desktop/Data2Analyze/02/02102017_01 02"
# "/Users/aviaizenman/Desktop/Data2Analyze/02/02162017_02 02"
# "/Users/aviaizenman/Desktop/Data2Analyze/02/03022017_03 02"
# "/Users/aviaizenman/Desktop/Data2Analyze/02/03162017_4 02"
# # #"/Users/aviaizenman/Desktop/Data2Analyze/02/03162017_04 02" check this directory
#  "/Users/aviaizenman/Desktop/Data2Analyze/02/03302017_05 02"
# #09
"/Users/aviaizenman/Desktop/Data2Analyze/09/01272017_1 09"
"/Users/aviaizenman/Desktop/Data2Analyze/09/01272017_11 09"
"/Users/aviaizenman/Desktop/Data2Analyze/09/02102017_01 09"
"/Users/aviaizenman/Desktop/Data2Analyze/09/02242017_02 09"
"/Users/aviaizenman/Desktop/Data2Analyze/09/03102017_03 09"
"/Users/aviaizenman/Desktop/Data2Analyze/09/03242017_03 09"
"/Users/aviaizenman/Desktop/Data2Analyze/09/04072017_05 09"
#
# #10
"/Users/aviaizenman/Desktop/Data2Analyze/10/01292017_1 10"
"/Users/aviaizenman/Desktop/Data2Analyze/10/02122017_02 10"
"/Users/aviaizenman/Desktop/Data2Analyze/10/02262017_03 10"
"/Users/aviaizenman/Desktop/Data2Analyze/10/03122017_04 10"
"/Users/aviaizenman/Desktop/Data2Analyze/10/04022017_5 10"
#
# #12
"/Users/aviaizenman/Desktop/Data2Analyze/12/04052017_5 12"
"/Users/aviaizenman/Desktop/Data2Analyze/12/03222017_4 12"
"/Users/aviaizenman/Desktop/Data2Analyze/12/02222017_02 12"
"/Users/aviaizenman/Desktop/Data2Analyze/12/02082017_02 12"
"/Users/aviaizenman/Desktop/Data2Analyze/12/01312017_1 12"
#
# #22
 "/Users/aviaizenman/Desktop/Data2Analyze/22/03102017_01 22"


)
for ((i = 0; i < ${#FILES[@]}; i++))
do
  echo "==== Executing ${FILES[$i]} ===="
  T="$(date +%s)"
  #python preprocess_eyedata.py ${FILES[$i]}
  python analyze_OSSS_run.py ${FILES[$i]}
  T="$(($(date +%s)-T))"
  echo "==== Completed in ${T}s ==="
done
