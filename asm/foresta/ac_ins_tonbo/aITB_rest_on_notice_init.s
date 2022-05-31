lbl_805A1B6C:
/* 805A1B6C  3C 80 80 65 */	lis r4, lit_407@ha /* 0x8064A2C4@ha */
/* 805A1B70  38 00 00 C8 */	li r0, 0xc8
/* 805A1B74  C0 04 A2 C4 */	lfs f0, lit_407@l(r4)  /* 0x8064A2C4@l */
/* 805A1B78  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 805A1B7C  D0 03 01 E8 */	stfs f0, 0x1e8(r3)
/* 805A1B80  D0 03 01 EC */	stfs f0, 0x1ec(r3)
/* 805A1B84  90 03 02 28 */	stw r0, 0x228(r3)
/* 805A1B88  4E 80 00 20 */	blr 
