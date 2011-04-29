PROGRAM = mldl

.PHONY : all clean
all : ${PROGRAM}.1
clean :
	rm -f ${PROGRAM}.1

${PROGRAM}.1 : README.rst
	rst2man.py README.rst ${PROGRAM}.1
