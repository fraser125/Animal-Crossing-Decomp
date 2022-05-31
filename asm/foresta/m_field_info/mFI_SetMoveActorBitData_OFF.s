lbl_803A8674:
/* 803A8674  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A8678  7C 08 02 A6 */	mflr r0
/* 803A867C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A8680  39 61 00 20 */	addi r11, r1, 0x20
/* 803A8684  4B CF 28 51 */	bl func_8009AED4
/* 803A8688  7C 9E 23 78 */	mr r30, r4
/* 803A868C  7C BF 2B 78 */	mr r31, r5
/* 803A8690  7C 7D 1B 78 */	mr r29, r3
/* 803A8694  7F C3 F3 78 */	mr r3, r30
/* 803A8698  7F E4 FB 78 */	mr r4, r31
/* 803A869C  4B FF CB 6D */	bl mFI_BlockCheck
/* 803A86A0  2C 03 00 00 */	cmpwi r3, 0
/* 803A86A4  41 82 00 54 */	beq lbl_803A86F8
/* 803A86A8  7F A0 07 35 */	extsh. r0, r29
/* 803A86AC  41 80 00 4C */	blt lbl_803A86F8
/* 803A86B0  7F A0 07 34 */	extsh r0, r29
/* 803A86B4  2C 00 00 10 */	cmpwi r0, 0x10
/* 803A86B8  40 80 00 40 */	bge lbl_803A86F8
/* 803A86BC  7F C3 F3 78 */	mr r3, r30
/* 803A86C0  7F E4 FB 78 */	mr r4, r31
/* 803A86C4  4B FF CA F5 */	bl mFI_GetBlockNum
/* 803A86C8  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A86CC  7F A0 07 34 */	extsh r0, r29
/* 803A86D0  38 A4 7A 58 */	addi r5, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A86D4  1C 63 06 14 */	mulli r3, r3, 0x614
/* 803A86D8  80 A5 00 00 */	lwz r5, 0(r5)
/* 803A86DC  38 80 00 01 */	li r4, 1
/* 803A86E0  7C 80 00 30 */	slw r0, r4, r0
/* 803A86E4  80 85 00 74 */	lwz r4, 0x74(r5)
/* 803A86E8  38 A3 06 0C */	addi r5, r3, 0x60c
/* 803A86EC  7C 64 2A 2E */	lhzx r3, r4, r5
/* 803A86F0  7C 60 00 78 */	andc r0, r3, r0
/* 803A86F4  7C 04 2B 2E */	sthx r0, r4, r5
lbl_803A86F8:
/* 803A86F8  39 61 00 20 */	addi r11, r1, 0x20
/* 803A86FC  4B CF 28 25 */	bl func_8009AF20
/* 803A8700  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A8704  7C 08 03 A6 */	mtlr r0
/* 803A8708  38 21 00 20 */	addi r1, r1, 0x20
/* 803A870C  4E 80 00 20 */	blr 
