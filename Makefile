#//////////////////////////////////////////////////////////////////////////////////////////////////
#//
#// Author Name : Walid Akash (walidakash070@gmail.com)
#// Description : Makefile for verif folder testbenches
#//
#//////////////////////////////////////////////////////////////////////////////////////////////////

FLIST += 

TOP = 

CT += *.log
CT = *.pb
CT += *.jou
CT += *.vcd
CT += xsim.dir
CT += top.wdb

run: clean
	@xvlog -sv $(FLIST)
	@xelab $(TOP) -s top
	@xsim top -runall

clean:
	@rm -rf $(CT)

