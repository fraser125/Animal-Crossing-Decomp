lbl_8051E55C:
/* 8051E55C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051E560  7C 08 02 A6 */	mflr r0
/* 8051E564  38 80 00 0D */	li r4, 0xd
/* 8051E568  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051E56C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051E570  93 C1 00 08 */	stw r30, 8(r1)
/* 8051E574  7C 7E 1B 78 */	mr r30, r3
/* 8051E578  38 60 00 44 */	li r3, 0x44
/* 8051E57C  4B E7 F8 51 */	bl mEv_get_save_area
/* 8051E580  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051E584  7C 7F 1B 78 */	mr r31, r3
/* 8051E588  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8051E58C  38 80 00 00 */	li r4, 0
/* 8051E590  3C 63 00 02 */	addis r3, r3, 2
/* 8051E594  38 A0 00 00 */	li r5, 0
/* 8051E598  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8051E59C  4B EC 24 31 */	bl mPr_GetPossessionItemSumWithCond
/* 8051E5A0  28 03 00 00 */	cmplwi r3, 0
/* 8051E5A4  40 82 00 1C */	bne lbl_8051E5C0
/* 8051E5A8  38 60 24 09 */	li r3, 0x2409
/* 8051E5AC  4B E7 9F 69 */	bl mDemo_Set_msg_num
/* 8051E5B0  7F C3 F3 78 */	mr r3, r30
/* 8051E5B4  38 80 00 00 */	li r4, 0
/* 8051E5B8  48 00 02 81 */	bl aEDZ_change_talk_proc
/* 8051E5BC  48 00 00 2C */	b lbl_8051E5E8
lbl_8051E5C0:
/* 8051E5C0  38 60 24 05 */	li r3, 0x2405
/* 8051E5C4  4B E7 9F 51 */	bl mDemo_Set_msg_num
/* 8051E5C8  7F C3 F3 78 */	mr r3, r30
/* 8051E5CC  38 80 00 03 */	li r4, 3
/* 8051E5D0  48 00 02 69 */	bl aEDZ_change_talk_proc
/* 8051E5D4  38 00 00 01 */	li r0, 1
/* 8051E5D8  B0 1E 09 9C */	sth r0, 0x99c(r30)
/* 8051E5DC  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8051E5E0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8051E5E4  B0 1F 00 00 */	sth r0, 0(r31)
lbl_8051E5E8:
/* 8051E5E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051E5EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051E5F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051E5F4  7C 08 03 A6 */	mtlr r0
/* 8051E5F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8051E5FC  4E 80 00 20 */	blr 
