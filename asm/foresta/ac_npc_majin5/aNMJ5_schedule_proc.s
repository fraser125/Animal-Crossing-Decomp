lbl_80559D98:
/* 80559D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80559D9C  7C 08 02 A6 */	mflr r0
/* 80559DA0  2C 05 00 01 */	cmpwi r5, 1
/* 80559DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80559DA8  41 82 00 1C */	beq lbl_80559DC4
/* 80559DAC  40 80 00 1C */	bge lbl_80559DC8
/* 80559DB0  2C 05 00 00 */	cmpwi r5, 0
/* 80559DB4  40 80 00 08 */	bge lbl_80559DBC
/* 80559DB8  48 00 00 10 */	b lbl_80559DC8
lbl_80559DBC:
/* 80559DBC  4B FF FF 11 */	bl aNMJ5_schedule_init_proc
/* 80559DC0  48 00 00 08 */	b lbl_80559DC8
lbl_80559DC4:
/* 80559DC4  4B FF FF 55 */	bl aNMJ5_schedule_main_proc
lbl_80559DC8:
/* 80559DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559DCC  7C 08 03 A6 */	mtlr r0
/* 80559DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80559DD4  4E 80 00 20 */	blr 
