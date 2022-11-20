# LAB NOTEBOOK - CH302 RESEARCH

# 11/01/22

## SYNTHESIS:

### PROTOCOL FROM: `Schilt and Fritsch, “Some Transition Metal Thiocyanate 1,10-Phenanthroline Mixed Ligand Complexes.”`

- .0015mol of cobalt II sulate heptahydrate (281.1 g/mol): `.4217g` added to `~50ml` of DI water
- .03mol KSCN added to resulting soln (97.18 g/mol => `0.29154g`) - Actual `.2933g`
- Water was added until thermometer covered `~25mL`
- Dropwise added soln of `.003 mol` 1,10 phenanthroline \* `180.21 g/mol` = `.54063g`
  Actual: `.54168g`
- Hot pink precipitate was vacuum filtered, washed with water and ethanol, then dried under vacuum overnight.

# 11/02/22

- Final dry mass: `.641g`
- IR Spectrum taken: `IR.pdf` (sorry the paper got a little beat up before I got a chance to scan it)

# 11/07/22

## Raman:

- `785nm` laser
- `1200l/mm` grating
- `1s` output at `1%` power
- Took a spectrum every `5C` up to `325C`
- Sample outputs in `instrument_date/RAMAN`
  - `1.PNG` is first spectrum, `25.PNG` is 25th, etc.
- Full output on computer connected to instrument.
- We did not immediately see any evidence of spin transition.
- Eli suggested using lower power with multiple accumulations to avoid laser ablation of our compound possibly interfering with our result.

## TGA

### Run 1

- File: `instrument_data/TGA/Co(phen)2(SCN)2 1172022.csv`
- Ramp 20 °C/minute to 1200 °C
- Saw compound start breaking down significantly around `400C`

### Run 2:

- File: `instrument_data/TGA/Co(phen)2(SCN)2 electromagnet 150-250-1001172022.csv`
- Method Log Entry # 1,Equilibrate 120 °C
- Method Log Entry # 2,Isothermal 1 minutes
- Method Log Entry # 3,Electromagnet On 50 %
- Method Log Entry # 4,Equilibrate 150 °C
- Method Log Entry # 5,(Ramp 8343) Ramp 5 °C/minute to 250 °C
- Method Log Entry # 6,Equilibrate 250 °C
- Method Log Entry # 7,(Ramp 8345) Ramp 10 °C/minute to 100 °C
- Method Log Entry # 8,Equilibrate 100 °C

### Run 3:

- File: `instrument_data/TGA/Co(phen)2(SCN)2 electromagnet RT-4001172022.csv`
- Experiment Log Entry # 1,Equilibrate Segment 110 (C) Started
- Experiment Log Entry # 3,Isothermal Segment 1 min started
- Experiment Log Entry # 5,"Curie Magnet Segment enable 1, 50 %"
- Experiment Log Entry # 7,Ramp Segment 10 C/min to 400 C Started

# 11/14/22

## TGA

### Run 1

- File: `instrument_data/TGA/Co(phen)2(SCN)2 electromagnet RT-325-100 20C11142022.csv`
- Experiment Log Entry # 1,Equilibrate Segment 120 (C) Started
- Experiment Log Entry # 3,Isothermal Segment 1 min started
- Experiment Log Entry # 5,"Curie Magnet Segment enable 1, 60 %"
- Experiment Log Entry # 7,Equilibrate Segment 120 (C) Started
- Experiment Log Entry # 9,Ramp Segment 20 C/min to 325 C Started
- Experiment Log Entry # 11,Ramp Segment 20 C/min to 100 C Started
- Experiment Log Entry # 13,Ending Experiment because user stopped
- Experiment Log Entry # 15,Ending Experiment

### Run 2

- File: `instrument_data/TGA/Co(phen)2(SCN)2 electromagnet RT-325-10011142022.csv`
- Experiment Log Entry # 1,Equilibrate Segment 120 (C) Started
- Experiment Log Entry # 3,Isothermal Segment 1 min started
- Experiment Log Entry # 5,"Curie Magnet Segment enable 1, 100 %"
- Experiment Log Entry # 7,Equilibrate Segment 120 (C) Started
- Experiment Log Entry # 9,Ramp Segment 5 C/min to 325 C Started
- Experiment Log Entry # 11,Ending Experiment because of critical or major error
- Experiment Log Entry # 13,Curie Coil error

### Run 3

- File: `instrument_data/TGA/Co(phen)2(SCN)2 electromagnet RT-325-10011142022(1).csv`
- Experiment Log Entry # 1,Equilibrate Segment 120 (C) Started
- Experiment Log Entry # 3,Isothermal Segment 1 min started
- Experiment Log Entry # 5,"Curie Magnet Segment enable 1, 60 %"
- Experiment Log Entry # 7,Equilibrate Segment 120 (C) Started
- Experiment Log Entry # 9,Ramp Segment 5 C/min to 325 C Started
- Experiment Log Entry # 11,Ending Experiment because user stopped
- Experiment Log Entry # 13,Ending Experiment

### Run 4

- File: `instrument_data/TGA/Co(phen)2(SCN)2 electromagnet RT-40011142022.csv`
- Experiment Log Entry # 1,Equilibrate Segment 110 (C) Started
- Experiment Log Entry # 3,Isothermal Segment 1 min started
- Experiment Log Entry # 5,"Curie Magnet Segment enable 1, 50 %"
- Experiment Log Entry # 7,Ramp Segment 60 C/min to 400 C Started

### Run 5

- File: `instrument_data/TGA/Co(phen)2(SCN)2 electromagnet RT-40011142022(1).csv`
- Experiment Log Entry # 1,Equilibrate Segment 110 (C) Started
- Experiment Log Entry # 3,Isothermal Segment 1 min started
- Experiment Log Entry # 5,"Curie Magnet Segment enable 1, 50 %"
- Experiment Log Entry # 7,Ramp Segment 60 C/min to 400 C Started

# Computational Studies

Not dated since I cannot find dates for these runs

### Run 1: Water optimization

- Ran into errors in Orca trying to increasse parallelization
- Input file: `water.inp`

### Run 2: Low spin optimization

- Completed successfully
- Input file: `CoPhen2NCS2_rks_LS.inp`
  - This file now reflects the frequency calculations and unoptimized XYZ (Should have been using version control earlier)
  - To re-do this run remove the `FREQ` keyword and use the atomic coordinates listed in the file below.
- (Unoptimized) Input XYZ: `Co(phen)2(NCS)2.xyz`
  - Generated by Avogardo on Mac OS X
- Output log: `lowspin_output/run1/low.out`

### Run 3: Low spin Spectrum prediction

- Was unable to complete successfully as of yet
- Ran into issues on ORCA 4.2.1 - Trying again on 5.0.3
