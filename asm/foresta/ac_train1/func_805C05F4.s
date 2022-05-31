lbl_805C05F4:
/* 805C05F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C05F8  7C 08 02 A6 */	mflr r0
/* 805C05FC  7C 65 1B 78 */	mr r5, r3
/* 805C0600  7C 83 23 78 */	mr r3, r4
/* 805C0604  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C0608  38 85 00 28 */	addi r4, r5, 0x28
/* 805C060C  48 06 D9 9D */	bl sAdo_OngenTrgStart
/* 805C0610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C0614  7C 08 03 A6 */	mtlr r0
/* 805C0618  38 21 00 10 */	addi r1, r1, 0x10
/* 805C061C  4E 80 00 20 */	blr 
