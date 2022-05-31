lbl_8055EB98:
/* 8055EB98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055EB9C  7C 08 02 A6 */	mflr r0
/* 8055EBA0  38 A0 00 10 */	li r5, 0x10
/* 8055EBA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055EBA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055EBAC  7C 7F 1B 78 */	mr r31, r3
/* 8055EBB0  38 64 1D EC */	addi r3, r4, 0x1dec
/* 8055EBB4  38 80 00 01 */	li r4, 1
/* 8055EBB8  A0 DF 09 F6 */	lhz r6, 0x9f6(r31)
/* 8055EBBC  4B E9 0B 21 */	bl mSM_open_submenu
/* 8055EBC0  38 00 00 2C */	li r0, 0x2c
/* 8055EBC4  90 1F 09 98 */	stw r0, 0x998(r31)
/* 8055EBC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055EBCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055EBD0  7C 08 03 A6 */	mtlr r0
/* 8055EBD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8055EBD8  4E 80 00 20 */	blr 
