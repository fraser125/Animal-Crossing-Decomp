lbl_8049895C:
/* 8049895C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80498960  7C 08 02 A6 */	mflr r0
/* 80498964  90 01 00 34 */	stw r0, 0x34(r1)
/* 80498968  39 61 00 30 */	addi r11, r1, 0x30
/* 8049896C  4B C0 25 4D */	bl func_8009AEB8
/* 80498970  7C 77 1B 78 */	mr r23, r3
/* 80498974  7C 96 23 78 */	mr r22, r4
/* 80498978  83 A3 01 BC */	lwz r29, 0x1bc(r3)
/* 8049897C  3B 97 01 C8 */	addi r28, r23, 0x1c8
/* 80498980  83 E3 01 C0 */	lwz r31, 0x1c0(r3)
/* 80498984  3B 77 02 5C */	addi r27, r23, 0x25c
/* 80498988  83 C3 01 B8 */	lwz r30, 0x1b8(r3)
/* 8049898C  7F A4 EB 78 */	mr r4, r29
/* 80498990  A0 A3 02 98 */	lhz r5, 0x298(r3)
/* 80498994  3B 57 03 64 */	addi r26, r23, 0x364
/* 80498998  38 77 02 04 */	addi r3, r23, 0x204
/* 8049899C  3B 20 00 00 */	li r25, 0
/* 804989A0  4B FF EB B5 */	bl aSNMgr_set_in_block_npc_num
/* 804989A4  80 96 00 A0 */	lwz r4, 0xa0(r22)
/* 804989A8  38 60 01 A4 */	li r3, 0x1a4
/* 804989AC  7C 04 1B 96 */	divwu r0, r4, r3
/* 804989B0  7C 00 19 D6 */	mullw r0, r0, r3
/* 804989B4  7C 00 20 51 */	subf. r0, r0, r4
/* 804989B8  40 82 00 08 */	bne lbl_804989C0
/* 804989BC  3B 20 00 01 */	li r25, 1
lbl_804989C0:
/* 804989C0  3B 00 00 00 */	li r24, 0
/* 804989C4  3A C0 00 00 */	li r22, 0
lbl_804989C8:
/* 804989C8  7E E3 BB 78 */	mr r3, r23
/* 804989CC  7F 05 C3 78 */	mr r5, r24
/* 804989D0  38 80 00 00 */	li r4, 0
/* 804989D4  4B FF E8 65 */	bl aSNMgr_chk_exist_and_appear_and_event
/* 804989D8  2C 03 00 01 */	cmpwi r3, 1
/* 804989DC  40 82 00 DC */	bne lbl_80498AB8
/* 804989E0  7F E3 FB 78 */	mr r3, r31
/* 804989E4  7F C4 F3 78 */	mr r4, r30
/* 804989E8  4B FF EC 1D */	bl aSNMgr_check_move_npc_schedule
/* 804989EC  2C 03 00 01 */	cmpwi r3, 1
/* 804989F0  40 82 00 C8 */	bne lbl_80498AB8
/* 804989F4  80 7C 00 00 */	lwz r3, 0(r28)
/* 804989F8  28 03 00 00 */	cmplwi r3, 0
/* 804989FC  41 82 00 BC */	beq lbl_80498AB8
/* 80498A00  8C 03 00 14 */	lbzu r0, 0x14(r3)
/* 80498A04  28 00 00 01 */	cmplwi r0, 1
/* 80498A08  41 82 00 0C */	beq lbl_80498A14
/* 80498A0C  28 00 00 02 */	cmplwi r0, 2
/* 80498A10  40 82 00 14 */	bne lbl_80498A24
lbl_80498A14:
/* 80498A14  38 96 02 3C */	addi r4, r22, 0x23c
/* 80498A18  38 B7 02 04 */	addi r5, r23, 0x204
/* 80498A1C  7C 97 22 14 */	add r4, r23, r4
/* 80498A20  4B FF FD C1 */	bl aSNMgr_check_into_block_npc_sum
lbl_80498A24:
/* 80498A24  80 9C 00 00 */	lwz r4, 0(r28)
/* 80498A28  88 04 00 14 */	lbz r0, 0x14(r4)
/* 80498A2C  2C 00 00 02 */	cmpwi r0, 2
/* 80498A30  41 82 00 88 */	beq lbl_80498AB8
/* 80498A34  40 80 00 14 */	bge lbl_80498A48
/* 80498A38  2C 00 00 00 */	cmpwi r0, 0
/* 80498A3C  41 82 00 7C */	beq lbl_80498AB8
/* 80498A40  40 80 00 18 */	bge lbl_80498A58
/* 80498A44  48 00 00 74 */	b lbl_80498AB8
lbl_80498A48:
/* 80498A48  2C 00 00 04 */	cmpwi r0, 4
/* 80498A4C  41 82 00 6C */	beq lbl_80498AB8
/* 80498A50  40 80 00 68 */	bge lbl_80498AB8
/* 80498A54  48 00 00 50 */	b lbl_80498AA4
lbl_80498A58:
/* 80498A58  80 7A 00 00 */	lwz r3, 0(r26)
/* 80498A5C  2C 03 00 00 */	cmpwi r3, 0
/* 80498A60  40 82 00 24 */	bne lbl_80498A84
/* 80498A64  38 B6 02 3C */	addi r5, r22, 0x23c
/* 80498A68  7F A3 EB 78 */	mr r3, r29
/* 80498A6C  7E E7 BB 78 */	mr r7, r23
/* 80498A70  7F 28 CB 78 */	mr r8, r25
/* 80498A74  7C B7 2A 14 */	add r5, r23, r5
/* 80498A78  38 D7 02 04 */	addi r6, r23, 0x204
/* 80498A7C  4B FF FE 29 */	bl aSNMgr_walk_to_goal_npc
/* 80498A80  48 00 00 38 */	b lbl_80498AB8
lbl_80498A84:
/* 80498A84  38 03 FF FF */	addi r0, r3, -1
/* 80498A88  90 1A 00 00 */	stw r0, 0(r26)
/* 80498A8C  80 1A 00 00 */	lwz r0, 0(r26)
/* 80498A90  2C 00 00 00 */	cmpwi r0, 0
/* 80498A94  40 80 00 24 */	bge lbl_80498AB8
/* 80498A98  38 00 00 00 */	li r0, 0
/* 80498A9C  90 1A 00 00 */	stw r0, 0(r26)
/* 80498AA0  48 00 00 18 */	b lbl_80498AB8
lbl_80498AA4:
/* 80498AA4  80 77 01 C4 */	lwz r3, 0x1c4(r23)
/* 80498AA8  7F 84 E3 78 */	mr r4, r28
/* 80498AAC  80 DB 00 00 */	lwz r6, 0(r27)
/* 80498AB0  38 B7 01 C8 */	addi r5, r23, 0x1c8
/* 80498AB4  4B FF FC B5 */	bl aSNMgr_go_back_home
lbl_80498AB8:
/* 80498AB8  3B 18 00 01 */	addi r24, r24, 1
/* 80498ABC  3B DE 09 88 */	addi r30, r30, 0x988
/* 80498AC0  2C 18 00 0F */	cmpwi r24, 0xf
/* 80498AC4  3B BD 00 38 */	addi r29, r29, 0x38
/* 80498AC8  3B 9C 00 04 */	addi r28, r28, 4
/* 80498ACC  3B 7B 00 04 */	addi r27, r27, 4
/* 80498AD0  3B 5A 00 04 */	addi r26, r26, 4
/* 80498AD4  3A D6 00 02 */	addi r22, r22, 2
/* 80498AD8  3B FF 00 10 */	addi r31, r31, 0x10
/* 80498ADC  41 80 FE EC */	blt lbl_804989C8
/* 80498AE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80498AE4  4B C0 24 21 */	bl func_8009AF04
/* 80498AE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80498AEC  7C 08 03 A6 */	mtlr r0
/* 80498AF0  38 21 00 30 */	addi r1, r1, 0x30
/* 80498AF4  4E 80 00 20 */	blr 
