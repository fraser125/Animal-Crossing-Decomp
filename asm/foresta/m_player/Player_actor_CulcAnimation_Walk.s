lbl_804E62D0:
/* 804E62D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E62D4  7C 08 02 A6 */	mflr r0
/* 804E62D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E62DC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804E62E0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804E62E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E62E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804E62EC  7C 7E 1B 78 */	mr r30, r3
/* 804E62F0  3C 60 80 65 */	lis r3, lit_7783@ha /* 0x80648364@ha */
/* 804E62F4  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 804E62F8  38 A3 83 64 */	addi r5, r3, lit_7783@l /* 0x80648364@l */
/* 804E62FC  C0 45 00 00 */	lfs f2, 0(r5)
/* 804E6300  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E6304  EC 20 00 72 */	fmuls f1, f0, f1
/* 804E6308  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E630C  7C 9F 23 78 */	mr r31, r4
/* 804E6310  EC 81 10 24 */	fdivs f4, f1, f2
/* 804E6314  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804E6318  40 81 00 6C */	ble lbl_804E6384
/* 804E631C  FC 20 20 34 */	frsqrte f1, f4
/* 804E6320  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804E6324  38 83 69 F4 */	addi r4, r3, lit_1027@l /* 0x806469F4@l */
/* 804E6328  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804E632C  C8 64 00 00 */	lfd f3, 0(r4)
/* 804E6330  FC 01 00 72 */	fmul f0, f1, f1
/* 804E6334  C8 43 69 FC */	lfd f2, lit_1028@l(r3)  /* 0x806469FC@l */
/* 804E6338  FC 23 00 72 */	fmul f1, f3, f1
/* 804E633C  FC 04 00 32 */	fmul f0, f4, f0
/* 804E6340  FC 02 00 28 */	fsub f0, f2, f0
/* 804E6344  FC 21 00 32 */	fmul f1, f1, f0
/* 804E6348  FC 01 00 72 */	fmul f0, f1, f1
/* 804E634C  FC 23 00 72 */	fmul f1, f3, f1
/* 804E6350  FC 04 00 32 */	fmul f0, f4, f0
/* 804E6354  FC 02 00 28 */	fsub f0, f2, f0
/* 804E6358  FC 21 00 32 */	fmul f1, f1, f0
/* 804E635C  FC 01 00 72 */	fmul f0, f1, f1
/* 804E6360  FC 23 00 72 */	fmul f1, f3, f1
/* 804E6364  FC 04 00 32 */	fmul f0, f4, f0
/* 804E6368  FC 02 00 28 */	fsub f0, f2, f0
/* 804E636C  FC 01 00 32 */	fmul f0, f1, f0
/* 804E6370  FC 04 00 32 */	fmul f0, f4, f0
/* 804E6374  FC 00 00 18 */	frsp f0, f0
/* 804E6378  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804E637C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804E6380  48 00 00 08 */	b lbl_804E6388
lbl_804E6384:
/* 804E6384  FC 20 20 90 */	fmr f1, f4
lbl_804E6388:
/* 804E6388  3C 60 80 64 */	lis r3, lit_5331@ha /* 0x80647D64@ha */
/* 804E638C  88 1E 00 99 */	lbz r0, 0x99(r30)
/* 804E6390  C0 03 7D 64 */	lfs f0, lit_5331@l(r3)  /* 0x80647D64@l */
/* 804E6394  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 804E6398  28 00 00 02 */	cmplwi r0, 2
/* 804E639C  EF E0 00 72 */	fmuls f31, f0, f1
/* 804E63A0  40 82 00 28 */	bne lbl_804E63C8
/* 804E63A4  A0 7E 00 98 */	lhz r3, 0x98(r30)
/* 804E63A8  54 60 DF 7B */	rlwinm. r0, r3, 0x1b, 0x1d, 0x1d
/* 804E63AC  54 63 DE FE */	rlwinm r3, r3, 0x1b, 0x1b, 0x1f
/* 804E63B0  41 82 00 0C */	beq lbl_804E63BC
/* 804E63B4  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 804E63B8  40 82 00 D4 */	bne lbl_804E648C
lbl_804E63BC:
/* 804E63BC  3C 60 80 64 */	lis r3, lit_6209@ha /* 0x80647DE8@ha */
/* 804E63C0  C3 E3 7D E8 */	lfs f31, lit_6209@l(r3)  /* 0x80647DE8@l */
/* 804E63C4  48 00 00 C8 */	b lbl_804E648C
lbl_804E63C8:
/* 804E63C8  28 00 00 01 */	cmplwi r0, 1
/* 804E63CC  40 82 00 AC */	bne lbl_804E6478
/* 804E63D0  A8 7E 00 36 */	lha r3, 0x36(r30)
/* 804E63D4  A8 1E 00 A8 */	lha r0, 0xa8(r30)
/* 804E63D8  7C 03 00 50 */	subf r0, r3, r0
/* 804E63DC  7C 03 07 34 */	extsh r3, r0
/* 804E63E0  4B ED 47 11 */	bl sin_s
/* 804E63E4  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E63E8  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E63EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E63F0  4C 41 13 82 */	cror 2, 1, 2
/* 804E63F4  40 82 00 08 */	bne lbl_804E63FC
/* 804E63F8  48 00 00 08 */	b lbl_804E6400
lbl_804E63FC:
/* 804E63FC  FC 20 08 50 */	fneg f1, f1
lbl_804E6400:
/* 804E6400  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E6404  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E6408  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E640C  40 81 00 68 */	ble lbl_804E6474
/* 804E6410  FC 40 08 34 */	frsqrte f2, f1
/* 804E6414  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804E6418  38 83 69 F4 */	addi r4, r3, lit_1027@l /* 0x806469F4@l */
/* 804E641C  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804E6420  C8 84 00 00 */	lfd f4, 0(r4)
/* 804E6424  FC 02 00 B2 */	fmul f0, f2, f2
/* 804E6428  C8 63 69 FC */	lfd f3, lit_1028@l(r3)  /* 0x806469FC@l */
/* 804E642C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E6430  FC 01 00 32 */	fmul f0, f1, f0
/* 804E6434  FC 03 00 28 */	fsub f0, f3, f0
/* 804E6438  FC 42 00 32 */	fmul f2, f2, f0
/* 804E643C  FC 02 00 B2 */	fmul f0, f2, f2
/* 804E6440  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E6444  FC 01 00 32 */	fmul f0, f1, f0
/* 804E6448  FC 03 00 28 */	fsub f0, f3, f0
/* 804E644C  FC 42 00 32 */	fmul f2, f2, f0
/* 804E6450  FC 02 00 B2 */	fmul f0, f2, f2
/* 804E6454  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E6458  FC 01 00 32 */	fmul f0, f1, f0
/* 804E645C  FC 03 00 28 */	fsub f0, f3, f0
/* 804E6460  FC 02 00 32 */	fmul f0, f2, f0
/* 804E6464  FC 01 00 32 */	fmul f0, f1, f0
/* 804E6468  FC 00 00 18 */	frsp f0, f0
/* 804E646C  D0 01 00 08 */	stfs f0, 8(r1)
/* 804E6470  C0 21 00 08 */	lfs f1, 8(r1)
lbl_804E6474:
/* 804E6474  EF FF 00 72 */	fmuls f31, f31, f1
lbl_804E6478:
/* 804E6478  3C 60 80 64 */	lis r3, lit_6209@ha /* 0x80647DE8@ha */
/* 804E647C  C0 03 7D E8 */	lfs f0, lit_6209@l(r3)  /* 0x80647DE8@l */
/* 804E6480  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804E6484  40 80 00 08 */	bge lbl_804E648C
/* 804E6488  FF E0 00 90 */	fmr f31, f0
lbl_804E648C:
/* 804E648C  D3 FE 01 80 */	stfs f31, 0x180(r30)
/* 804E6490  7F C3 F3 78 */	mr r3, r30
/* 804E6494  7F E4 FB 78 */	mr r4, r31
/* 804E6498  D3 FE 01 F0 */	stfs f31, 0x1f0(r30)
/* 804E649C  4B FF 00 ED */	bl Player_actor_CulcAnimation_Base2
/* 804E64A0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804E64A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E64A8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804E64AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E64B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804E64B4  7C 08 03 A6 */	mtlr r0
/* 804E64B8  38 21 00 30 */	addi r1, r1, 0x30
/* 804E64BC  4E 80 00 20 */	blr 
