lbl_803E7308:
/* 803E7308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E730C  7C 08 02 A6 */	mflr r0
/* 803E7310  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E7314  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 803E7318  1C 80 26 B0 */	mulli r4, r0, 0x26b0
/* 803E731C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E7320  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803E7324  7C 60 22 14 */	add r3, r0, r4
/* 803E7328  3C 63 00 01 */	addis r3, r3, 1
/* 803E732C  38 63 9C E8 */	addi r3, r3, -25368
/* 803E7330  4B FF 8D 15 */	bl mPr_NullCheckPersonalID
/* 803E7334  20 63 00 01 */	subfic r3, r3, 1
/* 803E7338  30 03 FF FF */	addic r0, r3, -1
/* 803E733C  7C 60 19 10 */	subfe r3, r0, r3
/* 803E7340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E7344  7C 08 03 A6 */	mtlr r0
/* 803E7348  38 21 00 10 */	addi r1, r1, 0x10
/* 803E734C  4E 80 00 20 */	blr 
