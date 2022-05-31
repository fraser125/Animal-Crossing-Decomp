lbl_804D0304:
/* 804D0304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D0308  7C 08 02 A6 */	mflr r0
/* 804D030C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804D0310  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D0314  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D0318  7C 7F 1B 78 */	mr r31, r3
/* 804D031C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804D0320  3C 63 00 02 */	addis r3, r3, 2
/* 804D0324  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804D0328  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804D032C  41 80 00 2C */	blt lbl_804D0358
/* 804D0330  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000A8C0@ha */
/* 804D0334  38 03 A8 C0 */	addi r0, r3, 0xA8C0 /* 0x0000A8C0@l */
/* 804D0338  7C 04 00 00 */	cmpw r4, r0
/* 804D033C  40 80 00 1C */	bge lbl_804D0358
/* 804D0340  7C 84 00 50 */	subf r4, r4, r0
/* 804D0344  38 60 00 00 */	li r3, 0
/* 804D0348  4B FF FD 09 */	bl calc_scale_Ef_Room_Sunshine_Posthouse
/* 804D034C  FC 00 08 50 */	fneg f0, f1
/* 804D0350  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804D0354  48 00 00 3C */	b lbl_804D0390
lbl_804D0358:
/* 804D0358  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804D035C  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804D0360  7C 04 00 00 */	cmpw r4, r0
/* 804D0364  41 80 00 20 */	blt lbl_804D0384
/* 804D0368  38 03 51 80 */	addi r0, r3, 0x5180
/* 804D036C  38 60 00 01 */	li r3, 1
/* 804D0370  7C 84 00 50 */	subf r4, r4, r0
/* 804D0374  4B FF FC DD */	bl calc_scale_Ef_Room_Sunshine_Posthouse
/* 804D0378  FC 00 08 50 */	fneg f0, f1
/* 804D037C  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804D0380  48 00 00 10 */	b lbl_804D0390
lbl_804D0384:
/* 804D0384  3C 60 80 64 */	lis r3, lit_391@ha /* 0x80646388@ha */
/* 804D0388  C0 03 63 88 */	lfs f0, lit_391@l(r3)  /* 0x80646388@l */
/* 804D038C  D0 1F 00 5C */	stfs f0, 0x5c(r31)
lbl_804D0390:
/* 804D0390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D0394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D0398  7C 08 03 A6 */	mtlr r0
/* 804D039C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D03A0  4E 80 00 20 */	blr 
