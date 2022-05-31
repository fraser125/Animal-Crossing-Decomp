lbl_80496E68:
/* 80496E68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80496E6C  7C 08 02 A6 */	mflr r0
/* 80496E70  90 01 00 34 */	stw r0, 0x34(r1)
/* 80496E74  39 61 00 30 */	addi r11, r1, 0x30
/* 80496E78  4B C0 40 59 */	bl func_8009AED0
/* 80496E7C  7C 7F 1B 78 */	mr r31, r3
/* 80496E80  7C 9E 23 78 */	mr r30, r4
/* 80496E84  38 7F 01 7C */	addi r3, r31, 0x17c
/* 80496E88  48 00 04 8D */	bl aSNMgr_get_player_pos
/* 80496E8C  7F E3 FB 78 */	mr r3, r31
/* 80496E90  48 00 04 E1 */	bl aSNMgr_renewal_player_now_block
/* 80496E94  80 DF 01 7C */	lwz r6, 0x17c(r31)
/* 80496E98  38 7F 01 88 */	addi r3, r31, 0x188
/* 80496E9C  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 80496EA0  38 9F 01 8C */	addi r4, r31, 0x18c
/* 80496EA4  38 A1 00 08 */	addi r5, r1, 8
/* 80496EA8  90 C1 00 08 */	stw r6, 8(r1)
/* 80496EAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80496EB0  80 1F 01 84 */	lwz r0, 0x184(r31)
/* 80496EB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80496EB8  4B F0 E8 A9 */	bl mFI_Wpos2BlockNum
/* 80496EBC  7F E3 FB 78 */	mr r3, r31
/* 80496EC0  48 00 05 25 */	bl aSNMgr_renewal_set_scope
/* 80496EC4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80496EC8  7F E3 FB 78 */	mr r3, r31
/* 80496ECC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80496ED0  3C 85 00 01 */	addis r4, r5, 1
/* 80496ED4  38 04 74 38 */	addi r0, r4, 0x7438
/* 80496ED8  3C C5 00 02 */	addis r6, r5, 2
/* 80496EDC  90 1F 01 B8 */	stw r0, 0x1b8(r31)
/* 80496EE0  38 A6 61 64 */	addi r5, r6, 0x6164
/* 80496EE4  38 86 66 A8 */	addi r4, r6, 0x66a8
/* 80496EE8  38 06 67 A8 */	addi r0, r6, 0x67a8
/* 80496EEC  90 BF 01 BC */	stw r5, 0x1bc(r31)
/* 80496EF0  90 9F 01 C0 */	stw r4, 0x1c0(r31)
/* 80496EF4  90 1F 01 C4 */	stw r0, 0x1c4(r31)
/* 80496EF8  48 00 01 05 */	bl aSNMgr_init_winfo_p
/* 80496EFC  38 7F 02 04 */	addi r3, r31, 0x204
/* 80496F00  38 80 00 38 */	li r4, 0x38
/* 80496F04  4B BC 61 65 */	bl bzero
/* 80496F08  38 7F 02 3C */	addi r3, r31, 0x23c
/* 80496F0C  38 80 00 1E */	li r4, 0x1e
/* 80496F10  4B BC 61 59 */	bl bzero
/* 80496F14  3B 80 00 00 */	li r28, 0
/* 80496F18  3B A0 00 00 */	li r29, 0
lbl_80496F1C:
/* 80496F1C  7F 83 E3 78 */	mr r3, r28
/* 80496F20  4B F4 16 AD */	bl mNpcW_GetArriveStayCountP
/* 80496F24  3B 9C 00 01 */	addi r28, r28, 1
/* 80496F28  38 1D 02 5C */	addi r0, r29, 0x25c
/* 80496F2C  2C 1C 00 0F */	cmpwi r28, 0xf
/* 80496F30  7C 7F 01 2E */	stwx r3, r31, r0
/* 80496F34  3B BD 00 04 */	addi r29, r29, 4
/* 80496F38  41 80 FF E4 */	blt lbl_80496F1C
/* 80496F3C  7F E3 FB 78 */	mr r3, r31
/* 80496F40  48 00 01 3D */	bl aSNMgr_set_npc_exist
/* 80496F44  38 00 00 00 */	li r0, 0
/* 80496F48  38 7F 02 A0 */	addi r3, r31, 0x2a0
/* 80496F4C  B0 1F 02 9A */	sth r0, 0x29a(r31)
/* 80496F50  38 80 00 05 */	li r4, 5
/* 80496F54  B0 1F 02 9C */	sth r0, 0x29c(r31)
/* 80496F58  48 00 12 1D */	bl aSNMgr_clear_make_npc
/* 80496F5C  38 7F 03 18 */	addi r3, r31, 0x318
/* 80496F60  48 00 01 8D */	bl aSNMgr_clear_event_info
/* 80496F64  3B 80 00 00 */	li r28, 0
/* 80496F68  3B A0 00 00 */	li r29, 0
lbl_80496F6C:
/* 80496F6C  38 1D 01 C8 */	addi r0, r29, 0x1c8
/* 80496F70  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80496F74  28 03 00 00 */	cmplwi r3, 0
/* 80496F78  41 82 00 08 */	beq lbl_80496F80
/* 80496F7C  4B F4 13 C1 */	bl mNpcW_SetGoalBlock
lbl_80496F80:
/* 80496F80  3B 9C 00 01 */	addi r28, r28, 1
/* 80496F84  3B BD 00 04 */	addi r29, r29, 4
/* 80496F88  2C 1C 00 0F */	cmpwi r28, 0xf
/* 80496F8C  41 80 FF E0 */	blt lbl_80496F6C
/* 80496F90  38 7F 03 64 */	addi r3, r31, 0x364
/* 80496F94  38 80 00 3C */	li r4, 0x3c
/* 80496F98  4B BC 60 D1 */	bl bzero
/* 80496F9C  88 1E 20 D1 */	lbz r0, 0x20d1(r30)
/* 80496FA0  28 00 00 06 */	cmplwi r0, 6
/* 80496FA4  40 82 00 14 */	bne lbl_80496FB8
/* 80496FA8  7F E3 FB 78 */	mr r3, r31
/* 80496FAC  48 00 10 C9 */	bl aSNMgr_move_event_set
/* 80496FB0  7F E3 FB 78 */	mr r3, r31
/* 80496FB4  48 00 1D A5 */	bl aSNMgr_force_go_home_event_start
lbl_80496FB8:
/* 80496FB8  7F E3 FB 78 */	mr r3, r31
/* 80496FBC  38 80 00 01 */	li r4, 1
/* 80496FC0  48 00 23 ED */	bl aSNMgr_setup_set_proc
/* 80496FC4  39 61 00 30 */	addi r11, r1, 0x30
/* 80496FC8  4B C0 3F 55 */	bl func_8009AF1C
/* 80496FCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80496FD0  7C 08 03 A6 */	mtlr r0
/* 80496FD4  38 21 00 30 */	addi r1, r1, 0x30
/* 80496FD8  4E 80 00 20 */	blr 
