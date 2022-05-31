lbl_80603CF8:
/* 80603CF8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80603CFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80603D00  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80603D04  38 E0 00 00 */	li r7, 0
/* 80603D08  3C 84 00 02 */	addis r4, r4, 2
/* 80603D0C  80 84 60 84 */	lwz r4, 0x6084(r4)
/* 80603D10  80 C4 00 00 */	lwz r6, 0(r4)
/* 80603D14  28 06 00 00 */	cmplwi r6, 0
/* 80603D18  41 82 00 90 */	beq lbl_80603DA8
/* 80603D1C  80 06 01 88 */	lwz r0, 0x188(r6)
/* 80603D20  3C 80 80 65 */	lis r4, lit_394@ha /* 0x8064BAB4@ha */
/* 80603D24  80 A6 01 8C */	lwz r5, 0x18c(r6)
/* 80603D28  90 01 00 08 */	stw r0, 8(r1)
/* 80603D2C  80 06 01 90 */	lwz r0, 0x190(r6)
/* 80603D30  C0 24 BA B4 */	lfs f1, lit_394@l(r4)  /* 0x8064BAB4@l */
/* 80603D34  C0 01 00 08 */	lfs f0, 8(r1)
/* 80603D38  C0 43 00 00 */	lfs f2, 0(r3)
/* 80603D3C  EC 01 00 2A */	fadds f0, f1, f0
/* 80603D40  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80603D44  90 01 00 10 */	stw r0, 0x10(r1)
/* 80603D48  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80603D4C  40 80 00 08 */	bge lbl_80603D54
/* 80603D50  60 E7 00 02 */	ori r7, r7, 2
lbl_80603D54:
/* 80603D54  3C 80 80 65 */	lis r4, lit_426@ha /* 0x8064BAD0@ha */
/* 80603D58  C0 01 00 08 */	lfs f0, 8(r1)
/* 80603D5C  C0 24 BA D0 */	lfs f1, lit_426@l(r4)  /* 0x8064BAD0@l */
/* 80603D60  EC 01 00 2A */	fadds f0, f1, f0
/* 80603D64  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80603D68  40 81 00 08 */	ble lbl_80603D70
/* 80603D6C  60 E7 00 08 */	ori r7, r7, 8
lbl_80603D70:
/* 80603D70  3C 80 80 65 */	lis r4, lit_427@ha /* 0x8064BAD4@ha */
/* 80603D74  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80603D78  C0 04 BA D4 */	lfs f0, lit_427@l(r4)  /* 0x8064BAD4@l */
/* 80603D7C  C0 43 00 08 */	lfs f2, 8(r3)
/* 80603D80  EC 00 08 2A */	fadds f0, f0, f1
/* 80603D84  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80603D88  40 81 00 08 */	ble lbl_80603D90
/* 80603D8C  60 E7 00 04 */	ori r7, r7, 4
lbl_80603D90:
/* 80603D90  3C 60 80 65 */	lis r3, lit_396@ha /* 0x8064BABC@ha */
/* 80603D94  C0 03 BA BC */	lfs f0, lit_396@l(r3)  /* 0x8064BABC@l */
/* 80603D98  EC 00 08 2A */	fadds f0, f0, f1
/* 80603D9C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80603DA0  40 80 00 08 */	bge lbl_80603DA8
/* 80603DA4  60 E7 00 01 */	ori r7, r7, 1
lbl_80603DA8:
/* 80603DA8  7C E3 3B 78 */	mr r3, r7
/* 80603DAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80603DB0  4E 80 00 20 */	blr 
