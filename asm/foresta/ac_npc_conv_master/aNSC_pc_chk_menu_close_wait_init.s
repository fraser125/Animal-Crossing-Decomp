lbl_8054AD64:
/* 8054AD64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054AD68  7C 08 02 A6 */	mflr r0
/* 8054AD6C  38 A0 00 00 */	li r5, 0
/* 8054AD70  38 C0 00 00 */	li r6, 0
/* 8054AD74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054AD78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054AD7C  7C 7F 1B 78 */	mr r31, r3
/* 8054AD80  38 64 1D EC */	addi r3, r4, 0x1dec
/* 8054AD84  38 80 00 1E */	li r4, 0x1e
/* 8054AD88  38 FF 09 D8 */	addi r7, r31, 0x9d8
/* 8054AD8C  4B EA 49 79 */	bl mSM_open_submenu_new
/* 8054AD90  38 00 00 37 */	li r0, 0x37
/* 8054AD94  90 1F 09 98 */	stw r0, 0x998(r31)
/* 8054AD98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054AD9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054ADA0  7C 08 03 A6 */	mtlr r0
/* 8054ADA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8054ADA8  4E 80 00 20 */	blr 
