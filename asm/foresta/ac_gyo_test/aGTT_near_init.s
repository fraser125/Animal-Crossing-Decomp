lbl_805A4A14:
/* 805A4A14  A0 03 02 40 */	lhz r0, 0x240(r3)
/* 805A4A18  3C A0 80 6C */	lis r5, aGTT_speed@ha /* 0x806C3DC0@ha */
/* 805A4A1C  3C 80 80 65 */	lis r4, lit_927@ha /* 0x8064A438@ha */
/* 805A4A20  60 00 00 02 */	ori r0, r0, 2
/* 805A4A24  38 A5 3D C0 */	addi r5, r5, aGTT_speed@l /* 0x806C3DC0@l */
/* 805A4A28  B0 03 02 40 */	sth r0, 0x240(r3)
/* 805A4A2C  C0 04 A4 38 */	lfs f0, lit_927@l(r4)  /* 0x8064A438@l */
/* 805A4A30  A8 03 01 DC */	lha r0, 0x1dc(r3)
/* 805A4A34  54 00 10 3A */	slwi r0, r0, 2
/* 805A4A38  7C 25 04 2E */	lfsx f1, r5, r0
/* 805A4A3C  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 805A4A40  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 805A4A44  4E 80 00 20 */	blr 
