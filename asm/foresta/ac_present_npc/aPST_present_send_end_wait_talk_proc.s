lbl_80587CBC:
/* 80587CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80587CC0  7C 08 02 A6 */	mflr r0
/* 80587CC4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80587CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80587CCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80587CD0  7C 7F 1B 78 */	mr r31, r3
/* 80587CD4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80587CD8  3C 63 00 02 */	addis r3, r3, 2
/* 80587CDC  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80587CE0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80587CE4  28 00 00 00 */	cmplwi r0, 0
/* 80587CE8  40 82 00 18 */	bne lbl_80587D00
/* 80587CEC  4B E3 79 BD */	bl func_803BF6A8
/* 80587CF0  4B E3 90 5D */	bl mMsg_Unset_LockContinue
/* 80587CF4  7F E3 FB 78 */	mr r3, r31
/* 80587CF8  38 80 00 02 */	li r4, 2
/* 80587CFC  48 00 00 19 */	bl aPST_change_talk_proc
lbl_80587D00:
/* 80587D00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80587D04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80587D08  7C 08 03 A6 */	mtlr r0
/* 80587D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80587D10  4E 80 00 20 */	blr 
