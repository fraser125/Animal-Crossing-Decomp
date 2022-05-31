lbl_8054CA2C:
/* 8054CA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054CA30  7C 08 02 A6 */	mflr r0
/* 8054CA34  38 64 1D EC */	addi r3, r4, 0x1dec
/* 8054CA38  38 80 00 01 */	li r4, 1
/* 8054CA3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054CA40  38 A0 00 0F */	li r5, 0xf
/* 8054CA44  38 C0 00 00 */	li r6, 0
/* 8054CA48  4B EA 2C 95 */	bl mSM_open_submenu
/* 8054CA4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054CA50  7C 08 03 A6 */	mtlr r0
/* 8054CA54  38 21 00 10 */	addi r1, r1, 0x10
/* 8054CA58  4E 80 00 20 */	blr 
