#!/bin/sh


# rm -rf model*_r*;
# for ((j = 70; j < 101; j=( $j + 20) ))
# do
#   for ((k = 0; k < 101; k=( $k + 5) ))
#   do
#     rm -rf *_res;
#     for ((i = 0; i < 100; i=( $i + 1) ))
#     do
#       ./m1 $j 20 $k | tail -1 >> m1_res;
#     done
#     cat m1_res | awk -F ',' 'BEGIN { sum = 0; n = 0; }; {sum += $4; n++;}; END {printf("%d \n", sum / n);}' >> model1_r_$j;
#   done
# done

# for ((j = 70; j < 101; j=( $j + 20) ))
# do
#   for ((k = 0; k < 101; k=( $k + 5) ))
#   do
#     rm -rf *_res;
#     for ((i = 0; i < 100; i=( $i + 1) ))
#     do
#       ./m21 $j 20 $k | tail -1 >> m21_res;
#     done
#     cat m21_res | awk -F ',' 'BEGIN { sum = 0; n = 0; }; {sum += $2; n++;}; END {printf("%d \n", sum / n);}' >> model21_r_$j;
#   done
# done

for ((j = 70; j < 101; j=( $j + 20) ))
do
  for ((k = 0; k < 101; k=( $k + 5) ))
  do
    rm -rf *_res;
    for ((i = 0; i < 100; i=( $i + 1) ))
    do
      ./m22 $j 20 $k | tail -1 >> m22_res;
    done
    cat m22_res | awk -F ',' 'BEGIN { sum = 0; n = 0; }; {sum += $2; n++;}; END {printf("%d \n", sum / n);}' >> model22_r_$j;
  done
done

# for ((j = 70; j < 101; j=( $j + 20) ))
# do
#   for ((k = 0; k < 101; k=( $k + 5) ))
#   do
#     rm -rf *_res;
#     for ((i = 0; i < 100; i=( $i + 1) ))
#     do
#       ./m31 $j 20 $k | tail -1 >> m31_res;
#     done
#     cat m31_res | awk -F ',' 'BEGIN { sum = 0; n = 0; }; {sum += $2; n++;}; END {printf("%d \n", sum / n);}' >> model31_r_$j;
#   done
# done

# for ((j = 70; j < 101; j=( $j + 20) ))
# do
#   for ((k = 0; k < 101; k=( $k + 5) ))
#   do
#     rm -rf *_res;
#     for ((i = 0; i < 100; i=( $i + 1) ))
#     do
#       ./m32 $j 20 $k | tail -1 >> m32_res;
#     done
#     cat m32_res | awk -F ',' 'BEGIN { sum = 0; n = 0; }; {sum += $2; n++;}; END {printf("%d \n", sum / n);}' >> model32_r_$j;
#   done
# done
