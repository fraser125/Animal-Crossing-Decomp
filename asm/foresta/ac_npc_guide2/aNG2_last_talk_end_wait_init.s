lbl_80556414:
/* 80556414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80556418  7C 08 02 A6 */	mflr r0
/* 8055641C  38 80 00 03 */	li r4, 3
/* 80556420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80556424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80556428  7C 7F 1B 78 */	mr r31, r3
/* 8055642C  4B FF ED 31 */	bl aNG2_chg_cond_keitai
/* 80556430  38 00 00 00 */	li r0, 0
/* 80556434  90 1F 08 A0 */	stw r0, 0x8a0(r31)
/* 80556438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055643C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80556440  7C 08 03 A6 */	mtlr r0
/* 80556444  38 21 00 10 */	addi r1, r1, 0x10
/* 80556448  4E 80 00 20 */	blr 
