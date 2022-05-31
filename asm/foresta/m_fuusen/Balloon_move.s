lbl_803B16FC:
/* 803B16FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1700  7C 08 02 A6 */	mflr r0
/* 803B1704  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B170C  7C 7F 1B 78 */	mr r31, r3
/* 803B1710  4B FF 35 BD */	bl mFI_GetFieldId
/* 803B1714  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 803B1718  40 82 00 C4 */	bne lbl_803B17DC
/* 803B171C  4B FE 96 11 */	bl mEv_CheckFirstIntro
/* 803B1720  2C 03 00 00 */	cmpwi r3, 0
/* 803B1724  40 82 00 B8 */	bne lbl_803B17DC
/* 803B1728  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B172C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B1730  3C C3 00 03 */	addis r6, r3, 3
/* 803B1734  A8 06 88 94 */	lha r0, -0x776c(r6)
/* 803B1738  2C 00 00 03 */	cmpwi r0, 3
/* 803B173C  41 82 00 30 */	beq lbl_803B176C
/* 803B1740  40 80 00 18 */	bge lbl_803B1758
/* 803B1744  2C 00 00 02 */	cmpwi r0, 2
/* 803B1748  40 80 00 94 */	bge lbl_803B17DC
/* 803B174C  2C 00 00 00 */	cmpwi r0, 0
/* 803B1750  40 80 00 1C */	bge lbl_803B176C
/* 803B1754  48 00 00 88 */	b lbl_803B17DC
lbl_803B1758:
/* 803B1758  2C 00 00 05 */	cmpwi r0, 5
/* 803B175C  40 80 00 80 */	bge lbl_803B17DC
/* 803B1760  7F E3 FB 78 */	mr r3, r31
/* 803B1764  4B FF FD BD */	bl Balloon_make_fuusen
/* 803B1768  48 00 00 74 */	b lbl_803B17DC
lbl_803B176C:
/* 803B176C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B1770  38 60 00 05 */	li r3, 5
/* 803B1774  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803B1778  3C 85 00 02 */	addis r4, r5, 2
/* 803B177C  88 E4 61 21 */	lbz r7, 0x6121(r4)
/* 803B1780  7C E4 07 34 */	extsh r4, r7
/* 803B1784  7C 04 1B D6 */	divw r0, r4, r3
/* 803B1788  7C 00 19 D6 */	mullw r0, r0, r3
/* 803B178C  7C 00 20 50 */	subf r0, r0, r4
/* 803B1790  2C 00 00 03 */	cmpwi r0, 3
/* 803B1794  40 82 00 48 */	bne lbl_803B17DC
/* 803B1798  3C A5 00 03 */	addis r5, r5, 3
/* 803B179C  A8 05 88 96 */	lha r0, -0x776a(r5)
/* 803B17A0  7C 04 00 00 */	cmpw r4, r0
/* 803B17A4  41 82 00 38 */	beq lbl_803B17DC
/* 803B17A8  B0 E5 88 96 */	sth r7, -0x776a(r5)
/* 803B17AC  A8 06 88 94 */	lha r0, -0x776c(r6)
/* 803B17B0  2C 00 00 03 */	cmpwi r0, 3
/* 803B17B4  40 82 00 18 */	bne lbl_803B17CC
/* 803B17B8  3C 60 80 64 */	lis r3, lit_420@ha /* 0x80642194@ha */
/* 803B17BC  C0 25 88 98 */	lfs f1, -0x7768(r5)
/* 803B17C0  C0 03 21 94 */	lfs f0, lit_420@l(r3)  /* 0x80642194@l */
/* 803B17C4  EC 01 00 2A */	fadds f0, f1, f0
/* 803B17C8  D0 05 88 98 */	stfs f0, -0x7768(r5)
lbl_803B17CC:
/* 803B17CC  38 00 00 01 */	li r0, 1
/* 803B17D0  7F E3 FB 78 */	mr r3, r31
/* 803B17D4  B0 06 88 94 */	sth r0, -0x776c(r6)
/* 803B17D8  4B FF FE 19 */	bl Balloon_chk_make_fuusen
lbl_803B17DC:
/* 803B17DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B17E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B17E4  7C 08 03 A6 */	mtlr r0
/* 803B17E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803B17EC  4E 80 00 20 */	blr 
