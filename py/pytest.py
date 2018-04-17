#!/usr/bin/env python

print("Hello world from Python 3 in Windows!")

with open("testfile.txt", "wt") as fout:
	print("Writing a line to python")
	fout.write("Line #1")
	fout.close()
print("Exiting")
