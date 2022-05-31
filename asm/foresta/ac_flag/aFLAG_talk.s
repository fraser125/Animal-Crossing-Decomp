lbl_80423ECC:
/* 80423ECC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80423ED0  7C 08 02 A6 */	mflr r0
/* 80423ED4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80423ED8  39 61 00 20 */	addi r11, r1, 0x20
/* 80423EDC  4B C7 6F F9 */	bl func_8009AED4
/* 80423EE0  7C 7D 1B 78 */	mr r29, r3
/* 80423EE4  7C 9F 23 78 */	mr r31, r4
/* 80423EE8  4B F9 B7 C1 */	bl func_803BF6A8
/* 80423EEC  7C 7E 1B 78 */	mr r30, r3
/* 80423EF0  7F A4 EB 78 */	mr r4, r29
/* 80423EF4  38 60 00 07 */	li r3, 7
/* 80423EF8  4B F7 63 6D */	bl mDemo_Check
/* 80423EFC  2C 03 00 00 */	cmpwi r3, 0
/* 80423F00  41 82 00 D8 */	beq lbl_80423FD8
/* 80423F04  7F E3 FB 78 */	mr r3, r31
/* 80423F08  4B FB 57 39 */	bl get_player_actor_withoutCheck
/* 80423F0C  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 80423F10  38 9D 00 28 */	addi r4, r29, 0x28
/* 80423F14  90 01 00 08 */	stw r0, 8(r1)
/* 80423F18  A0 03 00 E0 */	lhz r0, 0xe0(r3)
/* 80423F1C  38 63 00 28 */	addi r3, r3, 0x28
/* 80423F20  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80423F24  4B F9 72 0D */	bl search_position_angleY
/* 80423F28  3C 80 80 64 */	lis r4, lit_483@ha /* 0x80643EA0@ha */
/* 80423F2C  7C 60 1B 78 */	mr r0, r3
/* 80423F30  38 A4 3E A0 */	addi r5, r4, lit_483@l /* 0x80643EA0@l */
/* 80423F34  38 61 00 0A */	addi r3, r1, 0xa
/* 80423F38  C0 25 00 00 */	lfs f1, 0(r5)
/* 80423F3C  7C 04 03 78 */	mr r4, r0
/* 80423F40  38 A0 10 00 */	li r5, 0x1000
/* 80423F44  38 C0 01 00 */	li r6, 0x100
/* 80423F48  4B F9 73 C9 */	bl add_calc_short_angle2
/* 80423F4C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80423F50  83 E3 52 F0 */	lwz r31, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 80423F54  7F E3 FB 78 */	mr r3, r31
/* 80423F58  4B FB 56 E9 */	bl get_player_actor_withoutCheck
/* 80423F5C  81 83 13 10 */	lwz r12, 0x1310(r3)
/* 80423F60  7F E3 FB 78 */	mr r3, r31
/* 80423F64  38 A1 00 08 */	addi r5, r1, 8
/* 80423F68  38 80 00 00 */	li r4, 0
/* 80423F6C  38 C0 00 20 */	li r6, 0x20
/* 80423F70  7D 89 03 A6 */	mtctr r12
/* 80423F74  4E 80 04 21 */	bctrl 
/* 80423F78  7F C3 F3 78 */	mr r3, r30
/* 80423F7C  4B F9 CD 1D */	bl mMsg_Check_MainNormalContinue
/* 80423F80  2C 03 00 01 */	cmpwi r3, 1
/* 80423F84  40 82 00 60 */	bne lbl_80423FE4
/* 80423F88  4B F5 F5 B9 */	bl func_80383540
/* 80423F8C  4B F5 FB E1 */	bl mChoice_Get_ChoseNum
/* 80423F90  2C 03 00 01 */	cmpwi r3, 1
/* 80423F94  41 82 00 2C */	beq lbl_80423FC0
/* 80423F98  40 80 00 4C */	bge lbl_80423FE4
/* 80423F9C  2C 03 00 00 */	cmpwi r3, 0
/* 80423FA0  40 80 00 08 */	bge lbl_80423FA8
/* 80423FA4  48 00 00 40 */	b lbl_80423FE4
lbl_80423FA8:
/* 80423FA8  4B F9 B7 01 */	bl func_803BF6A8
/* 80423FAC  4B F9 BA 99 */	bl mMsg_request_main_disappear_wait_type1
/* 80423FB0  7F A3 EB 78 */	mr r3, r29
/* 80423FB4  38 80 00 06 */	li r4, 6
/* 80423FB8  48 00 08 61 */	bl aFLAG_setup_action
/* 80423FBC  48 00 00 28 */	b lbl_80423FE4
lbl_80423FC0:
/* 80423FC0  4B F9 B6 E9 */	bl func_803BF6A8
/* 80423FC4  4B F9 BA 81 */	bl mMsg_request_main_disappear_wait_type1
/* 80423FC8  7F A3 EB 78 */	mr r3, r29
/* 80423FCC  38 80 00 02 */	li r4, 2
/* 80423FD0  48 00 08 49 */	bl aFLAG_setup_action
/* 80423FD4  48 00 00 10 */	b lbl_80423FE4
lbl_80423FD8:
/* 80423FD8  7F A3 EB 78 */	mr r3, r29
/* 80423FDC  38 80 00 00 */	li r4, 0
/* 80423FE0  48 00 08 39 */	bl aFLAG_setup_action
lbl_80423FE4:
/* 80423FE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80423FE8  4B C7 6F 39 */	bl func_8009AF20
/* 80423FEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80423FF0  7C 08 03 A6 */	mtlr r0
/* 80423FF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80423FF8  4E 80 00 20 */	blr 
