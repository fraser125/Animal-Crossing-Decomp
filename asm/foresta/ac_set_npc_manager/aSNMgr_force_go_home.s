lbl_80498EAC:
/* 80498EAC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80498EB0  7C 08 02 A6 */	mflr r0
/* 80498EB4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80498EB8  39 61 00 50 */	addi r11, r1, 0x50
/* 80498EBC  4B C0 20 01 */	bl func_8009AEBC
/* 80498EC0  7C 77 1B 78 */	mr r23, r3
/* 80498EC4  3B 00 00 00 */	li r24, 0
/* 80498EC8  83 E3 01 C0 */	lwz r31, 0x1c0(r3)
/* 80498ECC  3B 97 01 C8 */	addi r28, r23, 0x1c8
/* 80498ED0  83 C3 01 B8 */	lwz r30, 0x1b8(r3)
/* 80498ED4  3B 77 03 64 */	addi r27, r23, 0x364
/* 80498ED8  83 A3 01 BC */	lwz r29, 0x1bc(r3)
/* 80498EDC  83 43 01 90 */	lwz r26, 0x190(r3)
/* 80498EE0  83 23 01 94 */	lwz r25, 0x194(r3)
lbl_80498EE4:
/* 80498EE4  7E E3 BB 78 */	mr r3, r23
/* 80498EE8  7F 05 C3 78 */	mr r5, r24
/* 80498EEC  38 80 00 00 */	li r4, 0
/* 80498EF0  4B FF E3 49 */	bl aSNMgr_chk_exist_and_appear_and_event
/* 80498EF4  2C 03 00 01 */	cmpwi r3, 1
/* 80498EF8  40 82 00 CC */	bne lbl_80498FC4
/* 80498EFC  80 DD 00 10 */	lwz r6, 0x10(r29)
/* 80498F00  38 61 00 0C */	addi r3, r1, 0xc
/* 80498F04  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80498F08  38 81 00 08 */	addi r4, r1, 8
/* 80498F0C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80498F10  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80498F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80498F18  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80498F1C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80498F20  4B F0 C8 41 */	bl mFI_Wpos2BlockNum
/* 80498F24  2C 03 00 01 */	cmpwi r3, 1
/* 80498F28  40 82 00 9C */	bne lbl_80498FC4
/* 80498F2C  7F E3 FB 78 */	mr r3, r31
/* 80498F30  7F C4 F3 78 */	mr r4, r30
/* 80498F34  4B FF E6 D1 */	bl aSNMgr_check_move_npc_schedule
/* 80498F38  2C 03 00 00 */	cmpwi r3, 0
/* 80498F3C  40 82 00 88 */	bne lbl_80498FC4
/* 80498F40  80 1B 00 00 */	lwz r0, 0(r27)
/* 80498F44  2C 00 00 00 */	cmpwi r0, 0
/* 80498F48  40 82 00 7C */	bne lbl_80498FC4
/* 80498F4C  88 1E 08 99 */	lbz r0, 0x899(r30)
/* 80498F50  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80498F54  7C 00 18 00 */	cmpw r0, r3
/* 80498F58  40 82 00 14 */	bne lbl_80498F6C
/* 80498F5C  88 1E 08 9A */	lbz r0, 0x89a(r30)
/* 80498F60  80 81 00 08 */	lwz r4, 8(r1)
/* 80498F64  7C 00 20 00 */	cmpw r0, r4
/* 80498F68  41 82 00 24 */	beq lbl_80498F8C
lbl_80498F6C:
/* 80498F6C  7E E3 BB 78 */	mr r3, r23
/* 80498F70  7F 04 C3 78 */	mr r4, r24
/* 80498F74  7F 47 D3 78 */	mr r7, r26
/* 80498F78  7F 28 CB 78 */	mr r8, r25
/* 80498F7C  38 A0 FF FF */	li r5, -1
/* 80498F80  38 C0 FF FF */	li r6, -1
/* 80498F84  4B FF FC 45 */	bl aSNMgr_set_go_home_status
/* 80498F88  48 00 00 3C */	b lbl_80498FC4
lbl_80498F8C:
/* 80498F8C  7C 03 D0 00 */	cmpw r3, r26
/* 80498F90  40 82 00 0C */	bne lbl_80498F9C
/* 80498F94  7C 04 C8 00 */	cmpw r4, r25
/* 80498F98  41 82 00 2C */	beq lbl_80498FC4
lbl_80498F9C:
/* 80498F9C  88 1E 08 E8 */	lbz r0, 0x8e8(r30)
/* 80498FA0  28 00 00 01 */	cmplwi r0, 1
/* 80498FA4  40 82 00 20 */	bne lbl_80498FC4
/* 80498FA8  80 1C 00 00 */	lwz r0, 0(r28)
/* 80498FAC  28 00 00 00 */	cmplwi r0, 0
/* 80498FB0  41 82 00 14 */	beq lbl_80498FC4
/* 80498FB4  80 77 01 C4 */	lwz r3, 0x1c4(r23)
/* 80498FB8  7F 84 E3 78 */	mr r4, r28
/* 80498FBC  38 B7 01 C8 */	addi r5, r23, 0x1c8
/* 80498FC0  4B FF F7 1D */	bl aSNMgr_go_back_home_sub
lbl_80498FC4:
/* 80498FC4  3B 18 00 01 */	addi r24, r24, 1
/* 80498FC8  3B DE 09 88 */	addi r30, r30, 0x988
/* 80498FCC  2C 18 00 0F */	cmpwi r24, 0xf
/* 80498FD0  3B BD 00 38 */	addi r29, r29, 0x38
/* 80498FD4  3B 9C 00 04 */	addi r28, r28, 4
/* 80498FD8  3B 7B 00 04 */	addi r27, r27, 4
/* 80498FDC  3B FF 00 10 */	addi r31, r31, 0x10
/* 80498FE0  41 80 FF 04 */	blt lbl_80498EE4
/* 80498FE4  39 61 00 50 */	addi r11, r1, 0x50
/* 80498FE8  4B C0 1F 21 */	bl func_8009AF08
/* 80498FEC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80498FF0  7C 08 03 A6 */	mtlr r0
/* 80498FF4  38 21 00 50 */	addi r1, r1, 0x50
/* 80498FF8  4E 80 00 20 */	blr 
