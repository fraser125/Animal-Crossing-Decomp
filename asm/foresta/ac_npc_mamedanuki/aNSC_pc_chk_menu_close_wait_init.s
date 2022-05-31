lbl_8055EC18:
/* 8055EC18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055EC1C  7C 08 02 A6 */	mflr r0
/* 8055EC20  38 A0 00 00 */	li r5, 0
/* 8055EC24  38 C0 00 00 */	li r6, 0
/* 8055EC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055EC2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055EC30  7C 7F 1B 78 */	mr r31, r3
/* 8055EC34  38 64 1D EC */	addi r3, r4, 0x1dec
/* 8055EC38  38 80 00 1E */	li r4, 0x1e
/* 8055EC3C  38 FF 09 D8 */	addi r7, r31, 0x9d8
/* 8055EC40  4B E9 0A C5 */	bl mSM_open_submenu_new
/* 8055EC44  38 00 00 37 */	li r0, 0x37
/* 8055EC48  90 1F 09 98 */	stw r0, 0x998(r31)
/* 8055EC4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055EC50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055EC54  7C 08 03 A6 */	mtlr r0
/* 8055EC58  38 21 00 10 */	addi r1, r1, 0x10
/* 8055EC5C  4E 80 00 20 */	blr 
