lbl_804F69A0:
/* 804F69A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804F69A4  7C 08 02 A6 */	mflr r0
/* 804F69A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F69AC  39 61 00 30 */	addi r11, r1, 0x30
/* 804F69B0  4B BA 45 25 */	bl func_8009AED4
/* 804F69B4  7C 7D 1B 78 */	mr r29, r3
/* 804F69B8  4B EC 8C F1 */	bl func_803BF6A8
/* 804F69BC  83 DD 0F 30 */	lwz r30, 0xf30(r29)
/* 804F69C0  7C 7F 1B 78 */	mr r31, r3
/* 804F69C4  38 00 13 27 */	li r0, 0x1327
/* 804F69C8  28 1E 00 00 */	cmplwi r30, 0
/* 804F69CC  41 82 00 9C */	beq lbl_804F6A68
/* 804F69D0  80 7E 02 90 */	lwz r3, 0x290(r30)
/* 804F69D4  2C 03 00 00 */	cmpwi r3, 0
/* 804F69D8  41 80 00 90 */	blt lbl_804F6A68
/* 804F69DC  2C 03 00 29 */	cmpwi r3, 0x29
/* 804F69E0  40 80 00 84 */	bge lbl_804F6A64
/* 804F69E4  80 1D 0C F8 */	lwz r0, 0xcf8(r29)
/* 804F69E8  2C 00 00 38 */	cmpwi r0, 0x38
/* 804F69EC  40 82 00 6C */	bne lbl_804F6A58
/* 804F69F0  80 1D 0D 2C */	lwz r0, 0xd2c(r29)
/* 804F69F4  2C 00 00 00 */	cmpwi r0, 0
/* 804F69F8  41 82 00 54 */	beq lbl_804F6A4C
/* 804F69FC  81 9E 02 14 */	lwz r12, 0x214(r30)
/* 804F6A00  7F C3 F3 78 */	mr r3, r30
/* 804F6A04  7D 89 03 A6 */	mtctr r12
/* 804F6A08  4E 80 04 21 */	bctrl 
/* 804F6A0C  7C 64 1B 78 */	mr r4, r3
/* 804F6A10  38 61 00 0C */	addi r3, r1, 0xc
/* 804F6A14  4B EB EF 91 */	bl mIN_copy_name_str
/* 804F6A18  81 9E 02 14 */	lwz r12, 0x214(r30)
/* 804F6A1C  7F C3 F3 78 */	mr r3, r30
/* 804F6A20  7D 89 03 A6 */	mtctr r12
/* 804F6A24  4E 80 04 21 */	bctrl 
/* 804F6A28  4B EB F0 F1 */	bl mIN_get_item_article
/* 804F6A2C  7C 67 1B 78 */	mr r7, r3
/* 804F6A30  7F E3 FB 78 */	mr r3, r31
/* 804F6A34  38 A1 00 0C */	addi r5, r1, 0xc
/* 804F6A38  38 80 00 00 */	li r4, 0
/* 804F6A3C  38 C0 00 10 */	li r6, 0x10
/* 804F6A40  4B EC 94 11 */	bl mMsg_Set_item_str_art
/* 804F6A44  38 00 13 49 */	li r0, 0x1349
/* 804F6A48  48 00 00 20 */	b lbl_804F6A68
lbl_804F6A4C:
/* 804F6A4C  4B FF FF 3D */	bl Player_actor_Get_sakana_msg_num
/* 804F6A50  7C 60 1B 78 */	mr r0, r3
/* 804F6A54  48 00 00 14 */	b lbl_804F6A68
lbl_804F6A58:
/* 804F6A58  4B FF FF 31 */	bl Player_actor_Get_sakana_msg_num
/* 804F6A5C  7C 60 1B 78 */	mr r0, r3
/* 804F6A60  48 00 00 08 */	b lbl_804F6A68
lbl_804F6A64:
/* 804F6A64  38 03 19 97 */	addi r0, r3, 0x1997
lbl_804F6A68:
/* 804F6A68  7C 03 03 78 */	mr r3, r0
/* 804F6A6C  4B EA 1A A9 */	bl mDemo_Set_msg_num
/* 804F6A70  38 60 00 00 */	li r3, 0
/* 804F6A74  4B EA 1C B5 */	bl mDemo_Set_talk_display_name
/* 804F6A78  38 60 00 05 */	li r3, 5
/* 804F6A7C  4B EA 1E A5 */	bl mDemo_Set_camera
/* 804F6A80  4B EA 39 35 */	bl mDemo_Set_ListenAble
/* 804F6A84  7F E3 FB 78 */	mr r3, r31
/* 804F6A88  4B EC A2 B9 */	bl mMsg_Set_LockContinue
/* 804F6A8C  38 60 00 B9 */	li r3, 0xb9
/* 804F6A90  38 A0 00 F5 */	li r5, 0xf5
/* 804F6A94  38 80 00 50 */	li r4, 0x50
/* 804F6A98  38 00 00 FF */	li r0, 0xff
/* 804F6A9C  98 61 00 08 */	stb r3, 8(r1)
/* 804F6AA0  38 61 00 08 */	addi r3, r1, 8
/* 804F6AA4  98 A1 00 09 */	stb r5, 9(r1)
/* 804F6AA8  98 81 00 0A */	stb r4, 0xa(r1)
/* 804F6AAC  98 01 00 0B */	stb r0, 0xb(r1)
/* 804F6AB0  4B EA 1E 21 */	bl mDemo_Set_talk_window_color
/* 804F6AB4  4B E8 CA 8D */	bl func_80383540
/* 804F6AB8  4B E8 D0 BD */	bl mChoice_Clear_ChoseNum
/* 804F6ABC  38 60 00 28 */	li r3, 0x28
/* 804F6AC0  38 80 01 68 */	li r4, 0x168
/* 804F6AC4  4B E8 4F 0D */	bl mBGMPsComp_make_ps_fanfare
/* 804F6AC8  39 61 00 30 */	addi r11, r1, 0x30
/* 804F6ACC  4B BA 44 55 */	bl func_8009AF20
/* 804F6AD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804F6AD4  7C 08 03 A6 */	mtlr r0
/* 804F6AD8  38 21 00 30 */	addi r1, r1, 0x30
/* 804F6ADC  4E 80 00 20 */	blr 
