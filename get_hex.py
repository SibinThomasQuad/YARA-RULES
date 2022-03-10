import binascii
filename = 'favicon.ico'
with open(filename, 'rb') as f:
    content = f.read()
print(binascii.hexlify(content))
