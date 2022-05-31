lbl_8056F354:
/* 8056F354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F358  7C 08 02 A6 */	mflr r0
/* 8056F35C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056F360  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056F368  93 C1 00 08 */	stw r30, 8(r1)
/* 8056F36C  7C 7E 1B 78 */	mr r30, r3
/* 8056F370  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8056F374  3C 63 00 02 */	addis r3, r3, 2
/* 8056F378  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8056F37C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8056F380  28 00 00 00 */	cmplwi r0, 0
/* 8056F384  40 82 00 3C */	bne lbl_8056F3C0
/* 8056F388  4B E5 03 21 */	bl func_803BF6A8
/* 8056F38C  7C 60 1B 78 */	mr r0, r3
/* 8056F390  7F C3 F3 78 */	mr r3, r30
/* 8056F394  7C 1F 03 78 */	mr r31, r0
/* 8056F398  4B FF FD 31 */	bl aNRG_set_shop_address
/* 8056F39C  38 00 00 0E */	li r0, 0xe
/* 8056F3A0  7F E3 FB 78 */	mr r3, r31
/* 8056F3A4  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8056F3A8  4B E5 07 E1 */	bl mMsg_request_main_appear_wait_type1
/* 8056F3AC  7F E3 FB 78 */	mr r3, r31
/* 8056F3B0  4B E5 19 79 */	bl mMsg_Set_ForceNext
/* 8056F3B4  7F C3 F3 78 */	mr r3, r30
/* 8056F3B8  38 80 00 05 */	li r4, 5
/* 8056F3BC  48 00 00 1D */	bl aNRG_demand_payment_change_talk_proc
lbl_8056F3C0:
/* 8056F3C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F3C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056F3C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056F3CC  7C 08 03 A6 */	mtlr r0
/* 8056F3D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F3D4  4E 80 00 20 */	blr 
