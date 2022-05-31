lbl_80575F8C:
/* 80575F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80575F90  7C 08 02 A6 */	mflr r0
/* 80575F94  3C 80 80 6C */	lis r4, dt_tbl_972@ha /* 0x806BF910@ha */
/* 80575F98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80575F9C  38 04 F9 10 */	addi r0, r4, dt_tbl_972@l /* 0x806BF910@l */
/* 80575FA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80575FA4  7C 7F 1B 78 */	mr r31, r3
/* 80575FA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80575FAC  80 A3 09 9C */	lwz r5, 0x99c(r3)
/* 80575FB0  54 A4 18 38 */	slwi r4, r5, 3
/* 80575FB4  7F C0 22 14 */	add r30, r0, r4
/* 80575FB8  80 9E 00 00 */	lwz r4, 0(r30)
/* 80575FBC  4B FF E8 D9 */	bl aSEN_get_msg_no
/* 80575FC0  4B E2 25 55 */	bl mDemo_Set_msg_num
/* 80575FC4  88 7E 00 04 */	lbz r3, 4(r30)
/* 80575FC8  4B E2 28 81 */	bl mDemo_Set_talk_turn
/* 80575FCC  88 7E 00 05 */	lbz r3, 5(r30)
/* 80575FD0  4B E2 29 51 */	bl mDemo_Set_camera
/* 80575FD4  38 60 00 00 */	li r3, 0
/* 80575FD8  4B E2 27 99 */	bl mDemo_Set_talk_change_player
/* 80575FDC  4B E4 96 CD */	bl func_803BF6A8
/* 80575FE0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80575FE4  38 80 00 00 */	li r4, 0
/* 80575FE8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80575FEC  38 C0 00 08 */	li r6, 8
/* 80575FF0  3C A5 00 02 */	addis r5, r5, 2
/* 80575FF4  38 A5 25 40 */	addi r5, r5, 0x2540
/* 80575FF8  4B E4 9C 5D */	bl mMsg_Set_free_str
/* 80575FFC  88 1E 00 06 */	lbz r0, 6(r30)
/* 80576000  7F E3 FB 78 */	mr r3, r31
/* 80576004  98 1F 09 73 */	stb r0, 0x973(r31)
/* 80576008  88 9E 00 07 */	lbz r4, 7(r30)
/* 8057600C  4B FF FF 61 */	bl aSEN_change_talk_proc
/* 80576010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80576014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80576018  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057601C  7C 08 03 A6 */	mtlr r0
/* 80576020  38 21 00 10 */	addi r1, r1, 0x10
/* 80576024  4E 80 00 20 */	blr 
