lbl_80410320:
/* 80410320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80410324  7C 08 02 A6 */	mflr r0
/* 80410328  3C A0 80 66 */	lis r5, AirplaneMove@ha /* 0x8065FA4C@ha */
/* 8041032C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80410330  38 A5 FA 4C */	addi r5, r5, AirplaneMove@l /* 0x8065FA4C@l */
/* 80410334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80410338  7C 7F 1B 78 */	mr r31, r3
/* 8041033C  93 C1 00 08 */	stw r30, 8(r1)
/* 80410340  7C 9E 23 78 */	mr r30, r4
/* 80410344  C0 03 01 88 */	lfs f0, 0x188(r3)
/* 80410348  D0 03 01 84 */	stfs f0, 0x184(r3)
/* 8041034C  A8 03 01 74 */	lha r0, 0x174(r3)
/* 80410350  54 00 10 3A */	slwi r0, r0, 2
/* 80410354  7D 85 00 2E */	lwzx r12, r5, r0
/* 80410358  7D 89 03 A6 */	mtctr r12
/* 8041035C  4E 80 04 21 */	bctrl 
/* 80410360  7F E3 FB 78 */	mr r3, r31
/* 80410364  7F C4 F3 78 */	mr r4, r30
/* 80410368  4B FF FF 0D */	bl aAp_ZbuttonChangeStatus
/* 8041036C  7F E3 FB 78 */	mr r3, r31
/* 80410370  7F E4 FB 78 */	mr r4, r31
/* 80410374  7F C5 F3 78 */	mr r5, r30
/* 80410378  4B FF FD 9D */	bl aAp_CommonHandle
/* 8041037C  A8 7F 01 74 */	lha r3, 0x174(r31)
/* 80410380  4B FF FF 75 */	bl aAp_GetBgCheckOffsetY
/* 80410384  FC 00 08 90 */	fmr f0, f1
/* 80410388  3C 60 80 64 */	lis r3, lit_665@ha /* 0x80643824@ha */
/* 8041038C  C0 23 38 24 */	lfs f1, lit_665@l(r3)  /* 0x80643824@l */
/* 80410390  7F E4 FB 78 */	mr r4, r31
/* 80410394  38 60 00 00 */	li r3, 0
/* 80410398  38 A0 00 00 */	li r5, 0
/* 8041039C  FC 40 00 90 */	fmr f2, f0
/* 804103A0  38 C0 00 00 */	li r6, 0
/* 804103A4  38 E0 00 00 */	li r7, 0
/* 804103A8  4B F7 99 F9 */	bl mCoBG_BgCheckControll
/* 804103AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804103B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804103B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804103B8  7C 08 03 A6 */	mtlr r0
/* 804103BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804103C0  4E 80 00 20 */	blr 
