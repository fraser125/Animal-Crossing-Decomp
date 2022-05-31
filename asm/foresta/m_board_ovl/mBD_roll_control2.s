lbl_805C4FE4:
/* 805C4FE4  3C 80 80 65 */	lis r4, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C4FE8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805C4FEC  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 805C4FF0  C0 04 AD CC */	lfs f0, data_8064ADCC@l(r4)  /* 0x8064ADCC@l */
/* 805C4FF4  EC 21 10 28 */	fsubs f1, f1, f2
/* 805C4FF8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805C4FFC  40 80 00 08 */	bge lbl_805C5004
/* 805C5000  D0 03 00 24 */	stfs f0, 0x24(r3)
lbl_805C5004:
/* 805C5004  3C 80 80 65 */	lis r4, lit_503@ha /* 0x8064ADF4@ha */
/* 805C5008  C0 04 AD F4 */	lfs f0, lit_503@l(r4)  /* 0x8064ADF4@l */
/* 805C500C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C5010  40 81 00 88 */	ble lbl_805C5098
/* 805C5014  3C 80 80 65 */	lis r4, lit_504@ha /* 0x8064ADF8@ha */
/* 805C5018  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 805C501C  C0 04 AD F8 */	lfs f0, lit_504@l(r4)  /* 0x8064ADF8@l */
/* 805C5020  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C5024  40 81 00 34 */	ble lbl_805C5058
/* 805C5028  3C A0 80 65 */	lis r5, lit_478@ha /* 0x8064ADD8@ha */
/* 805C502C  3C 80 80 65 */	lis r4, lit_505@ha /* 0x8064ADFC@ha */
/* 805C5030  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 805C5034  C0 25 AD D8 */	lfs f1, lit_478@l(r5)  /* 0x8064ADD8@l */
/* 805C5038  C0 04 AD FC */	lfs f0, lit_505@l(r4)  /* 0x8064ADFC@l */
/* 805C503C  EC 22 00 72 */	fmuls f1, f2, f1
/* 805C5040  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 805C5044  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 805C5048  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C504C  4C 81 00 20 */	blelr 
/* 805C5050  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 805C5054  4E 80 00 20 */	blr 
lbl_805C5058:
/* 805C5058  3C 80 80 65 */	lis r4, lit_506@ha /* 0x8064AE00@ha */
/* 805C505C  C0 04 AE 00 */	lfs f0, lit_506@l(r4)  /* 0x8064AE00@l */
/* 805C5060  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C5064  4C 80 00 20 */	bgelr 
/* 805C5068  3C A0 80 65 */	lis r5, lit_481@ha /* 0x8064ADE4@ha */
/* 805C506C  3C 80 80 65 */	lis r4, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C5070  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 805C5074  C0 25 AD E4 */	lfs f1, lit_481@l(r5)  /* 0x8064ADE4@l */
/* 805C5078  C0 04 AD CC */	lfs f0, data_8064ADCC@l(r4)  /* 0x8064ADCC@l */
/* 805C507C  EC 22 00 72 */	fmuls f1, f2, f1
/* 805C5080  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 805C5084  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 805C5088  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C508C  4C 80 00 20 */	bgelr 
/* 805C5090  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 805C5094  4E 80 00 20 */	blr 
lbl_805C5098:
/* 805C5098  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805C509C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 805C50A0  4E 80 00 20 */	blr 
