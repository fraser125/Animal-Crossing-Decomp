lbl_804BBA28:
/* 804BBA28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BBA2C  7C 08 02 A6 */	mflr r0
/* 804BBA30  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BBA34  39 61 00 30 */	addi r11, r1, 0x30
/* 804BBA38  4B BD F4 91 */	bl func_8009AEC8
/* 804BBA3C  7C BC 2B 78 */	mr r28, r5
/* 804BBA40  7C 7A 1B 78 */	mr r26, r3
/* 804BBA44  83 C5 00 04 */	lwz r30, 4(r5)
/* 804BBA48  7C 9B 23 78 */	mr r27, r4
/* 804BBA4C  7C DD 33 78 */	mr r29, r6
/* 804BBA50  57 DF 10 3A */	slwi r31, r30, 2
/* 804BBA54  48 00 00 6C */	b lbl_804BBAC0
lbl_804BBA58:
/* 804BBA58  88 1B 00 42 */	lbz r0, 0x42(r27)
/* 804BBA5C  3B FF FF FC */	addi r31, r31, -4
/* 804BBA60  80 7C 00 08 */	lwz r3, 8(r28)
/* 804BBA64  3B DE FF FF */	addi r30, r30, -1
/* 804BBA68  28 00 00 FF */	cmplwi r0, 0xff
/* 804BBA6C  7C C3 F8 2E */	lwzx r6, r3, r31
/* 804BBA70  40 82 00 2C */	bne lbl_804BBA9C
/* 804BBA74  80 1A 02 D0 */	lwz r0, 0x2d0(r26)
/* 804BBA78  7F 43 D3 78 */	mr r3, r26
/* 804BBA7C  7F 65 DB 78 */	mr r5, r27
/* 804BBA80  7F A7 EB 78 */	mr r7, r29
/* 804BBA84  90 01 00 08 */	stw r0, 8(r1)
/* 804BBA88  38 81 00 08 */	addi r4, r1, 8
/* 804BBA8C  4B FF F9 59 */	bl bit_cmn_single_draw_loop_type1
/* 804BBA90  80 01 00 08 */	lwz r0, 8(r1)
/* 804BBA94  90 1A 02 D0 */	stw r0, 0x2d0(r26)
/* 804BBA98  48 00 00 28 */	b lbl_804BBAC0
lbl_804BBA9C:
/* 804BBA9C  80 1A 02 E0 */	lwz r0, 0x2e0(r26)
/* 804BBAA0  7F 43 D3 78 */	mr r3, r26
/* 804BBAA4  7F 65 DB 78 */	mr r5, r27
/* 804BBAA8  7F A7 EB 78 */	mr r7, r29
/* 804BBAAC  90 01 00 08 */	stw r0, 8(r1)
/* 804BBAB0  38 81 00 08 */	addi r4, r1, 8
/* 804BBAB4  4B FF F9 31 */	bl bit_cmn_single_draw_loop_type1
/* 804BBAB8  80 01 00 08 */	lwz r0, 8(r1)
/* 804BBABC  90 1A 02 E0 */	stw r0, 0x2e0(r26)
lbl_804BBAC0:
/* 804BBAC0  2C 1E 00 00 */	cmpwi r30, 0
/* 804BBAC4  40 82 FF 94 */	bne lbl_804BBA58
/* 804BBAC8  39 61 00 30 */	addi r11, r1, 0x30
/* 804BBACC  4B BD F4 49 */	bl func_8009AF14
/* 804BBAD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BBAD4  7C 08 03 A6 */	mtlr r0
/* 804BBAD8  38 21 00 30 */	addi r1, r1, 0x30
/* 804BBADC  4E 80 00 20 */	blr 
