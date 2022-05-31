lbl_804B9E38:
/* 804B9E38  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804B9E3C  7C 08 02 A6 */	mflr r0
/* 804B9E40  90 01 00 54 */	stw r0, 0x54(r1)
/* 804B9E44  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 804B9E48  7C 7F 1B 78 */	mr r31, r3
/* 804B9E4C  A0 63 00 20 */	lhz r3, 0x20(r3)
/* 804B9E50  28 03 00 00 */	cmplwi r3, 0
/* 804B9E54  41 82 00 0C */	beq lbl_804B9E60
/* 804B9E58  38 03 FF FF */	addi r0, r3, -1
/* 804B9E5C  B0 1F 00 20 */	sth r0, 0x20(r31)
lbl_804B9E60:
/* 804B9E60  A0 1F 00 20 */	lhz r0, 0x20(r31)
/* 804B9E64  28 00 00 00 */	cmplwi r0, 0
/* 804B9E68  40 82 01 8C */	bne lbl_804B9FF4
/* 804B9E6C  A8 1F 00 16 */	lha r0, 0x16(r31)
/* 804B9E70  2C 00 00 02 */	cmpwi r0, 2
/* 804B9E74  41 82 00 C0 */	beq lbl_804B9F34
/* 804B9E78  40 80 01 7C */	bge lbl_804B9FF4
/* 804B9E7C  2C 00 00 01 */	cmpwi r0, 1
/* 804B9E80  40 80 00 08 */	bge lbl_804B9E88
/* 804B9E84  48 00 01 70 */	b lbl_804B9FF4
lbl_804B9E88:
/* 804B9E88  A0 BF 00 1C */	lhz r5, 0x1c(r31)
/* 804B9E8C  3C 60 43 30 */	lis r3, 0x4330
/* 804B9E90  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 804B9E94  3C 80 80 64 */	lis r4, lit_1524@ha /* 0x806460DC@ha */
/* 804B9E98  90 A1 00 34 */	stw r5, 0x34(r1)
/* 804B9E9C  C8 44 60 DC */	lfd f2, lit_1524@l(r4)  /* 0x806460DC@l */
/* 804B9EA0  90 61 00 30 */	stw r3, 0x30(r1)
/* 804B9EA4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804B9EA8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804B9EAC  EC 20 10 28 */	fsubs f1, f0, f2
/* 804B9EB0  90 61 00 38 */	stw r3, 0x38(r1)
/* 804B9EB4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804B9EB8  EC 00 10 28 */	fsubs f0, f0, f2
/* 804B9EBC  EC 01 00 24 */	fdivs f0, f1, f0
/* 804B9EC0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 804B9EC4  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 804B9EC8  38 03 00 01 */	addi r0, r3, 1
/* 804B9ECC  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 804B9ED0  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 804B9ED4  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 804B9ED8  7C 03 00 40 */	cmplw r3, r0
/* 804B9EDC  40 81 01 18 */	ble lbl_804B9FF4
/* 804B9EE0  80 7F 00 00 */	lwz r3, 0(r31)
/* 804B9EE4  38 81 00 20 */	addi r4, r1, 0x20
/* 804B9EE8  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B9EEC  38 A0 00 01 */	li r5, 1
/* 804B9EF0  90 61 00 20 */	stw r3, 0x20(r1)
/* 804B9EF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B9EF8  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B9EFC  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B9F00  A0 7F 00 18 */	lhz r3, 0x18(r31)
/* 804B9F04  4B EE D9 2D */	bl mFI_SetFG_common
/* 804B9F08  80 9F 00 00 */	lwz r4, 0(r31)
/* 804B9F0C  38 61 00 14 */	addi r3, r1, 0x14
/* 804B9F10  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B9F14  90 81 00 14 */	stw r4, 0x14(r1)
/* 804B9F18  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B9F1C  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B9F20  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B9F24  4B EE F1 05 */	bl mFI_Wpos2DepositOFF
/* 804B9F28  38 00 00 00 */	li r0, 0
/* 804B9F2C  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 804B9F30  48 00 00 C4 */	b lbl_804B9FF4
lbl_804B9F34:
/* 804B9F34  A0 BF 00 1C */	lhz r5, 0x1c(r31)
/* 804B9F38  3C 60 43 30 */	lis r3, 0x4330
/* 804B9F3C  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 804B9F40  3C 80 80 64 */	lis r4, lit_1524@ha /* 0x806460DC@ha */
/* 804B9F44  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 804B9F48  3C A0 80 64 */	lis r5, lit_845@ha /* 0x806460B4@ha */
/* 804B9F4C  C8 44 60 DC */	lfd f2, lit_1524@l(r4)  /* 0x806460DC@l */
/* 804B9F50  90 61 00 38 */	stw r3, 0x38(r1)
/* 804B9F54  C0 65 60 B4 */	lfs f3, lit_845@l(r5)  /* 0x806460B4@l */
/* 804B9F58  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804B9F5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B9F60  EC 20 10 28 */	fsubs f1, f0, f2
/* 804B9F64  90 61 00 30 */	stw r3, 0x30(r1)
/* 804B9F68  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804B9F6C  EC 00 10 28 */	fsubs f0, f0, f2
/* 804B9F70  EC 01 00 24 */	fdivs f0, f1, f0
/* 804B9F74  EC 03 00 28 */	fsubs f0, f3, f0
/* 804B9F78  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 804B9F7C  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 804B9F80  38 03 00 01 */	addi r0, r3, 1
/* 804B9F84  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 804B9F88  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 804B9F8C  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 804B9F90  7C 03 00 40 */	cmplw r3, r0
/* 804B9F94  40 81 00 60 */	ble lbl_804B9FF4
/* 804B9F98  A0 7F 00 1A */	lhz r3, 0x1a(r31)
/* 804B9F9C  7F E5 FB 78 */	mr r5, r31
/* 804B9FA0  A0 9F 00 18 */	lhz r4, 0x18(r31)
/* 804B9FA4  38 C0 00 00 */	li r6, 0
/* 804B9FA8  4B FF EA 81 */	bl bIT_common_hole_throw
/* 804B9FAC  A0 1F 00 1A */	lhz r0, 0x1a(r31)
/* 804B9FB0  28 00 00 00 */	cmplwi r0, 0
/* 804B9FB4  40 82 00 38 */	bne lbl_804B9FEC
/* 804B9FB8  A0 1F 00 18 */	lhz r0, 0x18(r31)
/* 804B9FBC  28 00 00 5D */	cmplwi r0, 0x5d
/* 804B9FC0  40 82 00 2C */	bne lbl_804B9FEC
/* 804B9FC4  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B9FC8  38 81 00 08 */	addi r4, r1, 8
/* 804B9FCC  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B9FD0  38 60 00 00 */	li r3, 0
/* 804B9FD4  38 A0 00 01 */	li r5, 1
/* 804B9FD8  90 C1 00 08 */	stw r6, 8(r1)
/* 804B9FDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B9FE0  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B9FE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B9FE8  4B EE D8 49 */	bl mFI_SetFG_common
lbl_804B9FEC:
/* 804B9FEC  38 00 00 00 */	li r0, 0
/* 804B9FF0  B0 1F 00 16 */	sth r0, 0x16(r31)
lbl_804B9FF4:
/* 804B9FF4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804B9FF8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 804B9FFC  7C 08 03 A6 */	mtlr r0
/* 804BA000  38 21 00 50 */	addi r1, r1, 0x50
/* 804BA004  4E 80 00 20 */	blr 
