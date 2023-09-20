echo "----- Instructions -----"
echo
echo "Each time you click enter, more hints will be shown. To exit, press 'q' and enter. To start, press enter"
echo 
read answer

if [[ "$answer" == "q" ]]; then
  echo "Exiting"
  exit 0
fi

echo "Password are stored in what's called a "hash". A hash is a string put through a hashing algorithm. Hashing algorithms encrypt the string in a way that makes them unable to be read. To find the hash for a string you can put it through a hashing algorithm, but there's no way to reverse the process, so in order to find out what the beginning string for a hash is, you have to try every possible combination of numbers, letters, and special characters to try to guess the password. This is what's called brute forcing. "
echo "In a normal situation, such as when a user tries to log into a computer, the computer takes the user's password they just entered, hashes it, and compares the hash with the one it has stored as being the user's correct password. If they're different, the password the user isn't correct. "
read answer

if [[ "$answer" == "q" ]]; then
  echo "Exiting"
  exit 0
fi

echo "The passwords on a Linux system is stored in /etc/shadow"
read answer

if [[ "$answer" == "q" ]]; then
  echo "Exiting"
  exit 0
fi

echo "John requires that you export the shadow file with the 'unshadow' command"
read answer

if [[ "$answer" == "q" ]]; then
  echo "Exiting"
  exit 0
fi

echo "John gets a little confused sometimes. To help him out, try telling him --format=crypt"
read answer

if [[ "$answer" == "q" ]]; then
  echo "Exiting"
  exit 0
fi

echo "----Answer----"
echo "To complete this lab, you have to run:"
echo "1. unshadow /etc/passwd /etc/shadow > mypassword #Or some other combined password file name"
echo "2. john --format=crypt mypassword"
