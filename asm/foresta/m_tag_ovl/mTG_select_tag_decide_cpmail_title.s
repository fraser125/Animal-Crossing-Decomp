lbl_805FB3E0:
/* 805FB3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FB3E4  7C 08 02 A6 */	mflr r0
/* 805FB3E8  38 A0 00 04 */	li r5, 4
/* 805FB3EC  38 C0 00 0C */	li r6, 0xc
/* 805FB3F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FB3F4  39 00 00 78 */	li r8, 0x78
/* 805FB3F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FB3FC  7C 9F 23 78 */	mr r31, r4
/* 805FB400  38 80 00 0A */	li r4, 0xa
/* 805FB404  93 C1 00 08 */	stw r30, 8(r1)
/* 805FB408  7C 7E 1B 78 */	mr r30, r3
/* 805FB40C  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805FB410  80 E7 09 C0 */	lwz r7, 0x9c0(r7)
/* 805FB414  88 07 0B A8 */	lbz r0, 0xba8(r7)
/* 805FB418  81 27 00 00 */	lwz r9, 0(r7)
/* 805FB41C  1C E0 00 0C */	mulli r7, r0, 0xc
/* 805FB420  38 E7 00 04 */	addi r7, r7, 4
/* 805FB424  7C E9 3A 14 */	add r7, r9, r7
/* 805FB428  4B DF 43 01 */	bl mSM_open_submenu_new2
/* 805FB42C  38 00 00 02 */	li r0, 2
/* 805FB430  7F C3 F3 78 */	mr r3, r30
/* 805FB434  90 1F 00 04 */	stw r0, 4(r31)
/* 805FB438  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805FB43C  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805FB440  81 84 03 70 */	lwz r12, 0x370(r4)
/* 805FB444  7D 89 03 A6 */	mtctr r12
/* 805FB448  4E 80 04 21 */	bctrl 
/* 805FB44C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FB450  38 60 00 00 */	li r3, 0
/* 805FB454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FB458  83 C1 00 08 */	lwz r30, 8(r1)
/* 805FB45C  7C 08 03 A6 */	mtlr r0
/* 805FB460  38 21 00 10 */	addi r1, r1, 0x10
/* 805FB464  4E 80 00 20 */	blr 
