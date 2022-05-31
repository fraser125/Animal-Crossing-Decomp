lbl_8039A498:
/* 8039A498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039A49C  7C 08 02 A6 */	mflr r0
/* 8039A4A0  38 80 03 E0 */	li r4, 0x3e0
/* 8039A4A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039A4A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039A4AC  7C 7F 1B 78 */	mr r31, r3
/* 8039A4B0  4B CC 2B B9 */	bl bzero
/* 8039A4B4  7F E3 FB 78 */	mr r3, r31
/* 8039A4B8  38 80 03 E0 */	li r4, 0x3e0
/* 8039A4BC  38 A0 00 20 */	li r5, 0x20
/* 8039A4C0  48 02 05 89 */	bl mem_clear
/* 8039A4C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039A4C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039A4CC  7C 08 03 A6 */	mtlr r0
/* 8039A4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8039A4D4  4E 80 00 20 */	blr 
