#!/bin/bash

score=0

while IFS=, read -r question answer; do
    echo "$question"
    read -p "Your answer: " user_answer

    if [ "$user_answer" == "$answer" ]; then
        echo "Correct!"
        ((score++))
    else
        echo "Incorrect. The correct answer is: $answer"
    fi

done < questions.txt

echo "Quiz completed. Your final score is $score out of $(wc -l < questions.txt)."


