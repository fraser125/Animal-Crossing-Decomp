lbl_803856D8:
/* 803856D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803856DC  7C 08 02 A6 */	mflr r0
/* 803856E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803856E4  39 61 00 20 */	addi r11, r1, 0x20
/* 803856E8  4B D1 57 ED */	bl func_8009AED4
/* 803856EC  7C 7F 1B 78 */	mr r31, r3
/* 803856F0  7C 9D 23 78 */	mr r29, r4
/* 803856F4  48 01 F5 D9 */	bl mFI_GetFieldId
/* 803856F8  38 03 A0 00 */	addi r0, r3, -24576
/* 803856FC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80385700  28 00 00 02 */	cmplwi r0, 2
/* 80385704  40 81 00 10 */	ble lbl_80385714
/* 80385708  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8038570C  28 00 60 03 */	cmplwi r0, 0x6003
/* 80385710  40 82 00 68 */	bne lbl_80385778
lbl_80385714:
/* 80385714  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80385718  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8038571C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80385720  3C 84 00 02 */	addis r4, r4, 2
/* 80385724  38 03 A0 00 */	addi r0, r3, -24576
/* 80385728  8B C4 60 03 */	lbz r30, 0x6003(r4)
/* 8038572C  54 1D 07 BE */	clrlwi r29, r0, 0x1e
/* 80385730  7F C3 F3 78 */	mr r3, r30
/* 80385734  48 02 DE 85 */	bl mHS_get_arrange_idx
/* 80385738  2C 1E 00 04 */	cmpwi r30, 4
/* 8038573C  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 80385740  40 80 00 5C */	bge lbl_8038579C
/* 80385744  7C 1D 00 00 */	cmpw r29, r0
/* 80385748  40 82 00 54 */	bne lbl_8038579C
/* 8038574C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80385750  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80385754  1C 00 26 B0 */	mulli r0, r0, 0x26b0
/* 80385758  3C 63 00 01 */	addis r3, r3, 1
/* 8038575C  7F C3 02 14 */	add r30, r3, r0
/* 80385760  8C 1E C3 68 */	lbzu r0, -0x3c98(r30)
/* 80385764  7C 7F 02 14 */	add r3, r31, r0
/* 80385768  4B FF FB E1 */	bl func_80385348
/* 8038576C  98 7E 00 00 */	stb r3, 0(r30)
/* 80385770  38 60 00 01 */	li r3, 1
/* 80385774  48 00 00 2C */	b lbl_803857A0
lbl_80385778:
/* 80385778  2C 1D 00 2F */	cmpwi r29, 0x2f
/* 8038577C  40 82 00 20 */	bne lbl_8038579C
/* 80385780  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80385784  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80385788  3F A3 00 02 */	addis r29, r3, 2
/* 8038578C  88 1D 32 10 */	lbz r0, 0x3210(r29)
/* 80385790  7C 7F 02 14 */	add r3, r31, r0
/* 80385794  4B FF FB B5 */	bl func_80385348
/* 80385798  98 7D 32 10 */	stb r3, 0x3210(r29)
lbl_8038579C:
/* 8038579C  38 60 00 00 */	li r3, 0
lbl_803857A0:
/* 803857A0  39 61 00 20 */	addi r11, r1, 0x20
/* 803857A4  4B D1 57 7D */	bl func_8009AF20
/* 803857A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803857AC  7C 08 03 A6 */	mtlr r0
/* 803857B0  38 21 00 20 */	addi r1, r1, 0x20
/* 803857B4  4E 80 00 20 */	blr 
