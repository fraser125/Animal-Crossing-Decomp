lbl_803BEB40:
/* 803BEB40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BEB44  7C 08 02 A6 */	mflr r0
/* 803BEB48  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BEB4C  39 61 00 20 */	addi r11, r1, 0x20
/* 803BEB50  4B CD C3 85 */	bl func_8009AED4
/* 803BEB54  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803BEB58  7C 7D 1B 78 */	mr r29, r3
/* 803BEB5C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803BEB60  3B C0 00 00 */	li r30, 0
/* 803BEB64  3F E3 00 02 */	addis r31, r3, 2
/* 803BEB68  38 7D 00 07 */	addi r3, r29, 7
/* 803BEB6C  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 803BEB70  48 02 13 AD */	bl mPr_CheckCmpPlayerName
/* 803BEB74  2C 03 00 01 */	cmpwi r3, 1
/* 803BEB78  40 82 00 20 */	bne lbl_803BEB98
/* 803BEB7C  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 803BEB80  38 7D 00 0F */	addi r3, r29, 0xf
/* 803BEB84  38 84 00 08 */	addi r4, r4, 8
/* 803BEB88  4B FF 4C 85 */	bl mLd_CheckCmpLandName
/* 803BEB8C  2C 03 00 01 */	cmpwi r3, 1
/* 803BEB90  40 82 00 08 */	bne lbl_803BEB98
/* 803BEB94  3B C0 00 01 */	li r30, 1
lbl_803BEB98:
/* 803BEB98  7F C3 F3 78 */	mr r3, r30
/* 803BEB9C  39 61 00 20 */	addi r11, r1, 0x20
/* 803BEBA0  4B CD C3 81 */	bl func_8009AF20
/* 803BEBA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BEBA8  7C 08 03 A6 */	mtlr r0
/* 803BEBAC  38 21 00 20 */	addi r1, r1, 0x20
/* 803BEBB0  4E 80 00 20 */	blr 
