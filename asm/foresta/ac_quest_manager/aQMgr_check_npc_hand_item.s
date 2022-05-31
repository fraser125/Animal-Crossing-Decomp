lbl_80486480:
/* 80486480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486484  7C 08 02 A6 */	mflr r0
/* 80486488  3C 80 81 1D */	lis r4, l_aQMgr_hand_start@ha /* 0x811CEA6C@ha */
/* 8048648C  38 60 00 00 */	li r3, 0
/* 80486490  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486494  38 A4 EA 6C */	addi r5, r4, l_aQMgr_hand_start@l /* 0x811CEA6C@l */
/* 80486498  80 05 00 00 */	lwz r0, 0(r5)
/* 8048649C  2C 00 00 00 */	cmpwi r0, 0
/* 804864A0  40 82 00 28 */	bne lbl_804864C8
/* 804864A4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804864A8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804864AC  3C 84 00 02 */	addis r4, r4, 2
/* 804864B0  80 84 60 94 */	lwz r4, 0x6094(r4)
/* 804864B4  80 04 00 10 */	lwz r0, 0x10(r4)
/* 804864B8  28 00 00 00 */	cmplwi r0, 0
/* 804864BC  41 82 00 0C */	beq lbl_804864C8
/* 804864C0  38 00 00 01 */	li r0, 1
/* 804864C4  90 05 00 00 */	stw r0, 0(r5)
lbl_804864C8:
/* 804864C8  3C 80 81 1D */	lis r4, l_aQMgr_hand_start@ha /* 0x811CEA6C@ha */
/* 804864CC  80 04 EA 6C */	lwz r0, l_aQMgr_hand_start@l(r4)  /* 0x811CEA6C@l */
/* 804864D0  2C 00 00 00 */	cmpwi r0, 0
/* 804864D4  41 82 00 3C */	beq lbl_80486510
/* 804864D8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804864DC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804864E0  3C 84 00 02 */	addis r4, r4, 2
/* 804864E4  80 84 60 94 */	lwz r4, 0x6094(r4)
/* 804864E8  80 04 00 10 */	lwz r0, 0x10(r4)
/* 804864EC  28 00 00 00 */	cmplwi r0, 0
/* 804864F0  40 82 00 20 */	bne lbl_80486510
/* 804864F4  4B F3 91 B5 */	bl func_803BF6A8
/* 804864F8  4B F3 A8 55 */	bl mMsg_Unset_LockContinue
/* 804864FC  3C 60 81 1D */	lis r3, l_aQMgr_hand_start@ha /* 0x811CEA6C@ha */
/* 80486500  38 00 00 00 */	li r0, 0
/* 80486504  38 83 EA 6C */	addi r4, r3, l_aQMgr_hand_start@l /* 0x811CEA6C@l */
/* 80486508  38 60 00 01 */	li r3, 1
/* 8048650C  90 04 00 00 */	stw r0, 0(r4)
lbl_80486510:
/* 80486510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80486514  7C 08 03 A6 */	mtlr r0
/* 80486518  38 21 00 10 */	addi r1, r1, 0x10
/* 8048651C  4E 80 00 20 */	blr 
