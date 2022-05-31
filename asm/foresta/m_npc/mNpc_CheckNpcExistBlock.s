lbl_803CCB88:
/* 803CCB88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CCB8C  7C 08 02 A6 */	mflr r0
/* 803CCB90  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CCB94  39 61 00 30 */	addi r11, r1, 0x30
/* 803CCB98  4B CC E3 3D */	bl func_8009AED4
/* 803CCB9C  2C 03 00 00 */	cmpwi r3, 0
/* 803CCBA0  7C 9D 23 78 */	mr r29, r4
/* 803CCBA4  7C BE 2B 78 */	mr r30, r5
/* 803CCBA8  3B E0 00 00 */	li r31, 0
/* 803CCBAC  41 80 00 6C */	blt lbl_803CCC18
/* 803CCBB0  2C 03 00 10 */	cmpwi r3, 0x10
/* 803CCBB4  40 80 00 64 */	bge lbl_803CCC18
/* 803CCBB8  1C A3 00 38 */	mulli r5, r3, 0x38
/* 803CCBBC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CCBC0  38 61 00 0C */	addi r3, r1, 0xc
/* 803CCBC4  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803CCBC8  7C A0 2A 14 */	add r5, r0, r5
/* 803CCBCC  38 81 00 08 */	addi r4, r1, 8
/* 803CCBD0  3D 05 00 02 */	addis r8, r5, 2
/* 803CCBD4  38 A1 00 10 */	addi r5, r1, 0x10
/* 803CCBD8  80 E8 61 74 */	lwz r7, 0x6174(r8)
/* 803CCBDC  80 C8 61 78 */	lwz r6, 0x6178(r8)
/* 803CCBE0  80 08 61 7C */	lwz r0, 0x617c(r8)
/* 803CCBE4  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803CCBE8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803CCBEC  90 01 00 18 */	stw r0, 0x18(r1)
/* 803CCBF0  4B FD 8B 71 */	bl mFI_Wpos2BlockNum
/* 803CCBF4  2C 03 00 01 */	cmpwi r3, 1
/* 803CCBF8  40 82 00 20 */	bne lbl_803CCC18
/* 803CCBFC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803CCC00  7C 00 E8 00 */	cmpw r0, r29
/* 803CCC04  40 82 00 14 */	bne lbl_803CCC18
/* 803CCC08  80 01 00 08 */	lwz r0, 8(r1)
/* 803CCC0C  7C 00 F0 00 */	cmpw r0, r30
/* 803CCC10  40 82 00 08 */	bne lbl_803CCC18
/* 803CCC14  3B E0 00 01 */	li r31, 1
lbl_803CCC18:
/* 803CCC18  7F E3 FB 78 */	mr r3, r31
/* 803CCC1C  39 61 00 30 */	addi r11, r1, 0x30
/* 803CCC20  4B CC E3 01 */	bl func_8009AF20
/* 803CCC24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CCC28  7C 08 03 A6 */	mtlr r0
/* 803CCC2C  38 21 00 30 */	addi r1, r1, 0x30
/* 803CCC30  4E 80 00 20 */	blr 
