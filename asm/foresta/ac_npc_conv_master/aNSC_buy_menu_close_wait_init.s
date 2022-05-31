lbl_8054A77C:
/* 8054A77C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A780  7C 08 02 A6 */	mflr r0
/* 8054A784  38 A0 00 05 */	li r5, 5
/* 8054A788  38 C0 00 00 */	li r6, 0
/* 8054A78C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A790  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054A794  7C 7F 1B 78 */	mr r31, r3
/* 8054A798  38 64 1D EC */	addi r3, r4, 0x1dec
/* 8054A79C  38 80 00 01 */	li r4, 1
/* 8054A7A0  4B EA 4F 3D */	bl mSM_open_submenu
/* 8054A7A4  38 00 00 13 */	li r0, 0x13
/* 8054A7A8  90 1F 09 98 */	stw r0, 0x998(r31)
/* 8054A7AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A7B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054A7B4  7C 08 03 A6 */	mtlr r0
/* 8054A7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A7BC  4E 80 00 20 */	blr 
