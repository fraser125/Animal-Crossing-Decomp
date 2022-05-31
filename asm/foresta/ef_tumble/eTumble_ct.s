lbl_80622DBC:
/* 80622DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80622DC0  7C 08 02 A6 */	mflr r0
/* 80622DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80622DC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80622DCC  7C 7F 1B 78 */	mr r31, r3
/* 80622DD0  4B FF F7 55 */	bl func_80622524
/* 80622DD4  38 00 00 00 */	li r0, 0
/* 80622DD8  B0 1F 00 00 */	sth r0, 0(r31)
/* 80622DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80622DE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80622DE4  7C 08 03 A6 */	mtlr r0
/* 80622DE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80622DEC  4E 80 00 20 */	blr 
