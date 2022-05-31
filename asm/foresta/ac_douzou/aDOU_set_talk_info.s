lbl_805ADDE8:
/* 805ADDE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805ADDEC  7C 08 02 A6 */	mflr r0
/* 805ADDF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805ADDF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805ADDF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805ADDFC  7C 7E 1B 78 */	mr r30, r3
/* 805ADE00  4B E1 18 A9 */	bl func_803BF6A8
/* 805ADE04  7C 60 1B 78 */	mr r0, r3
/* 805ADE08  80 7E 02 C0 */	lwz r3, 0x2c0(r30)
/* 805ADE0C  7C 1F 03 78 */	mr r31, r0
/* 805ADE10  4B E0 57 C9 */	bl mHS_get_pl_no
/* 805ADE14  7C 7E 1B 78 */	mr r30, r3
/* 805ADE18  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805ADE1C  4B E0 5C D5 */	bl mLd_PlayerManKindCheckNo
/* 805ADE20  2C 03 00 00 */	cmpwi r3, 0
/* 805ADE24  40 82 00 2C */	bne lbl_805ADE50
/* 805ADE28  7F C4 F3 78 */	mr r4, r30
/* 805ADE2C  38 61 00 0C */	addi r3, r1, 0xc
/* 805ADE30  4B E3 21 59 */	bl mPr_GetPlayerName
/* 805ADE34  2C 03 00 00 */	cmpwi r3, 0
/* 805ADE38  41 82 00 18 */	beq lbl_805ADE50
/* 805ADE3C  7F E3 FB 78 */	mr r3, r31
/* 805ADE40  38 A1 00 0C */	addi r5, r1, 0xc
/* 805ADE44  38 80 00 00 */	li r4, 0
/* 805ADE48  38 C0 00 08 */	li r6, 8
/* 805ADE4C  4B E1 1E 09 */	bl mMsg_Set_free_str
lbl_805ADE50:
/* 805ADE50  38 60 00 00 */	li r3, 0
/* 805ADE54  4B DE A9 F5 */	bl mDemo_Set_talk_turn
/* 805ADE58  38 60 13 6B */	li r3, 0x136b
/* 805ADE5C  4B DE A6 B9 */	bl mDemo_Set_msg_num
/* 805ADE60  38 60 00 00 */	li r3, 0
/* 805ADE64  4B DE A8 C5 */	bl mDemo_Set_talk_display_name
/* 805ADE68  38 60 00 01 */	li r3, 1
/* 805ADE6C  4B DE AA B5 */	bl mDemo_Set_camera
/* 805ADE70  38 60 00 01 */	li r3, 1
/* 805ADE74  4B E2 FB B1 */	bl mPlib_Set_able_hand_all_item_in_demo
/* 805ADE78  4B DE C5 3D */	bl mDemo_Set_ListenAble
/* 805ADE7C  38 60 00 B9 */	li r3, 0xb9
/* 805ADE80  38 A0 00 3C */	li r5, 0x3c
/* 805ADE84  38 80 00 28 */	li r4, 0x28
/* 805ADE88  38 00 00 FF */	li r0, 0xff
/* 805ADE8C  98 61 00 08 */	stb r3, 8(r1)
/* 805ADE90  38 61 00 08 */	addi r3, r1, 8
/* 805ADE94  98 A1 00 09 */	stb r5, 9(r1)
/* 805ADE98  98 81 00 0A */	stb r4, 0xa(r1)
/* 805ADE9C  98 01 00 0B */	stb r0, 0xb(r1)
/* 805ADEA0  4B DE AA 31 */	bl mDemo_Set_talk_window_color
/* 805ADEA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805ADEA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805ADEAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805ADEB0  7C 08 03 A6 */	mtlr r0
/* 805ADEB4  38 21 00 20 */	addi r1, r1, 0x20
/* 805ADEB8  4E 80 00 20 */	blr 
