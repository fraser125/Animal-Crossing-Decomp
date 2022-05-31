lbl_803E22A8:
/* 803E22A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E22AC  7C 08 02 A6 */	mflr r0
/* 803E22B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E22B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E22B8  3B E0 00 00 */	li r31, 0
/* 803E22BC  48 00 D1 19 */	bl mSM_CHECK_ALL_FISH_GET
/* 803E22C0  2C 03 00 00 */	cmpwi r3, 0
/* 803E22C4  41 82 00 24 */	beq lbl_803E22E8
/* 803E22C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E22CC  38 80 00 00 */	li r4, 0
/* 803E22D0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E22D4  3C 63 00 02 */	addis r3, r3, 2
/* 803E22D8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803E22DC  88 63 11 02 */	lbz r3, 0x1102(r3)
/* 803E22E0  4B FF FF 99 */	bl mPr_GetTalkPermission
/* 803E22E4  7C 7F 1B 78 */	mr r31, r3
lbl_803E22E8:
/* 803E22E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E22EC  7F E3 FB 78 */	mr r3, r31
/* 803E22F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E22F4  7C 08 03 A6 */	mtlr r0
/* 803E22F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803E22FC  4E 80 00 20 */	blr 
