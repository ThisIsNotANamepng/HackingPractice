"""
This file can:
    1. Be called on to demonstrate passowrd-generating abilities
    2. Recieve a file and try to brute force the vigenere cipher within


"""

import string
import pyAesCrypt
import sys
from colorama import init
from termcolor import colored

password = "test"
stop=False
characters = string.ascii_letters + string.digits

def generate_strings(length):
    if length == 0:
        return ['']

    if length == 1:
        return list(characters)

    shorter_strings = generate_strings(length - 1)
    new_strings = []

    for char in characters:
        for shorter_str in shorter_strings:
            new_strings.append(char + shorter_str)

    return new_strings

for length in range(1, 5): # If you try to load a list of letters any longer the system memory fills up and crashes, this is the limit
    strings = generate_strings(length)
    for s in strings:
        try:
            pyAesCrypt.decryptFile("data.txt.aes", "dataout.txt", s)
            stop=True
        except: 
            print(s+"  failed")
            pass
        if stop==True: 
            print("\n")
            print(colored("File decrypted!", "green"))
            print("The key was :", colored(s, "yellow"))
            f=open("dataout.txt", "r")
            print("The data in the file is: ", colored(f.read(), "blue"))
            f.close()
            print("\n")

            sys.exit()
