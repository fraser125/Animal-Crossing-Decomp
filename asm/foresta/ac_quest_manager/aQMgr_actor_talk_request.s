lbl_804856A4:
/* 804856A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804856A8  7C 08 02 A6 */	mflr r0
/* 804856AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804856B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804856B4  3B E0 00 00 */	li r31, 0
/* 804856B8  93 C1 00 08 */	stw r30, 8(r1)
/* 804856BC  7C 7E 1B 79 */	or. r30, r3, r3
/* 804856C0  41 82 00 50 */	beq lbl_80485710
/* 804856C4  3C 60 81 1D */	lis r3, l_quest_manager_mode@ha /* 0x811CEA5C@ha */
/* 804856C8  88 03 EA 5C */	lbz r0, l_quest_manager_mode@l(r3)  /* 0x811CEA5C@l */
/* 804856CC  28 00 00 00 */	cmplwi r0, 0
/* 804856D0  40 82 00 40 */	bne lbl_80485710
/* 804856D4  7F C4 F3 78 */	mr r4, r30
/* 804856D8  38 60 00 07 */	li r3, 7
/* 804856DC  4B F1 4B 89 */	bl mDemo_Check
/* 804856E0  2C 03 00 00 */	cmpwi r3, 0
/* 804856E4  40 82 00 1C */	bne lbl_80485700
/* 804856E8  3C 60 80 48 */	lis r3, aQMgr_set_talk_info@ha /* 0x804855FC@ha */
/* 804856EC  7F C4 F3 78 */	mr r4, r30
/* 804856F0  38 A3 55 FC */	addi r5, r3, aQMgr_set_talk_info@l /* 0x804855FC@l */
/* 804856F4  38 60 00 07 */	li r3, 7
/* 804856F8  4B F1 4A 65 */	bl mDemo_Request
/* 804856FC  48 00 00 14 */	b lbl_80485710
lbl_80485700:
/* 80485700  4B F1 4D 11 */	bl mDemo_Check_ListenAble
/* 80485704  2C 03 00 00 */	cmpwi r3, 0
/* 80485708  40 82 00 08 */	bne lbl_80485710
/* 8048570C  3B E0 00 01 */	li r31, 1
lbl_80485710:
/* 80485710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485714  7F E3 FB 78 */	mr r3, r31
/* 80485718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048571C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80485720  7C 08 03 A6 */	mtlr r0
/* 80485724  38 21 00 10 */	addi r1, r1, 0x10
/* 80485728  4E 80 00 20 */	blr 
