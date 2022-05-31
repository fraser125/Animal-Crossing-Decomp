lbl_805AC9D8:
/* 805AC9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AC9DC  7C 08 02 A6 */	mflr r0
/* 805AC9E0  7C 65 1B 78 */	mr r5, r3
/* 805AC9E4  7C 83 23 78 */	mr r3, r4
/* 805AC9E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AC9EC  38 85 00 28 */	addi r4, r5, 0x28
/* 805AC9F0  48 08 15 B9 */	bl sAdo_OngenTrgStart
/* 805AC9F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AC9F8  7C 08 03 A6 */	mtlr r0
/* 805AC9FC  38 21 00 10 */	addi r1, r1, 0x10
/* 805ACA00  4E 80 00 20 */	blr 
