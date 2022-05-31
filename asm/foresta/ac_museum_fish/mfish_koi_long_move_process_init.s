lbl_8043E628:
/* 8043E628  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 8043E62C  C0 43 05 E8 */	lfs f2, 0x5e8(r3)
/* 8043E630  C0 24 42 5C */	lfs f1, lit_471@l(r4)  /* 0x8064425C@l */
/* 8043E634  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8043E638  40 80 00 08 */	bge lbl_8043E640
/* 8043E63C  FC 20 10 90 */	fmr f1, f2
lbl_8043E640:
/* 8043E640  3C 80 80 64 */	lis r4, lit_666@ha /* 0x806442AC@ha */
/* 8043E644  C0 04 42 AC */	lfs f0, lit_666@l(r4)  /* 0x806442AC@l */
/* 8043E648  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043E64C  40 81 00 20 */	ble lbl_8043E66C
/* 8043E650  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 8043E654  C0 04 42 5C */	lfs f0, lit_471@l(r4)  /* 0x8064425C@l */
/* 8043E658  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043E65C  40 80 00 08 */	bge lbl_8043E664
/* 8043E660  48 00 00 10 */	b lbl_8043E670
lbl_8043E664:
/* 8043E664  FC 40 00 90 */	fmr f2, f0
/* 8043E668  48 00 00 08 */	b lbl_8043E670
lbl_8043E66C:
/* 8043E66C  FC 40 00 90 */	fmr f2, f0
lbl_8043E670:
/* 8043E670  3C A0 80 64 */	lis r5, lit_468@ha /* 0x80644248@ha */
/* 8043E674  3C 80 80 44 */	lis r4, mfish_koi_long_move_process@ha /* 0x8043E690@ha */
/* 8043E678  D0 43 05 F0 */	stfs f2, 0x5f0(r3)
/* 8043E67C  38 04 E6 90 */	addi r0, r4, mfish_koi_long_move_process@l /* 0x8043E690@l */
/* 8043E680  C0 05 42 48 */	lfs f0, lit_468@l(r5)  /* 0x80644248@l */
/* 8043E684  D0 03 05 EC */	stfs f0, 0x5ec(r3)
/* 8043E688  90 03 00 34 */	stw r0, 0x34(r3)
/* 8043E68C  4E 80 00 20 */	blr 
