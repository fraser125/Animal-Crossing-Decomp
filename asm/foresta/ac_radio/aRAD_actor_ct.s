lbl_805B8794:
/* 805B8794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B8798  7C 08 02 A6 */	mflr r0
/* 805B879C  38 80 00 00 */	li r4, 0
/* 805B87A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B87A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B87A8  7C 7F 1B 78 */	mr r31, r3
/* 805B87AC  48 00 01 65 */	bl aRAD_setup_action
/* 805B87B0  38 00 00 00 */	li r0, 0
/* 805B87B4  7F E3 FB 78 */	mr r3, r31
/* 805B87B8  90 1F 02 B8 */	stw r0, 0x2b8(r31)
/* 805B87BC  38 80 00 01 */	li r4, 1
/* 805B87C0  48 00 00 19 */	bl func_805B87D8
/* 805B87C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B87C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B87CC  7C 08 03 A6 */	mtlr r0
/* 805B87D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805B87D4  4E 80 00 20 */	blr 
