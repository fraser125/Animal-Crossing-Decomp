lbl_80488084:
/* 80488084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80488088  7C 08 02 A6 */	mflr r0
/* 8048808C  38 80 00 00 */	li r4, 0
/* 80488090  90 01 00 14 */	stw r0, 0x14(r1)
/* 80488094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80488098  93 C1 00 08 */	stw r30, 8(r1)
/* 8048809C  7C 7E 1B 78 */	mr r30, r3
/* 804880A0  80 03 09 30 */	lwz r0, 0x930(r3)
/* 804880A4  83 E3 01 DC */	lwz r31, 0x1dc(r3)
/* 804880A8  1C 00 00 34 */	mulli r0, r0, 0x34
/* 804880AC  7C BE 02 14 */	add r5, r30, r0
/* 804880B0  80 65 02 1C */	lwz r3, 0x21c(r5)
/* 804880B4  88 03 00 01 */	lbz r0, 1(r3)
/* 804880B8  50 80 1E 78 */	rlwimi r0, r4, 3, 0x19, 0x1c
/* 804880BC  98 03 00 01 */	stb r0, 1(r3)
/* 804880C0  80 65 02 1C */	lwz r3, 0x21c(r5)
/* 804880C4  38 63 00 0C */	addi r3, r3, 0xc
/* 804880C8  4B F4 32 BD */	bl mNpc_ClearAnimalPersonalID
/* 804880CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804880D0  A0 BE 01 E0 */	lhz r5, 0x1e0(r30)
/* 804880D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804880D8  7F E4 FB 78 */	mr r4, r31
/* 804880DC  3C 63 00 02 */	addis r3, r3, 2
/* 804880E0  38 C0 00 00 */	li r6, 0
/* 804880E4  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804880E8  4B F5 8D 41 */	bl mPr_SetPossessionItem
/* 804880EC  38 00 00 05 */	li r0, 5
/* 804880F0  7F C3 F3 78 */	mr r3, r30
/* 804880F4  90 1E 01 B0 */	stw r0, 0x1b0(r30)
/* 804880F8  4B FF F8 B9 */	bl aQMgr_fj_set_msg_no
/* 804880FC  81 9E 09 48 */	lwz r12, 0x948(r30)
/* 80488100  7F C3 F3 78 */	mr r3, r30
/* 80488104  38 80 00 06 */	li r4, 6
/* 80488108  7D 89 03 A6 */	mtctr r12
/* 8048810C  4E 80 04 21 */	bctrl 
/* 80488110  38 00 00 00 */	li r0, 0
/* 80488114  98 1E 01 85 */	stb r0, 0x185(r30)
/* 80488118  4B F3 75 91 */	bl func_803BF6A8
/* 8048811C  80 9E 01 A8 */	lwz r4, 0x1a8(r30)
/* 80488120  4B F3 7E A5 */	bl mMsg_Set_continue_msg_num
/* 80488124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80488128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048812C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80488130  7C 08 03 A6 */	mtlr r0
/* 80488134  38 21 00 10 */	addi r1, r1, 0x10
/* 80488138  4E 80 00 20 */	blr 