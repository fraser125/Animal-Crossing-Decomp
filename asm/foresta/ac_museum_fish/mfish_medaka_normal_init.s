lbl_804491EC:
/* 804491EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804491F0  7C 08 02 A6 */	mflr r0
/* 804491F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804491F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804491FC  7C 7F 1B 78 */	mr r31, r3
/* 80449200  A8 03 06 30 */	lha r0, 0x630(r3)
/* 80449204  2C 00 00 02 */	cmpwi r0, 2
/* 80449208  40 82 00 28 */	bne lbl_80449230
/* 8044920C  A8 1F 06 26 */	lha r0, 0x626(r31)
/* 80449210  2C 00 00 00 */	cmpwi r0, 0
/* 80449214  40 80 00 34 */	bge lbl_80449248
/* 80449218  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8044921C  4B FE 83 CD */	bl func_804315E8
/* 80449220  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80449224  EC 00 08 2A */	fadds f0, f0, f1
/* 80449228  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 8044922C  48 00 00 1C */	b lbl_80449248
lbl_80449230:
/* 80449230  4B C1 3A C5 */	bl fqrand
/* 80449234  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80449238  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8044923C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80449240  EC 00 08 2A */	fadds f0, f0, f1
/* 80449244  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
lbl_80449248:
/* 80449248  3C 60 80 45 */	lis r3, mfish_medaka_normal@ha /* 0x80449268@ha */
/* 8044924C  38 03 92 68 */	addi r0, r3, mfish_medaka_normal@l /* 0x80449268@l */
/* 80449250  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80449254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80449258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044925C  7C 08 03 A6 */	mtlr r0
/* 80449260  38 21 00 10 */	addi r1, r1, 0x10
/* 80449264  4E 80 00 20 */	blr 
