lbl_805997B8:
/* 805997B8  3C 80 80 65 */	lis r4, lit_447@ha /* 0x80649ECC@ha */
/* 805997BC  38 00 00 0A */	li r0, 0xa
/* 805997C0  C0 04 9E CC */	lfs f0, lit_447@l(r4)  /* 0x80649ECC@l */
/* 805997C4  D0 03 01 EC */	stfs f0, 0x1ec(r3)
/* 805997C8  D0 03 01 E8 */	stfs f0, 0x1e8(r3)
/* 805997CC  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 805997D0  90 03 02 28 */	stw r0, 0x228(r3)
/* 805997D4  4E 80 00 20 */	blr 
