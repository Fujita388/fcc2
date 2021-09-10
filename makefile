all: fcc2.lammpstrj

fcc2.lammpstrj: fcc2.input
	/home/apps/lammps/lmp_serial < fcc2.input

fcc2.input: fcc2.atoms

fcc2.atoms: generate.py
	python3 generate.py

restart: restart.input
	/home/apps/lammps/lmp_serial < restart.input

clean:
	rm *.lammpstrj *.atoms log.lammps test.restart.*
