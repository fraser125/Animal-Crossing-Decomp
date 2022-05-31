lbl_804843D0:
/* 804843D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804843D4  7C 08 02 A6 */	mflr r0
/* 804843D8  3C A0 80 48 */	lis r5, aPSM_set_talk_info@ha /* 0x80484214@ha */
/* 804843DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804843E0  38 C5 42 14 */	addi r6, r5, aPSM_set_talk_info@l /* 0x80484214@l */
/* 804843E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804843E8  7C 7F 1B 78 */	mr r31, r3
/* 804843EC  38 BF 01 90 */	addi r5, r31, 0x190
/* 804843F0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804843F4  7C 9E 23 78 */	mr r30, r4
/* 804843F8  4B F7 2F 55 */	bl mRlib_PSnowman_NormalTalk
/* 804843FC  2C 03 00 00 */	cmpwi r3, 0
/* 80484400  40 82 00 68 */	bne lbl_80484468
/* 80484404  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80484408  38 61 00 14 */	addi r3, r1, 0x14
/* 8048440C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80484410  90 81 00 14 */	stw r4, 0x14(r1)
/* 80484414  90 01 00 18 */	stw r0, 0x18(r1)
/* 80484418  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8048441C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80484420  4B F2 30 11 */	bl mFI_GetUnitFG
/* 80484424  28 03 00 00 */	cmplwi r3, 0
/* 80484428  41 82 00 0C */	beq lbl_80484434
/* 8048442C  38 7F 00 06 */	addi r3, r31, 6
/* 80484430  4B F6 D7 3D */	bl mSN_ClearSnowman
lbl_80484434:
/* 80484434  7F E3 FB 78 */	mr r3, r31
/* 80484438  7F C4 F3 78 */	mr r4, r30
/* 8048443C  4B FF FE 11 */	bl aPSMAN_MakeBreakEffect
/* 80484440  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80484444  38 61 00 08 */	addi r3, r1, 8
/* 80484448  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8048444C  90 81 00 08 */	stw r4, 8(r1)
/* 80484450  90 01 00 0C */	stw r0, 0xc(r1)
/* 80484454  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80484458  90 01 00 10 */	stw r0, 0x10(r1)
/* 8048445C  4B F6 02 DD */	bl mQst_BackSnowman
/* 80484460  7F E3 FB 78 */	mr r3, r31
/* 80484464  4B EE FF DD */	bl Actor_delete
lbl_80484468:
/* 80484468  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8048446C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80484470  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80484474  7C 08 03 A6 */	mtlr r0
/* 80484478  38 21 00 30 */	addi r1, r1, 0x30
/* 8048447C  4E 80 00 20 */	blr 
