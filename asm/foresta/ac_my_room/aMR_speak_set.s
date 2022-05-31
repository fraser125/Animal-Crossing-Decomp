lbl_80476C20:
/* 80476C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80476C24  7C 08 02 A6 */	mflr r0
/* 80476C28  7C 64 1B 78 */	mr r4, r3
/* 80476C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476C30  A8 63 03 EC */	lha r3, 0x3ec(r3)
/* 80476C34  4B FF FF 89 */	bl aMR_GetMessageNum
/* 80476C38  4B F2 18 DD */	bl mDemo_Set_msg_num
/* 80476C3C  38 60 00 00 */	li r3, 0
/* 80476C40  4B F2 1A E9 */	bl mDemo_Set_talk_display_name
/* 80476C44  38 60 00 01 */	li r3, 1
/* 80476C48  4B F2 1C D9 */	bl mDemo_Set_camera
/* 80476C4C  4B F2 37 69 */	bl mDemo_Set_ListenAble
/* 80476C50  3C 60 80 69 */	lis r3, aMR_window_color@ha /* 0x80689ED8@ha */
/* 80476C54  38 63 9E D8 */	addi r3, r3, aMR_window_color@l /* 0x80689ED8@l */
/* 80476C58  4B F2 1C 79 */	bl mDemo_Set_talk_window_color
/* 80476C5C  4B F4 8A 4D */	bl func_803BF6A8
/* 80476C60  38 80 FF FF */	li r4, -1
/* 80476C64  4B F4 93 61 */	bl mMsg_Set_continue_msg_num
/* 80476C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80476C6C  7C 08 03 A6 */	mtlr r0
/* 80476C70  38 21 00 10 */	addi r1, r1, 0x10
/* 80476C74  4E 80 00 20 */	blr 
