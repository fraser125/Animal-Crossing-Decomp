lbl_805BF49C:
/* 805BF49C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BF4A0  7C 08 02 A6 */	mflr r0
/* 805BF4A4  38 80 00 01 */	li r4, 1
/* 805BF4A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BF4AC  48 00 01 55 */	bl aTOU_setup_action
/* 805BF4B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BF4B4  7C 08 03 A6 */	mtlr r0
/* 805BF4B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805BF4BC  4E 80 00 20 */	blr 
