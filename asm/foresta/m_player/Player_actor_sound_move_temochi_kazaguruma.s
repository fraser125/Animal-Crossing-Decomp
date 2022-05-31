lbl_804DFBE4:
/* 804DFBE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFBE8  7C 08 02 A6 */	mflr r0
/* 804DFBEC  3C 80 80 64 */	lis r4, lit_5593@ha /* 0x80647D68@ha */
/* 804DFBF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFBF4  C0 24 7D 68 */	lfs f1, lit_5593@l(r4)  /* 0x80647D68@l */
/* 804DFBF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DFBFC  7C 7F 1B 78 */	mr r31, r3
/* 804DFC00  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804DFC04  C0 5F 0A 24 */	lfs f2, 0xa24(r31)
/* 804DFC08  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804DFC0C  EC 22 08 24 */	fdivs f1, f2, f1
/* 804DFC10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DFC14  4C 41 13 82 */	cror 2, 1, 2
/* 804DFC18  40 82 00 08 */	bne lbl_804DFC20
/* 804DFC1C  48 00 00 08 */	b lbl_804DFC24
lbl_804DFC20:
/* 804DFC20  FC 20 08 50 */	fneg f1, f1
lbl_804DFC24:
/* 804DFC24  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804DFC28  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804DFC2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DFC30  40 81 00 0C */	ble lbl_804DFC3C
/* 804DFC34  FC 20 00 90 */	fmr f1, f0
/* 804DFC38  48 00 00 18 */	b lbl_804DFC50
lbl_804DFC3C:
/* 804DFC3C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804DFC40  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804DFC44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DFC48  40 80 00 08 */	bge lbl_804DFC50
/* 804DFC4C  FC 20 00 90 */	fmr f1, f0
lbl_804DFC50:
/* 804DFC50  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804DFC54  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804DFC58  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804DFC5C  41 82 00 18 */	beq lbl_804DFC74
/* 804DFC60  48 14 EC 05 */	bl sAdo_kazagurumaLevel
/* 804DFC64  7F E3 FB 78 */	mr r3, r31
/* 804DFC68  38 BF 00 28 */	addi r5, r31, 0x28
/* 804DFC6C  38 80 00 4D */	li r4, 0x4d
/* 804DFC70  48 14 E2 D5 */	bl sAdo_OngenPos
lbl_804DFC74:
/* 804DFC74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFC78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DFC7C  7C 08 03 A6 */	mtlr r0
/* 804DFC80  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFC84  4E 80 00 20 */	blr 
