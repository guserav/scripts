WINDOW=${1:-10}
START=${2:-1}
END=${3:-2}
for i in `seq $START $END`
do
    number_f=$(printf "%02d" $i)
    tmux send-keys -t $WINDOW.$((i - 1)) $number_f
done
