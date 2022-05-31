lbl_80548490:
/* 80548490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80548494  7C 08 02 A6 */	mflr r0
/* 80548498  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054849C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805484A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805484A4  7C 9F 23 78 */	mr r31, r4
/* 805484A8  93 C1 00 08 */	stw r30, 8(r1)
/* 805484AC  7C 7E 1B 78 */	mr r30, r3
/* 805484B0  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 805484B4  3C 63 00 02 */	addis r3, r3, 2
/* 805484B8  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 805484BC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805484C0  28 00 00 00 */	cmplwi r0, 0
/* 805484C4  40 82 00 1C */	bne lbl_805484E0
/* 805484C8  4B E7 71 E1 */	bl func_803BF6A8
/* 805484CC  4B E7 88 81 */	bl mMsg_Unset_LockContinue
/* 805484D0  7F C3 F3 78 */	mr r3, r30
/* 805484D4  7F E4 FB 78 */	mr r4, r31
/* 805484D8  38 A0 00 02 */	li r5, 2
/* 805484DC  48 00 2A 41 */	bl aNSC_setupAction
lbl_805484E0:
/* 805484E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805484E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805484E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805484EC  7C 08 03 A6 */	mtlr r0
/* 805484F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805484F4  4E 80 00 20 */	blr 
