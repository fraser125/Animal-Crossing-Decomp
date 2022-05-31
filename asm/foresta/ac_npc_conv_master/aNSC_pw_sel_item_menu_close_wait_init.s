lbl_8054ACE4:
/* 8054ACE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054ACE8  7C 08 02 A6 */	mflr r0
/* 8054ACEC  38 A0 00 10 */	li r5, 0x10
/* 8054ACF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054ACF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054ACF8  7C 7F 1B 78 */	mr r31, r3
/* 8054ACFC  38 64 1D EC */	addi r3, r4, 0x1dec
/* 8054AD00  38 80 00 01 */	li r4, 1
/* 8054AD04  A0 DF 09 F6 */	lhz r6, 0x9f6(r31)
/* 8054AD08  4B EA 49 D5 */	bl mSM_open_submenu
/* 8054AD0C  38 00 00 2C */	li r0, 0x2c
/* 8054AD10  90 1F 09 98 */	stw r0, 0x998(r31)
/* 8054AD14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054AD18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054AD1C  7C 08 03 A6 */	mtlr r0
/* 8054AD20  38 21 00 10 */	addi r1, r1, 0x10
/* 8054AD24  4E 80 00 20 */	blr 
