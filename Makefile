PROGRAM = mldl

.PHONY : all clean
all : ${PROGRAM}.1
clean :
	rm -f ${PROGRAM}.1

${PROGRAM}.1 : README
	rst2man.py README ${PROGRAM}.1
