lbl_803F00D0:
/* 803F00D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F00D4  7C 08 02 A6 */	mflr r0
/* 803F00D8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F00DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F00E0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F00E4  3C 84 00 02 */	addis r4, r4, 2
/* 803F00E8  54 60 08 3C */	slwi r0, r3, 1
/* 803F00EC  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 803F00F0  80 84 00 88 */	lwz r4, 0x88(r4)
/* 803F00F4  7C 80 04 30 */	srw r0, r4, r0
/* 803F00F8  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803F00FC  28 00 00 02 */	cmplwi r0, 2
/* 803F0100  40 82 00 18 */	bne lbl_803F0118
/* 803F0104  4B FF 2E 85 */	bl mQst_CheckLimitbyPossessionIdx
/* 803F0108  2C 03 00 00 */	cmpwi r3, 0
/* 803F010C  41 82 00 0C */	beq lbl_803F0118
/* 803F0110  38 60 00 01 */	li r3, 1
/* 803F0114  48 00 00 08 */	b lbl_803F011C
lbl_803F0118:
/* 803F0118  38 60 00 00 */	li r3, 0
lbl_803F011C:
/* 803F011C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F0120  7C 08 03 A6 */	mtlr r0
/* 803F0124  38 21 00 10 */	addi r1, r1, 0x10
/* 803F0128  4E 80 00 20 */	blr 
