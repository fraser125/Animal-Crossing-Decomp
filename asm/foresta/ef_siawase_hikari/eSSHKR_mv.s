lbl_8061D2BC:
/* 8061D2BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061D2C0  7C 08 02 A6 */	mflr r0
/* 8061D2C4  38 80 00 0E */	li r4, 0xe
/* 8061D2C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061D2CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8061D2D0  7C 7F 1B 78 */	mr r31, r3
/* 8061D2D4  38 BF 00 10 */	addi r5, r31, 0x10
/* 8061D2D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8061D2DC  48 01 0C 69 */	bl sAdo_OngenPos
/* 8061D2E0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8061D2E4  7F E3 FB 78 */	mr r3, r31
/* 8061D2E8  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8061D2EC  38 80 00 16 */	li r4, 0x16
/* 8061D2F0  3F C5 00 02 */	addis r30, r5, 2
/* 8061D2F4  38 A0 00 7A */	li r5, 0x7a
/* 8061D2F8  80 DE 60 9C */	lwz r6, 0x609c(r30)
/* 8061D2FC  81 86 00 10 */	lwz r12, 0x10(r6)
/* 8061D300  7D 89 03 A6 */	mtctr r12
/* 8061D304  4E 80 04 21 */	bctrl 
/* 8061D308  88 1F 00 0F */	lbz r0, 0xf(r31)
/* 8061D30C  28 00 00 00 */	cmplwi r0, 0
/* 8061D310  40 82 00 50 */	bne lbl_8061D360
/* 8061D314  80 7E 60 9C */	lwz r3, 0x609c(r30)
/* 8061D318  3C A0 80 65 */	lis r5, lit_387@ha /* 0x8064CB68@ha */
/* 8061D31C  A8 1F 00 00 */	lha r0, 0(r31)
/* 8061D320  3C 80 80 65 */	lis r4, lit_402@ha /* 0x8064CB6C@ha */
/* 8061D324  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8061D328  20 00 00 16 */	subfic r0, r0, 0x16
/* 8061D32C  C0 25 CB 68 */	lfs f1, lit_387@l(r5)  /* 0x8064CB68@l */
/* 8061D330  C0 44 CB 6C */	lfs f2, lit_402@l(r4)  /* 0x8064CB6C@l */
/* 8061D334  7C 03 07 34 */	extsh r3, r0
/* 8061D338  38 80 00 00 */	li r4, 0
/* 8061D33C  38 A0 00 15 */	li r5, 0x15
/* 8061D340  7D 89 03 A6 */	mtctr r12
/* 8061D344  4E 80 04 21 */	bctrl 
/* 8061D348  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 8061D34C  38 00 00 96 */	li r0, 0x96
/* 8061D350  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 8061D354  D0 3F 00 3C */	stfs f1, 0x3c(r31)
/* 8061D358  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 8061D35C  48 00 00 78 */	b lbl_8061D3D4
lbl_8061D360:
/* 8061D360  28 00 00 01 */	cmplwi r0, 1
/* 8061D364  40 82 00 24 */	bne lbl_8061D388
/* 8061D368  3C 60 80 65 */	lis r3, lit_402@ha /* 0x8064CB6C@ha */
/* 8061D36C  38 00 00 96 */	li r0, 0x96
/* 8061D370  C0 03 CB 6C */	lfs f0, lit_402@l(r3)  /* 0x8064CB6C@l */
/* 8061D374  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8061D378  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8061D37C  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8061D380  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 8061D384  48 00 00 50 */	b lbl_8061D3D4
lbl_8061D388:
/* 8061D388  28 00 00 02 */	cmplwi r0, 2
/* 8061D38C  40 82 00 48 */	bne lbl_8061D3D4
/* 8061D390  80 7E 60 9C */	lwz r3, 0x609c(r30)
/* 8061D394  3C A0 80 65 */	lis r5, lit_403@ha /* 0x8064CB70@ha */
/* 8061D398  A8 1F 00 00 */	lha r0, 0(r31)
/* 8061D39C  3C 80 80 65 */	lis r4, lit_387@ha /* 0x8064CB68@ha */
/* 8061D3A0  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8061D3A4  20 00 00 48 */	subfic r0, r0, 0x48
/* 8061D3A8  C0 25 CB 70 */	lfs f1, lit_403@l(r5)  /* 0x8064CB70@l */
/* 8061D3AC  C0 44 CB 68 */	lfs f2, lit_387@l(r4)  /* 0x8064CB68@l */
/* 8061D3B0  7C 03 07 34 */	extsh r3, r0
/* 8061D3B4  38 80 00 00 */	li r4, 0
/* 8061D3B8  38 A0 00 48 */	li r5, 0x48
/* 8061D3BC  7D 89 03 A6 */	mtctr r12
/* 8061D3C0  4E 80 04 21 */	bctrl 
/* 8061D3C4  FC 00 08 1E */	fctiwz f0, f1
/* 8061D3C8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8061D3CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8061D3D0  B0 1F 00 4C */	sth r0, 0x4c(r31)
lbl_8061D3D4:
/* 8061D3D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061D3D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8061D3DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8061D3E0  7C 08 03 A6 */	mtlr r0
/* 8061D3E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8061D3E8  4E 80 00 20 */	blr 
