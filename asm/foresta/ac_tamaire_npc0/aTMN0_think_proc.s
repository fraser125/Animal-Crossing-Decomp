lbl_80589F88:
/* 80589F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80589F8C  7C 08 02 A6 */	mflr r0
/* 80589F90  2C 05 00 01 */	cmpwi r5, 1
/* 80589F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80589F98  41 82 00 1C */	beq lbl_80589FB4
/* 80589F9C  40 80 00 1C */	bge lbl_80589FB8
/* 80589FA0  2C 05 00 00 */	cmpwi r5, 0
/* 80589FA4  40 80 00 08 */	bge lbl_80589FAC
/* 80589FA8  48 00 00 10 */	b lbl_80589FB8
lbl_80589FAC:
/* 80589FAC  4B FF FD 75 */	bl aTMN0_think_init_proc
/* 80589FB0  48 00 00 08 */	b lbl_80589FB8
lbl_80589FB4:
/* 80589FB4  4B FF FC F9 */	bl aTMN0_think_main_proc
lbl_80589FB8:
/* 80589FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80589FBC  7C 08 03 A6 */	mtlr r0
/* 80589FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80589FC4  4E 80 00 20 */	blr 
