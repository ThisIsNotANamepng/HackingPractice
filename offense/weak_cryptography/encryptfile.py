import pyAesCrypt

f=open("data.txt", "w")
f.write("super-long-password-you-could-never-guess-or-brute-force-1872486756^$%68756453$#%^$685764^#&$*632%#@^$#&867564%Wrv6e5]")
f.close()

password = "hi"
# encrypt
pyAesCrypt.encryptFile("data.txt", "data.txt.aes", password)


# decrypt
#pyAesCrypt.decryptFile("data.txt.aes", "dataout.txt", password)