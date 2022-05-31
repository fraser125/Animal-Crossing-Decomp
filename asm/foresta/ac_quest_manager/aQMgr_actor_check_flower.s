lbl_804876AC:
/* 804876AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804876B0  7C 08 02 A6 */	mflr r0
/* 804876B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804876B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804876BC  3B E0 00 00 */	li r31, 0
/* 804876C0  93 C1 00 08 */	stw r30, 8(r1)
/* 804876C4  7C 7E 1B 78 */	mr r30, r3
/* 804876C8  7C 83 23 78 */	mr r3, r4
/* 804876CC  7C A4 2B 78 */	mr r4, r5
/* 804876D0  4B F5 BE ED */	bl mQst_GetFlowerSeedNum
/* 804876D4  88 1E 00 01 */	lbz r0, 1(r30)
/* 804876D8  54 00 EF 3E */	rlwinm r0, r0, 0x1d, 0x1c, 0x1f
/* 804876DC  28 00 00 01 */	cmplwi r0, 1
/* 804876E0  40 82 00 50 */	bne lbl_80487730
/* 804876E4  88 1E 00 24 */	lbz r0, 0x24(r30)
/* 804876E8  7C 00 18 00 */	cmpw r0, r3
/* 804876EC  41 81 00 3C */	bgt lbl_80487728
/* 804876F0  38 7E 00 0E */	addi r3, r30, 0xe
/* 804876F4  4B F5 89 51 */	bl mPr_NullCheckPersonalID
/* 804876F8  2C 03 00 01 */	cmpwi r3, 1
/* 804876FC  41 82 00 24 */	beq lbl_80487720
/* 80487700  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80487704  38 7E 00 0E */	addi r3, r30, 0xe
/* 80487708  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8048770C  3C 84 00 02 */	addis r4, r4, 2
/* 80487710  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 80487714  4B F5 8A 31 */	bl mPr_CheckCmpPersonalID
/* 80487718  2C 03 00 01 */	cmpwi r3, 1
/* 8048771C  40 82 00 14 */	bne lbl_80487730
lbl_80487720:
/* 80487720  3B E0 00 01 */	li r31, 1
/* 80487724  48 00 00 0C */	b lbl_80487730
lbl_80487728:
/* 80487728  38 7E 00 0E */	addi r3, r30, 0xe
/* 8048772C  4B F5 89 61 */	bl mPr_ClearPersonalID
lbl_80487730:
/* 80487730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80487734  7F E3 FB 78 */	mr r3, r31
/* 80487738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048773C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80487740  7C 08 03 A6 */	mtlr r0
/* 80487744  38 21 00 10 */	addi r1, r1, 0x10
/* 80487748  4E 80 00 20 */	blr 
