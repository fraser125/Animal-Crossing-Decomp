lbl_805BC20C:
/* 805BC20C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BC210  7C 08 02 A6 */	mflr r0
/* 805BC214  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BC218  39 61 00 20 */	addi r11, r1, 0x20
/* 805BC21C  4B AD EC B9 */	bl func_8009AED4
/* 805BC220  7C 7D 1B 78 */	mr r29, r3
/* 805BC224  7C 9E 23 78 */	mr r30, r4
/* 805BC228  38 60 00 04 */	li r3, 4
/* 805BC22C  38 80 00 09 */	li r4, 9
/* 805BC230  4B DD C2 4D */	bl mDemo_Get_OrderValue
/* 805BC234  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 805BC238  4B E0 34 71 */	bl func_803BF6A8
/* 805BC23C  2C 1F 00 00 */	cmpwi r31, 0
/* 805BC240  7C 7F 1B 78 */	mr r31, r3
/* 805BC244  41 82 00 30 */	beq lbl_805BC274
/* 805BC248  38 60 00 04 */	li r3, 4
/* 805BC24C  38 80 00 09 */	li r4, 9
/* 805BC250  38 A0 00 00 */	li r5, 0
/* 805BC254  4B DD C1 E5 */	bl mDemo_Set_OrderValue
/* 805BC258  7F A3 EB 78 */	mr r3, r29
/* 805BC25C  38 80 00 06 */	li r4, 6
/* 805BC260  48 00 06 9D */	bl aSTC_clip_change_talk_proc
/* 805BC264  7F E3 FB 78 */	mr r3, r31
/* 805BC268  4B E0 4A D9 */	bl mMsg_Set_LockContinue
/* 805BC26C  7F C3 F3 78 */	mr r3, r30
/* 805BC270  4B DB 98 AD */	bl Actor_info_save_actor
lbl_805BC274:
/* 805BC274  39 61 00 20 */	addi r11, r1, 0x20
/* 805BC278  4B AD EC A9 */	bl func_8009AF20
/* 805BC27C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BC280  7C 08 03 A6 */	mtlr r0
/* 805BC284  38 21 00 20 */	addi r1, r1, 0x20
/* 805BC288  4E 80 00 20 */	blr 
