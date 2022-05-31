lbl_804A1F94:
/* 804A1F94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A1F98  7C 08 02 A6 */	mflr r0
/* 804A1F9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A1FA0  39 61 00 20 */	addi r11, r1, 0x20
/* 804A1FA4  4B BF 8F 31 */	bl func_8009AED4
/* 804A1FA8  7C 7D 1B 78 */	mr r29, r3
/* 804A1FAC  7C 9F 23 78 */	mr r31, r4
/* 804A1FB0  4B F1 D6 F9 */	bl func_803BF6A8
/* 804A1FB4  7C 7E 1B 78 */	mr r30, r3
/* 804A1FB8  7F A4 EB 78 */	mr r4, r29
/* 804A1FBC  38 60 00 08 */	li r3, 8
/* 804A1FC0  4B EF 82 A5 */	bl mDemo_Check
/* 804A1FC4  2C 03 00 00 */	cmpwi r3, 0
/* 804A1FC8  41 82 00 D8 */	beq lbl_804A20A0
/* 804A1FCC  7F E3 FB 78 */	mr r3, r31
/* 804A1FD0  4B F3 76 71 */	bl get_player_actor_withoutCheck
/* 804A1FD4  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 804A1FD8  38 9D 03 E0 */	addi r4, r29, 0x3e0
/* 804A1FDC  90 01 00 08 */	stw r0, 8(r1)
/* 804A1FE0  A0 03 00 E0 */	lhz r0, 0xe0(r3)
/* 804A1FE4  38 63 00 28 */	addi r3, r3, 0x28
/* 804A1FE8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 804A1FEC  4B F1 91 45 */	bl search_position_angleY
/* 804A1FF0  3C 80 80 64 */	lis r4, lit_802@ha /* 0x80645C5C@ha */
/* 804A1FF4  7C 60 1B 78 */	mr r0, r3
/* 804A1FF8  38 A4 5C 5C */	addi r5, r4, lit_802@l /* 0x80645C5C@l */
/* 804A1FFC  38 61 00 0A */	addi r3, r1, 0xa
/* 804A2000  C0 25 00 00 */	lfs f1, 0(r5)
/* 804A2004  7C 04 03 78 */	mr r4, r0
/* 804A2008  38 A0 10 00 */	li r5, 0x1000
/* 804A200C  38 C0 01 00 */	li r6, 0x100
/* 804A2010  4B F1 93 01 */	bl add_calc_short_angle2
/* 804A2014  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804A2018  83 E3 52 F0 */	lwz r31, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 804A201C  7F E3 FB 78 */	mr r3, r31
/* 804A2020  4B F3 76 21 */	bl get_player_actor_withoutCheck
/* 804A2024  81 83 13 10 */	lwz r12, 0x1310(r3)
/* 804A2028  7F E3 FB 78 */	mr r3, r31
/* 804A202C  38 A1 00 08 */	addi r5, r1, 8
/* 804A2030  38 80 00 00 */	li r4, 0
/* 804A2034  38 C0 00 20 */	li r6, 0x20
/* 804A2038  7D 89 03 A6 */	mtctr r12
/* 804A203C  4E 80 04 21 */	bctrl 
/* 804A2040  7F C3 F3 78 */	mr r3, r30
/* 804A2044  4B F1 EC 55 */	bl mMsg_Check_MainNormalContinue
/* 804A2048  2C 03 00 01 */	cmpwi r3, 1
/* 804A204C  40 82 00 60 */	bne lbl_804A20AC
/* 804A2050  4B EE 14 F1 */	bl func_80383540
/* 804A2054  4B EE 1B 19 */	bl mChoice_Get_ChoseNum
/* 804A2058  2C 03 00 01 */	cmpwi r3, 1
/* 804A205C  41 82 00 2C */	beq lbl_804A2088
/* 804A2060  40 80 00 28 */	bge lbl_804A2088
/* 804A2064  2C 03 00 00 */	cmpwi r3, 0
/* 804A2068  40 80 00 08 */	bge lbl_804A2070
/* 804A206C  48 00 00 1C */	b lbl_804A2088
lbl_804A2070:
/* 804A2070  4B F1 D6 39 */	bl func_803BF6A8
/* 804A2074  4B F1 D9 D1 */	bl mMsg_request_main_disappear_wait_type1
/* 804A2078  7F A3 EB 78 */	mr r3, r29
/* 804A207C  38 80 00 03 */	li r4, 3
/* 804A2080  48 00 02 51 */	bl aSIGN_setup_action
/* 804A2084  48 00 00 28 */	b lbl_804A20AC
lbl_804A2088:
/* 804A2088  4B F1 D6 21 */	bl func_803BF6A8
/* 804A208C  4B F1 D9 B9 */	bl mMsg_request_main_disappear_wait_type1
/* 804A2090  7F A3 EB 78 */	mr r3, r29
/* 804A2094  38 80 00 02 */	li r4, 2
/* 804A2098  48 00 02 39 */	bl aSIGN_setup_action
/* 804A209C  48 00 00 10 */	b lbl_804A20AC
lbl_804A20A0:
/* 804A20A0  7F A3 EB 78 */	mr r3, r29
/* 804A20A4  38 80 00 00 */	li r4, 0
/* 804A20A8  48 00 02 29 */	bl aSIGN_setup_action
lbl_804A20AC:
/* 804A20AC  39 61 00 20 */	addi r11, r1, 0x20
/* 804A20B0  4B BF 8E 71 */	bl func_8009AF20
/* 804A20B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A20B8  7C 08 03 A6 */	mtlr r0
/* 804A20BC  38 21 00 20 */	addi r1, r1, 0x20
/* 804A20C0  4E 80 00 20 */	blr 
