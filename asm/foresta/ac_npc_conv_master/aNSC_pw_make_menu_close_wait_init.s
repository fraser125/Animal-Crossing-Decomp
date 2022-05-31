lbl_8054AC60:
/* 8054AC60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054AC64  7C 08 02 A6 */	mflr r0
/* 8054AC68  38 A0 00 20 */	li r5, 0x20
/* 8054AC6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054AC70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054AC74  7C 9F 23 78 */	mr r31, r4
/* 8054AC78  38 80 00 10 */	li r4, 0x10
/* 8054AC7C  93 C1 00 08 */	stw r30, 8(r1)
/* 8054AC80  7C 7E 1B 78 */	mr r30, r3
/* 8054AC84  38 7E 09 C8 */	addi r3, r30, 0x9c8
/* 8054AC88  4B E6 FD C1 */	bl mem_clear
/* 8054AC8C  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 8054AC90  38 FE 09 C8 */	addi r7, r30, 0x9c8
/* 8054AC94  38 80 00 1D */	li r4, 0x1d
/* 8054AC98  38 A0 00 00 */	li r5, 0
/* 8054AC9C  38 C0 00 00 */	li r6, 0
/* 8054ACA0  4B EA 4A 65 */	bl mSM_open_submenu_new
/* 8054ACA4  38 00 00 2C */	li r0, 0x2c
/* 8054ACA8  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8054ACAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054ACB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054ACB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054ACB8  7C 08 03 A6 */	mtlr r0
/* 8054ACBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8054ACC0  4E 80 00 20 */	blr 
