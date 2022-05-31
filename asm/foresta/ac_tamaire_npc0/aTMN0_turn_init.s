lbl_80589DA8:
/* 80589DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80589DAC  7C 08 02 A6 */	mflr r0
/* 80589DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80589DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80589DB8  7C 7F 1B 78 */	mr r31, r3
/* 80589DBC  4B FF FC AD */	bl func_80589A68
/* 80589DC0  A9 1F 09 A2 */	lha r8, 0x9a2(r31)
/* 80589DC4  7F E3 FB 78 */	mr r3, r31
/* 80589DC8  A9 3F 09 A4 */	lha r9, 0x9a4(r31)
/* 80589DCC  38 80 00 04 */	li r4, 4
/* 80589DD0  38 A0 00 03 */	li r5, 3
/* 80589DD4  38 C0 00 03 */	li r6, 3
/* 80589DD8  38 E0 00 00 */	li r7, 0
/* 80589DDC  4B FF F9 B9 */	bl aTMN0_set_request_act
/* 80589DE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80589DE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80589DE8  7C 08 03 A6 */	mtlr r0
/* 80589DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80589DF0  4E 80 00 20 */	blr 
