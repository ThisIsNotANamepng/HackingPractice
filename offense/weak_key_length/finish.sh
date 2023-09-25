Red=$'\e[1;31m'
Green=$'\e[1;32m'
Blue=$'\e[1;34m'
NOCOLOR=$'\033[0m'

echo "What is the password in$Blue data.txt? $NOCOLOR"

read passAnswer
if [[ "$passAnswer" == "super*" ]]; then
  echo "$Green Correct!$NOCOLOR"
else
    echo "$Red Incorrect$NOCOLOR"
    exit 0
fi

echo "$GREEN Congradulations! You've done it!$NOCOLOR"

echo "Remember, while brute forcing the password in this situation was easy, it gets much slower to guess te password as the passweor dincreases in length."
echo "Also consider that you're likely running this on a home laptop/desktop, not a sophistiocated supercomputer designed by specialoists to break cryptography. In order to stay safe, computer scientists need to realize the requirments for the passwords they set."
echo "Consider using passwords of 8-12 characters long, if they are random enough and you use a modern encryption algorithm (such as AES256) it will be impossible to break the password in a reasonable amount of time."