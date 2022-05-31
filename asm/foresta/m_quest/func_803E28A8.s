lbl_803E28A8:
/* 803E28A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E28AC  7C 08 02 A6 */	mflr r0
/* 803E28B0  38 80 00 0C */	li r4, 0xc
/* 803E28B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E28B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E28BC  7C 7F 1B 78 */	mr r31, r3
/* 803E28C0  4B C7 A7 A9 */	bl bzero
/* 803E28C4  88 1F 00 00 */	lbz r0, 0(r31)
/* 803E28C8  38 60 00 03 */	li r3, 3
/* 803E28CC  50 60 36 32 */	rlwimi r0, r3, 6, 0x18, 0x19
/* 803E28D0  98 1F 00 00 */	stb r0, 0(r31)
/* 803E28D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E28D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E28DC  7C 08 03 A6 */	mtlr r0
/* 803E28E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803E28E4  4E 80 00 20 */	blr 
