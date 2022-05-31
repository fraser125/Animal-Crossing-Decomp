lbl_80476C78:
/* 80476C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80476C7C  7C 08 02 A6 */	mflr r0
/* 80476C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476C84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80476C88  7C 7F 1B 78 */	mr r31, r3
/* 80476C8C  7F E4 FB 78 */	mr r4, r31
/* 80476C90  A8 63 03 EC */	lha r3, 0x3ec(r3)
/* 80476C94  4B FF FF 29 */	bl aMR_GetMessageNum
/* 80476C98  4B F2 18 7D */	bl mDemo_Set_msg_num
/* 80476C9C  4B F2 37 19 */	bl mDemo_Set_ListenAble
/* 80476CA0  A8 1F 03 EC */	lha r0, 0x3ec(r31)
/* 80476CA4  3C 60 80 69 */	lis r3, aMR_window_se_flag@ha /* 0x80689DD4@ha */
/* 80476CA8  38 63 9D D4 */	addi r3, r3, aMR_window_se_flag@l /* 0x80689DD4@l */
/* 80476CAC  54 00 10 3A */	slwi r0, r0, 2
/* 80476CB0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80476CB4  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 80476CB8  4B F2 19 E9 */	bl mDemo_Set_use_zoom_sound
/* 80476CBC  3C 60 80 69 */	lis r3, aMR_window_color@ha /* 0x80689ED8@ha */
/* 80476CC0  38 63 9E D8 */	addi r3, r3, aMR_window_color@l /* 0x80689ED8@l */
/* 80476CC4  4B F2 1C 0D */	bl mDemo_Set_talk_window_color
/* 80476CC8  4B F4 89 E1 */	bl func_803BF6A8
/* 80476CCC  38 80 FF FF */	li r4, -1
/* 80476CD0  4B F4 92 F5 */	bl mMsg_Set_continue_msg_num
/* 80476CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80476CD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80476CDC  7C 08 03 A6 */	mtlr r0
/* 80476CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80476CE4  4E 80 00 20 */	blr 
