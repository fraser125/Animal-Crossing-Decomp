lbl_8050FEC0:
/* 8050FEC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050FEC4  7C 08 02 A6 */	mflr r0
/* 8050FEC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050FECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050FED0  7C 9F 23 78 */	mr r31, r4
/* 8050FED4  93 C1 00 08 */	stw r30, 8(r1)
/* 8050FED8  7C 7E 1B 78 */	mr r30, r3
/* 8050FEDC  4B FF FE CD */	bl mAGrw_ClearAroundBlockInfo
/* 8050FEE0  2C 1F 00 00 */	cmpwi r31, 0
/* 8050FEE4  40 82 00 1C */	bne lbl_8050FF00
/* 8050FEE8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050FEEC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050FEF0  3C 63 00 02 */	addis r3, r3, 2
/* 8050FEF4  38 03 27 54 */	addi r0, r3, 0x2754
/* 8050FEF8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8050FEFC  48 00 00 20 */	b lbl_8050FF1C
lbl_8050FF00:
/* 8050FF00  2C 1F 00 01 */	cmpwi r31, 1
/* 8050FF04  40 82 00 18 */	bne lbl_8050FF1C
/* 8050FF08  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050FF0C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050FF10  3C 63 00 02 */	addis r3, r3, 2
/* 8050FF14  38 03 25 54 */	addi r0, r3, 0x2554
/* 8050FF18  90 1E 00 08 */	stw r0, 8(r30)
lbl_8050FF1C:
/* 8050FF1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050FF20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050FF24  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050FF28  7C 08 03 A6 */	mtlr r0
/* 8050FF2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8050FF30  4E 80 00 20 */	blr 
