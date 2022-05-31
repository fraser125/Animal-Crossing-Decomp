lbl_8045D214:
/* 8045D214  3C 80 80 64 */	lis r4, lit_459@ha /* 0x806445BC@ha */
/* 8045D218  3C A0 80 46 */	lis r5, minsect_chou_flower_process@ha /* 0x8045D278@ha */
/* 8045D21C  38 C4 45 BC */	addi r6, r4, lit_459@l /* 0x806445BC@l */
/* 8045D220  38 00 00 00 */	li r0, 0
/* 8045D224  C0 26 00 00 */	lfs f1, 0(r6)
/* 8045D228  3C 80 80 64 */	lis r4, lit_460@ha /* 0x806445C0@ha */
/* 8045D22C  C0 04 45 C0 */	lfs f0, lit_460@l(r4)  /* 0x806445C0@l */
/* 8045D230  38 A5 D2 78 */	addi r5, r5, minsect_chou_flower_process@l /* 0x8045D278@l */
/* 8045D234  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 8045D238  38 80 00 10 */	li r4, 0x10
/* 8045D23C  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 8045D240  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 8045D244  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 8045D248  90 A3 00 04 */	stw r5, 4(r3)
/* 8045D24C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8045D250  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8045D254  B0 83 00 6E */	sth r4, 0x6e(r3)
/* 8045D258  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 8045D25C  80 83 00 20 */	lwz r4, 0x20(r3)
/* 8045D260  90 A3 00 28 */	stw r5, 0x28(r3)
/* 8045D264  90 83 00 2C */	stw r4, 0x2c(r3)
/* 8045D268  80 83 00 24 */	lwz r4, 0x24(r3)
/* 8045D26C  90 83 00 30 */	stw r4, 0x30(r3)
/* 8045D270  B0 03 00 76 */	sth r0, 0x76(r3)
/* 8045D274  4E 80 00 20 */	blr 
