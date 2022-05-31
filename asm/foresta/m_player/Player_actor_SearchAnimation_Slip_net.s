lbl_804F1D04:
/* 804F1D04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F1D08  7C 08 02 A6 */	mflr r0
/* 804F1D0C  3C A0 80 64 */	lis r5, lit_2671@ha /* 0x80646C4C@ha */
/* 804F1D10  7C 6B 1B 78 */	mr r11, r3
/* 804F1D14  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F1D18  3C 60 80 64 */	lis r3, lit_801@ha /* 0x80646674@ha */
/* 804F1D1C  C0 25 6C 4C */	lfs f1, lit_2671@l(r5)  /* 0x80646C4C@l */
/* 804F1D20  C0 4B 0D 18 */	lfs f2, 0xd18(r11)
/* 804F1D24  C0 03 66 74 */	lfs f0, lit_801@l(r3)  /* 0x80646674@l */
/* 804F1D28  EC 22 08 2A */	fadds f1, f2, f1
/* 804F1D2C  D0 2B 0D 18 */	stfs f1, 0xd18(r11)
/* 804F1D30  C0 2B 0D 18 */	lfs f1, 0xd18(r11)
/* 804F1D34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F1D38  40 81 00 08 */	ble lbl_804F1D40
/* 804F1D3C  D0 0B 0D 18 */	stfs f0, 0xd18(r11)
lbl_804F1D40:
/* 804F1D40  C0 0B 0D 18 */	lfs f0, 0xd18(r11)
/* 804F1D44  FC 00 00 1E */	fctiwz f0, f0
/* 804F1D48  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804F1D4C  81 21 00 1C */	lwz r9, 0x1c(r1)
/* 804F1D50  55 20 07 FF */	clrlwi. r0, r9, 0x1f
/* 804F1D54  40 82 00 64 */	bne lbl_804F1DB8
/* 804F1D58  80 CB 00 28 */	lwz r6, 0x28(r11)
/* 804F1D5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F1D60  80 0B 00 2C */	lwz r0, 0x2c(r11)
/* 804F1D64  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804F1D68  3C 63 00 02 */	addis r3, r3, 2
/* 804F1D6C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F1D70  90 C1 00 08 */	stw r6, 8(r1)
/* 804F1D74  7C 87 23 78 */	mr r7, r4
/* 804F1D78  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804F1D7C  38 81 00 08 */	addi r4, r1, 8
/* 804F1D80  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F1D84  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F1D88  7D 2A 07 34 */	extsh r10, r9
/* 804F1D8C  38 60 00 37 */	li r3, 0x37
/* 804F1D90  80 0B 00 30 */	lwz r0, 0x30(r11)
/* 804F1D94  38 A0 00 02 */	li r5, 2
/* 804F1D98  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F1D9C  80 0B 00 98 */	lwz r0, 0x98(r11)
/* 804F1DA0  81 86 00 00 */	lwz r12, 0(r6)
/* 804F1DA4  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804F1DA8  A8 CB 00 36 */	lha r6, 0x36(r11)
/* 804F1DAC  7C 09 07 34 */	extsh r9, r0
/* 804F1DB0  7D 89 03 A6 */	mtctr r12
/* 804F1DB4  4E 80 04 21 */	bctrl 
lbl_804F1DB8:
/* 804F1DB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F1DBC  7C 08 03 A6 */	mtlr r0
/* 804F1DC0  38 21 00 20 */	addi r1, r1, 0x20
/* 804F1DC4  4E 80 00 20 */	blr 
