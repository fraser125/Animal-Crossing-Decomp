lbl_8051F67C:
/* 8051F67C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051F680  7C 08 02 A6 */	mflr r0
/* 8051F684  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051F688  39 61 00 20 */	addi r11, r1, 0x20
/* 8051F68C  4B B7 B8 45 */	bl func_8009AED0
/* 8051F690  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051F694  3B A0 00 00 */	li r29, 0
/* 8051F698  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051F69C  3F C3 00 02 */	addis r30, r3, 2
/* 8051F6A0  83 9E 61 3C */	lwz r28, 0x613c(r30)
lbl_8051F6A4:
/* 8051F6A4  38 1D 2D 28 */	addi r0, r29, 0x2d28
/* 8051F6A8  7F 83 E3 78 */	mr r3, r28
/* 8051F6AC  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8051F6B0  38 A0 00 00 */	li r5, 0
/* 8051F6B4  4B EC 10 BD */	bl mPr_GetPossessionItemIdxWithCond
/* 8051F6B8  3B FD 2D 28 */	addi r31, r29, 0x2d28
/* 8051F6BC  7C 64 1B 78 */	mr r4, r3
/* 8051F6C0  48 00 00 28 */	b lbl_8051F6E8
lbl_8051F6C4:
/* 8051F6C4  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 8051F6C8  38 A0 00 00 */	li r5, 0
/* 8051F6CC  38 C0 00 00 */	li r6, 0
/* 8051F6D0  4B EC 17 59 */	bl mPr_SetPossessionItem
/* 8051F6D4  7F 83 E3 78 */	mr r3, r28
/* 8051F6D8  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 8051F6DC  38 A0 00 00 */	li r5, 0
/* 8051F6E0  4B EC 10 91 */	bl mPr_GetPossessionItemIdxWithCond
/* 8051F6E4  7C 64 1B 78 */	mr r4, r3
lbl_8051F6E8:
/* 8051F6E8  2C 04 FF FF */	cmpwi r4, -1
/* 8051F6EC  40 82 FF D8 */	bne lbl_8051F6C4
/* 8051F6F0  3B BD 00 01 */	addi r29, r29, 1
/* 8051F6F4  2C 1D 00 05 */	cmpwi r29, 5
/* 8051F6F8  41 80 FF AC */	blt lbl_8051F6A4
/* 8051F6FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8051F700  4B B7 B8 1D */	bl func_8009AF1C
/* 8051F704  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051F708  7C 08 03 A6 */	mtlr r0
/* 8051F70C  38 21 00 20 */	addi r1, r1, 0x20
/* 8051F710  4E 80 00 20 */	blr 
