Red=$'\e[1;31m'
Green=$'\e[1;32m'
Blue=$'\e[1;34m'
NOCOLOR=$'\033[0m'

echo "What is the password for$Blue Bob? $NOCOLOR"

read bobAnswer
if [[ "$bobAnswer" == "password" ]]; then
  echo "$Green Correct!$NOCOLOR"
else
    echo "$Red Incorrect$NOCOLOR"
    exit 0
fi

echo "What is the password for$Blue Jake? $NOCOLOR"

read jakeAnswer
if [[ "$jakeAnswer" == "iloveyou" ]]; then
  echo "$Green Correct!$NOCOLOR"
else
    echo "$Red Incorrect$NOCOLOR"
    exit 0
fi

echo "What is the password for$Blue Jane? $NOCOLOR"

read janeAnswer
if [[ "$janeAnswer" == "12345678" ]]; then
  echo "$Green Correct!$NOCOLOR"
else
    echo "$Red Incorrect$NOCOLOR"
    exit 0
fi
echo
echo "$Green You've completed the lab! Congratulations!$NOCOLOR"