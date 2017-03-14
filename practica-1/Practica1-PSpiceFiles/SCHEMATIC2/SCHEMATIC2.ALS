.ALIASES
V_Vee           Vee(+=0 -=VEE ) CN @PRACTICA1.SCHEMATIC2(sch_1):INS433@SOURCE.VDC.Normal(chips)
R_R3            R3(1=0 2=OUT ) CN @PRACTICA1.SCHEMATIC2(sch_1):INS95@ANALOG.R.Normal(chips)
V_Vcc           Vcc(+=VCC -=0 ) CN @PRACTICA1.SCHEMATIC2(sch_1):INS453@SOURCE.VDC.Normal(chips)
R_R1            R1(1=IN 2=N00216 ) CN @PRACTICA1.SCHEMATIC2(sch_1):INS79@ANALOG.R.Normal(chips)
X_U1            U1(+=0 -=N00216 V+=VCC V-=VEE OUT=OUT ) CN @PRACTICA1.SCHEMATIC2(sch_1):INS155@EVAL.uA741.Normal(chips)
C_C1            C1(1=N00216 2=OUT ) CN @PRACTICA1.SCHEMATIC2(sch_1):INS120@ANALOG.C.Normal(chips)
V_V1            V1(+=IN -=0 ) CN @PRACTICA1.SCHEMATIC2(sch_1):INS1070@SOURCE.VSIN.Normal(chips)
_    _(IN=IN)
_    _(OUT=OUT)
_    _(VCC=VCC)
_    _(VEE=VEE)
.ENDALIASES
