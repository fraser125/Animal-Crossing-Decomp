lbl_80595D90:
/* 80595D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80595D94  7C 08 02 A6 */	mflr r0
/* 80595D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80595D9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80595DA0  7C 7F 1B 78 */	mr r31, r3
/* 80595DA4  4B FF FE B1 */	bl aIAB_anime_proc
/* 80595DA8  3C 60 80 65 */	lis r3, lit_425@ha /* 0x80649D94@ha */
/* 80595DAC  3C A0 80 65 */	lis r5, lit_398@ha /* 0x80649D8C@ha */
/* 80595DB0  38 83 9D 94 */	addi r4, r3, lit_425@l /* 0x80649D94@l */
/* 80595DB4  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80595DB8  C0 04 00 00 */	lfs f0, 0(r4)
/* 80595DBC  3C 60 80 65 */	lis r3, lit_426@ha /* 0x80649D98@ha */
/* 80595DC0  C0 45 9D 8C */	lfs f2, lit_398@l(r5)  /* 0x80649D8C@l */
/* 80595DC4  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80595DC8  C0 03 9D 98 */	lfs f0, lit_426@l(r3)  /* 0x80649D98@l */
/* 80595DCC  EC 22 00 72 */	fmuls f1, f2, f1
/* 80595DD0  EC 63 08 2A */	fadds f3, f3, f1
/* 80595DD4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80595DD8  40 81 00 08 */	ble lbl_80595DE0
/* 80595DDC  FC 60 00 90 */	fmr f3, f0
lbl_80595DE0:
/* 80595DE0  D0 7F 00 78 */	stfs f3, 0x78(r31)
/* 80595DE4  7F E3 FB 78 */	mr r3, r31
/* 80595DE8  38 BF 00 28 */	addi r5, r31, 0x28
/* 80595DEC  38 80 00 25 */	li r4, 0x25
/* 80595DF0  48 09 81 55 */	bl sAdo_OngenPos
/* 80595DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80595DF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80595DFC  7C 08 03 A6 */	mtlr r0
/* 80595E00  38 21 00 10 */	addi r1, r1, 0x10
/* 80595E04  4E 80 00 20 */	blr 
