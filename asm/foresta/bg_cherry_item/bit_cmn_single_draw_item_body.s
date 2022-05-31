lbl_804B46A4:
/* 804B46A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B46A8  7C 08 02 A6 */	mflr r0
/* 804B46AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B46B0  39 61 00 30 */	addi r11, r1, 0x30
/* 804B46B4  4B BE 68 15 */	bl func_8009AEC8
/* 804B46B8  7C BC 2B 78 */	mr r28, r5
/* 804B46BC  7C 7A 1B 78 */	mr r26, r3
/* 804B46C0  83 C5 00 04 */	lwz r30, 4(r5)
/* 804B46C4  7C 9B 23 78 */	mr r27, r4
/* 804B46C8  7C DD 33 78 */	mr r29, r6
/* 804B46CC  57 DF 10 3A */	slwi r31, r30, 2
/* 804B46D0  48 00 00 6C */	b lbl_804B473C
lbl_804B46D4:
/* 804B46D4  88 1B 00 42 */	lbz r0, 0x42(r27)
/* 804B46D8  3B FF FF FC */	addi r31, r31, -4
/* 804B46DC  80 7C 00 08 */	lwz r3, 8(r28)
/* 804B46E0  3B DE FF FF */	addi r30, r30, -1
/* 804B46E4  28 00 00 FF */	cmplwi r0, 0xff
/* 804B46E8  7C C3 F8 2E */	lwzx r6, r3, r31
/* 804B46EC  40 82 00 2C */	bne lbl_804B4718
/* 804B46F0  80 1A 02 D0 */	lwz r0, 0x2d0(r26)
/* 804B46F4  7F 43 D3 78 */	mr r3, r26
/* 804B46F8  7F 65 DB 78 */	mr r5, r27
/* 804B46FC  7F A7 EB 78 */	mr r7, r29
/* 804B4700  90 01 00 08 */	stw r0, 8(r1)
/* 804B4704  38 81 00 08 */	addi r4, r1, 8
/* 804B4708  4B FF F9 59 */	bl bit_cmn_single_draw_loop_type1
/* 804B470C  80 01 00 08 */	lwz r0, 8(r1)
/* 804B4710  90 1A 02 D0 */	stw r0, 0x2d0(r26)
/* 804B4714  48 00 00 28 */	b lbl_804B473C
lbl_804B4718:
/* 804B4718  80 1A 02 E0 */	lwz r0, 0x2e0(r26)
/* 804B471C  7F 43 D3 78 */	mr r3, r26
/* 804B4720  7F 65 DB 78 */	mr r5, r27
/* 804B4724  7F A7 EB 78 */	mr r7, r29
/* 804B4728  90 01 00 08 */	stw r0, 8(r1)
/* 804B472C  38 81 00 08 */	addi r4, r1, 8
/* 804B4730  4B FF F9 31 */	bl bit_cmn_single_draw_loop_type1
/* 804B4734  80 01 00 08 */	lwz r0, 8(r1)
/* 804B4738  90 1A 02 E0 */	stw r0, 0x2e0(r26)
lbl_804B473C:
/* 804B473C  2C 1E 00 00 */	cmpwi r30, 0
/* 804B4740  40 82 FF 94 */	bne lbl_804B46D4
/* 804B4744  39 61 00 30 */	addi r11, r1, 0x30
/* 804B4748  4B BE 67 CD */	bl func_8009AF14
/* 804B474C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B4750  7C 08 03 A6 */	mtlr r0
/* 804B4754  38 21 00 30 */	addi r1, r1, 0x30
/* 804B4758  4E 80 00 20 */	blr 
