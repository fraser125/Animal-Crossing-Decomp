lbl_805AD81C:
/* 805AD81C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AD820  7C 08 02 A6 */	mflr r0
/* 805AD824  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AD828  39 61 00 20 */	addi r11, r1, 0x20
/* 805AD82C  4B AE D6 A9 */	bl func_8009AED4
/* 805AD830  4B E0 5D A9 */	bl mHS_get_pl_no
/* 805AD834  1C A3 24 40 */	mulli r5, r3, 0x2440
/* 805AD838  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805AD83C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805AD840  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 805AD844  7C 80 2A 14 */	add r4, r0, r5
/* 805AD848  3B C0 00 00 */	li r30, 0
/* 805AD84C  3B E4 00 20 */	addi r31, r4, 0x20
/* 805AD850  3B A0 00 00 */	li r29, 0
/* 805AD854  4B E0 62 9D */	bl mLd_PlayerManKindCheckNo
/* 805AD858  2C 03 00 00 */	cmpwi r3, 0
/* 805AD85C  40 82 00 1C */	bne lbl_805AD878
/* 805AD860  7F E3 FB 78 */	mr r3, r31
/* 805AD864  4B E3 2D ED */	bl mPr_CheckPrivate
/* 805AD868  2C 03 00 00 */	cmpwi r3, 0
/* 805AD86C  41 82 00 0C */	beq lbl_805AD878
/* 805AD870  8B DF 00 14 */	lbz r30, 0x14(r31)
/* 805AD874  8B BF 00 15 */	lbz r29, 0x15(r31)
lbl_805AD878:
/* 805AD878  7F C0 07 74 */	extsb r0, r30
/* 805AD87C  7F A3 07 74 */	extsb r3, r29
/* 805AD880  54 00 18 38 */	slwi r0, r0, 3
/* 805AD884  7C 63 02 14 */	add r3, r3, r0
/* 805AD888  39 61 00 20 */	addi r11, r1, 0x20
/* 805AD88C  4B AE D6 95 */	bl func_8009AF20
/* 805AD890  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AD894  7C 08 03 A6 */	mtlr r0
/* 805AD898  38 21 00 20 */	addi r1, r1, 0x20
/* 805AD89C  4E 80 00 20 */	blr 
