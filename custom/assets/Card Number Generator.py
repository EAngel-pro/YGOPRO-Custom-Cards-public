import random
inp=""
print("Input \"x\" to exit.\nYour card number(s):")
while inp != "x":
	r=random.randint(0,99999999)
	print('%08d' % r)
	inp = input()