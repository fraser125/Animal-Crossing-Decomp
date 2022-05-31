lbl_80427798:
/* 80427798  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042779C  7C 08 02 A6 */	mflr r0
/* 804277A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804277A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804277A8  4B C7 37 2D */	bl func_8009AED4
/* 804277AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804277B0  3B A0 00 00 */	li r29, 0
/* 804277B4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804277B8  3C 63 00 02 */	addis r3, r3, 2
/* 804277BC  8B E3 60 03 */	lbz r31, 0x6003(r3)
/* 804277C0  28 1F 00 04 */	cmplwi r31, 4
/* 804277C4  40 80 00 68 */	bge lbl_8042782C
/* 804277C8  7F E3 FB 78 */	mr r3, r31
/* 804277CC  4B F8 BD ED */	bl mHS_get_arrange_idx
/* 804277D0  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 804277D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804277D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804277DC  1C 1F 24 40 */	mulli r0, r31, 0x2440
/* 804277E0  7C 83 22 14 */	add r4, r3, r4
/* 804277E4  7C 63 02 14 */	add r3, r3, r0
/* 804277E8  3F C4 00 01 */	addis r30, r4, 1
/* 804277EC  3B E3 00 20 */	addi r31, r3, 0x20
/* 804277F0  7F E3 FB 78 */	mr r3, r31
/* 804277F4  3B DE 9C E8 */	addi r30, r30, -25368
/* 804277F8  4B FB 88 4D */	bl mPr_NullCheckPersonalID
/* 804277FC  2C 03 00 01 */	cmpwi r3, 1
/* 80427800  41 82 00 2C */	beq lbl_8042782C
/* 80427804  7F E3 FB 78 */	mr r3, r31
/* 80427808  7F C4 F3 78 */	mr r4, r30
/* 8042780C  4B FB 89 39 */	bl mPr_CheckCmpPersonalID
/* 80427810  2C 03 00 01 */	cmpwi r3, 1
/* 80427814  40 82 00 18 */	bne lbl_8042782C
/* 80427818  88 1E 00 24 */	lbz r0, 0x24(r30)
/* 8042781C  38 60 00 01 */	li r3, 1
/* 80427820  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80427824  3B A0 00 01 */	li r29, 1
/* 80427828  98 1E 00 24 */	stb r0, 0x24(r30)
lbl_8042782C:
/* 8042782C  7F A3 EB 78 */	mr r3, r29
/* 80427830  39 61 00 20 */	addi r11, r1, 0x20
/* 80427834  4B C7 36 ED */	bl func_8009AF20
/* 80427838  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042783C  7C 08 03 A6 */	mtlr r0
/* 80427840  38 21 00 20 */	addi r1, r1, 0x20
/* 80427844  4E 80 00 20 */	blr 
