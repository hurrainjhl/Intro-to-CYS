# Bash Quiz Script

This repository contains a simple Bash script that simulates a basic quiz. The script reads questions and answers from a file named `questions.txt` and interacts with the user to validate their answers, displaying the final score at the end.

## Files

- `quiz_script.sh`: The main Bash script for running the quiz.
- `questions.txt`: A file containing the questions and their correct answers.

## Usage

1. Clone the repository or download the files to your local machine.
2. Ensure you have both `quiz_script.sh` and `questions.txt` in the same directory.

### Making the Script Executable

Open a terminal and navigate to the directory containing the files. Run the following command to make the script executable:

```bash
chmod +x quiz_script.sh
```
## Running the Script
To start the quiz, execute the script with:

``` bash

./quiz_script.sh
```
The script will read each question from questions.txt, prompt you for an answer, and display whether your answer is correct or not. 
At the end of the quiz, your total score will be displayed.

Make sure you have a file named "questions.txt" with each line containing a question followed by a comma and the correct answer. For example:


What is the capital of France?,Paris
Who is the president of the United States?,Joe Biden
...


Save this script to a file, make it executable with chmod +x script_name.sh, and then run it with ./script_name.sh.

