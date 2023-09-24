echo "----- Instructions -----"
echo
echo "Each time you click enter, more hints will be shown. To exit, press 'q' and enter. To start, press enter"
echo 
read answer

if [[ "$answer" == "q" ]]; then
  echo "Exiting"
  exit 0
fi

echo "Remember, we're trying to find the data for data.txt.aes, and bruteforce.py tries to brute force every possible password for the file. "
read answer

if [[ "$answer" == "q" ]]; then
  echo "Exiting"
  exit 0
fi

echo "You can run python files on Linux using python3 pythonfilenamehere.py"
read answer

if [[ "$answer" == "q" ]]; then
  echo "Exiting"
  exit 0
fi

echo "----Answer----"
echo "To complete this lab, you have to run:"
echo "1. python3 bruteforce.py"
echo "2. Wait a minute, it will find the password
