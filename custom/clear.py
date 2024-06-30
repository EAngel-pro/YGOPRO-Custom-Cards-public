#import glob
import os
import shutil
from sys import exit

#initialization
absPath = os.path.abspath(os.getcwd())
absPath2 = absPath[:-7]

file1 = absPath2 + "/script"
file2 = absPath2 + "/pics"
file3 = absPath2 + "/expansions"
file4 = absPath2 + "/puzzles"

dir1="script"
dir2="pics"
dir3="expansions"
dir4="puzzles"


def menu():
	print("Welcome, \n 1. Print Custom File List \n 2. Clear Custom Files \n 3. Exit \n")
	choice = input()
	
	if choice == "1":
		#script:
		if os.path.exists(dir1):
			#break0:
			print("\nscript:\n")
			fileNames = os.listdir(dir1)
			for fileName in fileNames:
				print(fileName)
		#pics:
		if os.path.exists(dir2):
			#break1:
			print("\npics:\n")
			fileNames2 = os.listdir(dir2)
			for fileName2 in fileNames2:
				print(fileName2)
		#expansions:
		if os.path.exists(dir3):
			#break2:
			print("\nexpansions:\n")
			fileNames3 = os.listdir(dir3)
			for fileName3 in fileNames3:
				print(fileName3)
		#puzzles:
		if os.path.exists(dir4):
			#break3:
			print("\npuzzles:\n")
			puzsubs = os.listdir(dir4)
			for puzsub in puzsubs:
				fileNames4 = os.listdir(dir4 + "/" + puzsub)
				for fileName4 in fileNames4:
					print(puzsub+"/"+fileName4)
		input()
		menu()
	if choice == "2":
		#script:
		if os.path.exists(dir1):
			#break0:
			print("\nscript:\n")
			fileNames = os.listdir(dir1)
			for fileName in fileNames:
				fileGroup1 = file1 + "/" + fileName
				if os.path.exists(fileGroup1):
					os.remove(fileGroup1)
					print(fileGroup1 + " deleted!")
				else:
					print(fileGroup1 + " does not exist.")
		#pics:
		if os.path.exists(dir2):
			#break1:
			print("\npics:\n")
			fileNames2 = os.listdir(dir2)
			for fileName2 in fileNames2:
				fileGroup2 = file2 + "/" + fileName2
				if os.path.exists(fileGroup2):
					os.remove(fileGroup2)
					print(fileGroup2 + " deleted!")
				else:
					print(fileGroup2 + " does not exist.")
		#expansions:
		if os.path.exists(dir3):
			#break2:
			print("\nexpansions:\n")
			fileNames3 = os.listdir(dir3)
			for fileName3 in fileNames3:
				fileGroup3 = file3 + "/" + fileName3
				if os.path.exists(fileGroup3):
					os.remove(fileGroup3)
					print(fileGroup3 + " deleted!")
				else:
					print(fileGroup3 + " does not exist.")
		#puzzles:
		if os.path.exists(dir4):
			#break3:
			print("\npuzzles:\n")
			fileNames4 = os.listdir(dir4)
			for fileName4 in fileNames4:
				fileGroup4 = file4 + "/" + fileName4
				if os.path.exists(fileGroup4):
					shutil.rmtree(fileGroup4)
					print(fileGroup4 + " deleted!")
				else:
					print(fileGroup4 + " does not exist.")
		input()
		menu()
	if choice == "3":
		exit()
menu()

#def list(dir1):
# os.chdir(dir1)
# files=glob.glob('')
# for x in files:
	# os.remove(x)
	
#next

#fileName=fileNames.split()

# del.py:

# files=glob.glob('ogg.ogg')
# for x in files:
# 	os.remove(x)
# os.rmdir("myfolder")



# if os.path.exists(file2):
	# os.remove(file2)
	# print(file2[11:] + " deleted!")
# else:
	# print(file2[11:] + " does not exist.")

#https://www.simplifiedpython.net/python-get-files-in-directory/
#os.startfile(absPath2)