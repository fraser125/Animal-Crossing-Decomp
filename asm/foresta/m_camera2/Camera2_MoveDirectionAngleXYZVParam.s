lbl_803804B4:
/* 803804B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803804B8  7C 08 02 A6 */	mflr r0
/* 803804BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803804C0  39 61 00 20 */	addi r11, r1, 0x20
/* 803804C4  4B D1 AA 05 */	bl func_8009AEC8
/* 803804C8  3C A0 80 64 */	lis r5, lit_1291@ha /* 0x8064150C@ha */
/* 803804CC  7C 9A 23 78 */	mr r26, r4
/* 803804D0  C0 25 15 0C */	lfs f1, lit_1291@l(r5)  /* 0x8064150C@l */
/* 803804D4  3B 63 1B C0 */	addi r27, r3, 0x1bc0
/* 803804D8  A8 84 00 00 */	lha r4, 0(r4)
/* 803804DC  3B E3 1B C6 */	addi r31, r3, 0x1bc6
/* 803804E0  AB C3 1B C0 */	lha r30, 0x1bc0(r3)
/* 803804E4  38 A0 7F FF */	li r5, 0x7fff
/* 803804E8  AB A3 1B C2 */	lha r29, 0x1bc2(r3)
/* 803804EC  38 C0 00 02 */	li r6, 2
/* 803804F0  AB 83 1B C4 */	lha r28, 0x1bc4(r3)
/* 803804F4  7F 63 DB 78 */	mr r3, r27
/* 803804F8  48 03 AE 19 */	bl add_calc_short_angle2
/* 803804FC  3C 60 80 64 */	lis r3, lit_1291@ha /* 0x8064150C@ha */
/* 80380500  A8 9A 00 02 */	lha r4, 2(r26)
/* 80380504  38 A3 15 0C */	addi r5, r3, lit_1291@l /* 0x8064150C@l */
/* 80380508  38 C0 00 02 */	li r6, 2
/* 8038050C  C0 25 00 00 */	lfs f1, 0(r5)
/* 80380510  38 7B 00 02 */	addi r3, r27, 2
/* 80380514  38 A0 7F FF */	li r5, 0x7fff
/* 80380518  48 03 AD F9 */	bl add_calc_short_angle2
/* 8038051C  3C 60 80 64 */	lis r3, lit_1291@ha /* 0x8064150C@ha */
/* 80380520  A8 9A 00 04 */	lha r4, 4(r26)
/* 80380524  38 A3 15 0C */	addi r5, r3, lit_1291@l /* 0x8064150C@l */
/* 80380528  38 C0 00 02 */	li r6, 2
/* 8038052C  C0 25 00 00 */	lfs f1, 0(r5)
/* 80380530  38 7B 00 04 */	addi r3, r27, 4
/* 80380534  38 A0 7F FF */	li r5, 0x7fff
/* 80380538  48 03 AD D9 */	bl add_calc_short_angle2
/* 8038053C  A8 1B 00 00 */	lha r0, 0(r27)
/* 80380540  39 61 00 20 */	addi r11, r1, 0x20
/* 80380544  7C 1E 00 50 */	subf r0, r30, r0
/* 80380548  B0 1F 00 04 */	sth r0, 4(r31)
/* 8038054C  A8 1B 00 02 */	lha r0, 2(r27)
/* 80380550  7C 1D 00 50 */	subf r0, r29, r0
/* 80380554  B0 1F 00 02 */	sth r0, 2(r31)
/* 80380558  A8 1B 00 04 */	lha r0, 4(r27)
/* 8038055C  7C 1C 00 50 */	subf r0, r28, r0
/* 80380560  B0 1F 00 04 */	sth r0, 4(r31)
/* 80380564  4B D1 A9 B1 */	bl func_8009AF14
/* 80380568  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038056C  7C 08 03 A6 */	mtlr r0
/* 80380570  38 21 00 20 */	addi r1, r1, 0x20
/* 80380574  4E 80 00 20 */	blr 
