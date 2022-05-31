lbl_805644CC:
/* 805644CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805644D0  7C 08 02 A6 */	mflr r0
/* 805644D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805644D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805644DC  7C 7F 1B 78 */	mr r31, r3
/* 805644E0  3C 60 80 6C */	lis r3, force_message_table@ha /* 0x806BDF90@ha */
/* 805644E4  93 C1 00 08 */	stw r30, 8(r1)
/* 805644E8  38 63 DF 90 */	addi r3, r3, force_message_table@l /* 0x806BDF90@l */
/* 805644EC  88 1F 09 B2 */	lbz r0, 0x9b2(r31)
/* 805644F0  54 00 10 3A */	slwi r0, r0, 2
/* 805644F4  7C 63 00 2E */	lwzx r3, r3, r0
/* 805644F8  4B E3 40 1D */	bl mDemo_Set_msg_num
/* 805644FC  38 60 00 80 */	li r3, 0x80
/* 80564500  4B FF D7 4D */	bl aNNW_first_talk_end
/* 80564504  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80564508  7F E4 FB 78 */	mr r4, r31
/* 8056450C  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80564510  80 63 00 00 */	lwz r3, 0(r3)
/* 80564514  4B FF D4 45 */	bl aNNW_search_sister
/* 80564518  88 1F 09 B2 */	lbz r0, 0x9b2(r31)
/* 8056451C  7C 7E 1B 78 */	mr r30, r3
/* 80564520  2C 00 00 05 */	cmpwi r0, 5
/* 80564524  41 82 00 6C */	beq lbl_80564590
/* 80564528  40 80 00 14 */	bge lbl_8056453C
/* 8056452C  2C 00 00 02 */	cmpwi r0, 2
/* 80564530  41 82 00 18 */	beq lbl_80564548
/* 80564534  40 80 00 3C */	bge lbl_80564570
/* 80564538  48 00 01 64 */	b lbl_8056469C
lbl_8056453C:
/* 8056453C  2C 00 00 07 */	cmpwi r0, 7
/* 80564540  40 80 01 5C */	bge lbl_8056469C
/* 80564544  48 00 00 B4 */	b lbl_805645F8
lbl_80564548:
/* 80564548  7F E3 FB 78 */	mr r3, r31
/* 8056454C  38 80 00 2D */	li r4, 0x2d
/* 80564550  4B FF FF 39 */	bl aNNW_change_talk_proc
/* 80564554  4B E5 B1 55 */	bl func_803BF6A8
/* 80564558  4B E5 C8 01 */	bl mMsg_Set_idling_req
/* 8056455C  38 60 00 00 */	li r3, 0
/* 80564560  4B E3 42 E9 */	bl mDemo_Set_talk_turn
/* 80564564  38 60 00 01 */	li r3, 1
/* 80564568  4B E3 43 B9 */	bl mDemo_Set_camera
/* 8056456C  48 00 01 4C */	b lbl_805646B8
lbl_80564570:
/* 80564570  7F E3 FB 78 */	mr r3, r31
/* 80564574  38 80 00 15 */	li r4, 0x15
/* 80564578  4B FF FF 11 */	bl aNNW_change_talk_proc
/* 8056457C  38 60 00 01 */	li r3, 1
/* 80564580  4B E3 42 C9 */	bl mDemo_Set_talk_turn
/* 80564584  38 60 00 03 */	li r3, 3
/* 80564588  4B E3 43 99 */	bl mDemo_Set_camera
/* 8056458C  48 00 01 2C */	b lbl_805646B8
lbl_80564590:
/* 80564590  4B FF D3 5D */	bl aNNW_get_next_sister_message
/* 80564594  2C 03 00 00 */	cmpwi r3, 0
/* 80564598  41 82 00 14 */	beq lbl_805645AC
/* 8056459C  7F E3 FB 78 */	mr r3, r31
/* 805645A0  38 80 00 09 */	li r4, 9
/* 805645A4  4B FF FE E5 */	bl aNNW_change_talk_proc
/* 805645A8  48 00 00 10 */	b lbl_805645B8
lbl_805645AC:
/* 805645AC  7F E3 FB 78 */	mr r3, r31
/* 805645B0  38 80 00 0B */	li r4, 0xb
/* 805645B4  4B FF FE D5 */	bl aNNW_change_talk_proc
lbl_805645B8:
/* 805645B8  38 60 00 01 */	li r3, 1
/* 805645BC  4B E3 42 8D */	bl mDemo_Set_talk_turn
/* 805645C0  38 60 00 03 */	li r3, 3
/* 805645C4  4B E3 43 5D */	bl mDemo_Set_camera
/* 805645C8  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805645CC  7F C4 F3 78 */	mr r4, r30
/* 805645D0  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805645D4  7F E5 FB 78 */	mr r5, r31
/* 805645D8  80 63 00 00 */	lwz r3, 0(r3)
/* 805645DC  38 C0 00 06 */	li r6, 6
/* 805645E0  4B E1 D9 21 */	bl Camera2_request_main_needlework_talk
/* 805645E4  4B FF D0 F5 */	bl func_805616D8
/* 805645E8  4B E3 3F 2D */	bl mDemo_Set_msg_num
/* 805645EC  38 00 00 02 */	li r0, 2
/* 805645F0  98 1F 09 73 */	stb r0, 0x973(r31)
/* 805645F4  48 00 00 C4 */	b lbl_805646B8
lbl_805645F8:
/* 805645F8  38 60 00 01 */	li r3, 1
/* 805645FC  4B E3 42 4D */	bl mDemo_Set_talk_turn
/* 80564600  38 60 00 03 */	li r3, 3
/* 80564604  4B E3 43 1D */	bl mDemo_Set_camera
/* 80564608  3C 60 81 1F */	lis r3, struct_811ED318+0x0@ha /* 0x811ED318@ha */
/* 8056460C  88 03 D3 18 */	lbz r0, struct_811ED318+0x0@l(r3)  /* 0x811ED318@l */
/* 80564610  28 00 00 09 */	cmplwi r0, 9
/* 80564614  40 82 00 3C */	bne lbl_80564650
/* 80564618  7F E3 FB 78 */	mr r3, r31
/* 8056461C  38 80 00 3C */	li r4, 0x3c
/* 80564620  4B FF FE 69 */	bl aNNW_change_talk_proc
/* 80564624  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80564628  7F E3 FB 78 */	mr r3, r31
/* 8056462C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80564630  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80564634  3C 84 00 02 */	addis r4, r4, 2
/* 80564638  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8056463C  80 84 60 4C */	lwz r4, 0x604c(r4)
/* 80564640  81 84 01 1C */	lwz r12, 0x11c(r4)
/* 80564644  7D 89 03 A6 */	mtctr r12
/* 80564648  4E 80 04 21 */	bctrl 
/* 8056464C  48 00 00 3C */	b lbl_80564688
lbl_80564650:
/* 80564650  7F E3 FB 78 */	mr r3, r31
/* 80564654  38 80 00 0B */	li r4, 0xb
/* 80564658  4B FF FE 31 */	bl aNNW_change_talk_proc
/* 8056465C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80564660  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80564664  80 63 00 00 */	lwz r3, 0(r3)
/* 80564668  4B E7 4F D9 */	bl get_player_actor_withoutCheck
/* 8056466C  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80564670  7C 64 1B 78 */	mr r4, r3
/* 80564674  38 65 52 F0 */	addi r3, r5, data_811C52F0@l /* 0x811C52F0@l */
/* 80564678  38 C0 00 06 */	li r6, 6
/* 8056467C  80 63 00 00 */	lwz r3, 0(r3)
/* 80564680  7F E5 FB 78 */	mr r5, r31
/* 80564684  4B E1 B0 15 */	bl Camera2_request_main_talk
lbl_80564688:
/* 80564688  4B FF D0 51 */	bl func_805616D8
/* 8056468C  4B E3 3E 89 */	bl mDemo_Set_msg_num
/* 80564690  38 00 00 02 */	li r0, 2
/* 80564694  98 1F 09 73 */	stb r0, 0x973(r31)
/* 80564698  48 00 00 20 */	b lbl_805646B8
lbl_8056469C:
/* 8056469C  7F E3 FB 78 */	mr r3, r31
/* 805646A0  38 80 00 41 */	li r4, 0x41
/* 805646A4  4B FF FD E5 */	bl aNNW_change_talk_proc
/* 805646A8  38 60 00 01 */	li r3, 1
/* 805646AC  4B E3 41 9D */	bl mDemo_Set_talk_turn
/* 805646B0  38 60 00 03 */	li r3, 3
/* 805646B4  4B E3 42 6D */	bl mDemo_Set_camera
lbl_805646B8:
/* 805646B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805646BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805646C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805646C4  7C 08 03 A6 */	mtlr r0
/* 805646C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805646CC  4E 80 00 20 */	blr 
