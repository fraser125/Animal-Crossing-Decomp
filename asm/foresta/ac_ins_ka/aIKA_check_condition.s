lbl_8059C29C:
/* 8059C29C  88 A3 00 08 */	lbz r5, 8(r3)
/* 8059C2A0  38 C0 00 00 */	li r6, 0
/* 8059C2A4  88 04 00 E4 */	lbz r0, 0xe4(r4)
/* 8059C2A8  7C A5 07 74 */	extsb r5, r5
/* 8059C2AC  7C 00 07 74 */	extsb r0, r0
/* 8059C2B0  7C 05 00 00 */	cmpw r5, r0
/* 8059C2B4  40 82 00 50 */	bne lbl_8059C304
/* 8059C2B8  88 A3 00 09 */	lbz r5, 9(r3)
/* 8059C2BC  88 04 00 E5 */	lbz r0, 0xe5(r4)
/* 8059C2C0  7C A4 07 74 */	extsb r4, r5
/* 8059C2C4  7C 00 07 74 */	extsb r0, r0
/* 8059C2C8  7C 04 00 00 */	cmpw r4, r0
/* 8059C2CC  40 82 00 38 */	bne lbl_8059C304
/* 8059C2D0  3C 80 80 65 */	lis r4, lit_478@ha /* 0x8064A0D8@ha */
/* 8059C2D4  C0 23 00 C0 */	lfs f1, 0xc0(r3)
/* 8059C2D8  C0 04 A0 D8 */	lfs f0, lit_478@l(r4)  /* 0x8064A0D8@l */
/* 8059C2DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059C2E0  4C 41 13 82 */	cror 2, 1, 2
/* 8059C2E4  40 82 00 08 */	bne lbl_8059C2EC
/* 8059C2E8  48 00 00 08 */	b lbl_8059C2F0
lbl_8059C2EC:
/* 8059C2EC  FC 20 08 50 */	fneg f1, f1
lbl_8059C2F0:
/* 8059C2F0  3C 60 80 65 */	lis r3, lit_479@ha /* 0x8064A0DC@ha */
/* 8059C2F4  C0 03 A0 DC */	lfs f0, lit_479@l(r3)  /* 0x8064A0DC@l */
/* 8059C2F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059C2FC  40 80 00 08 */	bge lbl_8059C304
/* 8059C300  38 C0 00 01 */	li r6, 1
lbl_8059C304:
/* 8059C304  7C C3 33 78 */	mr r3, r6
/* 8059C308  4E 80 00 20 */	blr 
