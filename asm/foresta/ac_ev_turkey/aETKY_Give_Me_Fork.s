lbl_80593BC0:
/* 80593BC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80593BC4  7C 08 02 A6 */	mflr r0
/* 80593BC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80593BCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80593BD0  4B B0 73 05 */	bl func_8009AED4
/* 80593BD4  7C 7D 1B 78 */	mr r29, r3
/* 80593BD8  7C 9E 23 78 */	mr r30, r4
/* 80593BDC  38 60 00 04 */	li r3, 4
/* 80593BE0  38 80 00 09 */	li r4, 9
/* 80593BE4  4B E0 48 99 */	bl mDemo_Get_OrderValue
/* 80593BE8  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80593BEC  4B E2 BA BD */	bl func_803BF6A8
/* 80593BF0  4B E2 C3 DD */	bl mMsg_Get_msg_num
/* 80593BF4  2C 1F 00 02 */	cmpwi r31, 2
/* 80593BF8  41 82 00 64 */	beq lbl_80593C5C
/* 80593BFC  40 80 00 A4 */	bge lbl_80593CA0
/* 80593C00  2C 1F 00 01 */	cmpwi r31, 1
/* 80593C04  40 80 00 08 */	bge lbl_80593C0C
/* 80593C08  48 00 00 98 */	b lbl_80593CA0
lbl_80593C0C:
/* 80593C0C  7F C3 F3 78 */	mr r3, r30
/* 80593C10  38 80 25 30 */	li r4, 0x2530
/* 80593C14  38 A0 00 07 */	li r5, 7
/* 80593C18  38 C0 00 00 */	li r6, 0
/* 80593C1C  38 E0 00 00 */	li r7, 0
/* 80593C20  4B E4 68 41 */	bl mPlib_request_main_give_type1
/* 80593C24  2C 03 00 00 */	cmpwi r3, 0
/* 80593C28  41 82 00 78 */	beq lbl_80593CA0
/* 80593C2C  38 60 00 04 */	li r3, 4
/* 80593C30  38 80 00 09 */	li r4, 9
/* 80593C34  38 A0 00 02 */	li r5, 2
/* 80593C38  4B E0 48 01 */	bl mDemo_Set_OrderValue
/* 80593C3C  4B E2 BA 6D */	bl func_803BF6A8
/* 80593C40  4B E2 D1 01 */	bl mMsg_Set_LockContinue
/* 80593C44  38 60 00 04 */	li r3, 4
/* 80593C48  38 80 00 01 */	li r4, 1
/* 80593C4C  38 A0 00 03 */	li r5, 3
/* 80593C50  4B E0 47 E9 */	bl mDemo_Set_OrderValue
/* 80593C54  4B FF FD 31 */	bl aETKY_DeleteKnifeInPlayerBag
/* 80593C58  48 00 00 48 */	b lbl_80593CA0
lbl_80593C5C:
/* 80593C5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80593C60  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80593C64  3C 63 00 02 */	addis r3, r3, 2
/* 80593C68  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80593C6C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80593C70  28 00 00 00 */	cmplwi r0, 0
/* 80593C74  40 82 00 2C */	bne lbl_80593CA0
/* 80593C78  4B E2 BA 31 */	bl func_803BF6A8
/* 80593C7C  4B E2 D0 D1 */	bl mMsg_Unset_LockContinue
/* 80593C80  38 60 00 04 */	li r3, 4
/* 80593C84  38 80 00 09 */	li r4, 9
/* 80593C88  38 A0 00 00 */	li r5, 0
/* 80593C8C  4B E0 47 AD */	bl mDemo_Set_OrderValue
/* 80593C90  7F A3 EB 78 */	mr r3, r29
/* 80593C94  7F C4 F3 78 */	mr r4, r30
/* 80593C98  38 A0 00 07 */	li r5, 7
/* 80593C9C  48 00 00 E9 */	bl aETKY_SetupTalkStat
lbl_80593CA0:
/* 80593CA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80593CA4  4B B0 72 7D */	bl func_8009AF20
/* 80593CA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80593CAC  7C 08 03 A6 */	mtlr r0
/* 80593CB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80593CB4  4E 80 00 20 */	blr 
