# Makefile example 1
#Since the blah target is first, it is the default target and will be run when we run "make"
targ: headers.h
	touch targ

all: driver.c file1.c file2.c

.PHONY: all
	
driver.c: headers.h
	cc -c headers.h -c driver.c

file1.c: headers.h
	cc -c headers.h -c driver.c
	
file2.c: headers.h
	cc -c headers.h -c driver.c
	
headers.h: 
	cc -c headers.h

clean:
	rm -f file2.c file1.c headers.h targ
	
.PHONY: clean