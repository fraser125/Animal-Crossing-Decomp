lbl_804C3520:
/* 804C3520  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C3524  7C 08 02 A6 */	mflr r0
/* 804C3528  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C352C  39 61 00 30 */	addi r11, r1, 0x30
/* 804C3530  4B BD 79 99 */	bl func_8009AEC8
/* 804C3534  7C BC 2B 78 */	mr r28, r5
/* 804C3538  7C 7A 1B 78 */	mr r26, r3
/* 804C353C  83 C5 00 04 */	lwz r30, 4(r5)
/* 804C3540  7C 9B 23 78 */	mr r27, r4
/* 804C3544  7C DD 33 78 */	mr r29, r6
/* 804C3548  57 DF 10 3A */	slwi r31, r30, 2
/* 804C354C  48 00 00 6C */	b lbl_804C35B8
lbl_804C3550:
/* 804C3550  88 1B 00 42 */	lbz r0, 0x42(r27)
/* 804C3554  3B FF FF FC */	addi r31, r31, -4
/* 804C3558  80 7C 00 08 */	lwz r3, 8(r28)
/* 804C355C  3B DE FF FF */	addi r30, r30, -1
/* 804C3560  28 00 00 FF */	cmplwi r0, 0xff
/* 804C3564  7C C3 F8 2E */	lwzx r6, r3, r31
/* 804C3568  40 82 00 2C */	bne lbl_804C3594
/* 804C356C  80 1A 02 D0 */	lwz r0, 0x2d0(r26)
/* 804C3570  7F 43 D3 78 */	mr r3, r26
/* 804C3574  7F 65 DB 78 */	mr r5, r27
/* 804C3578  7F A7 EB 78 */	mr r7, r29
/* 804C357C  90 01 00 08 */	stw r0, 8(r1)
/* 804C3580  38 81 00 08 */	addi r4, r1, 8
/* 804C3584  4B FF F9 59 */	bl bit_cmn_single_draw_loop_type1
/* 804C3588  80 01 00 08 */	lwz r0, 8(r1)
/* 804C358C  90 1A 02 D0 */	stw r0, 0x2d0(r26)
/* 804C3590  48 00 00 28 */	b lbl_804C35B8
lbl_804C3594:
/* 804C3594  80 1A 02 E0 */	lwz r0, 0x2e0(r26)
/* 804C3598  7F 43 D3 78 */	mr r3, r26
/* 804C359C  7F 65 DB 78 */	mr r5, r27
/* 804C35A0  7F A7 EB 78 */	mr r7, r29
/* 804C35A4  90 01 00 08 */	stw r0, 8(r1)
/* 804C35A8  38 81 00 08 */	addi r4, r1, 8
/* 804C35AC  4B FF F9 31 */	bl bit_cmn_single_draw_loop_type1
/* 804C35B0  80 01 00 08 */	lwz r0, 8(r1)
/* 804C35B4  90 1A 02 E0 */	stw r0, 0x2e0(r26)
lbl_804C35B8:
/* 804C35B8  2C 1E 00 00 */	cmpwi r30, 0
/* 804C35BC  40 82 FF 94 */	bne lbl_804C3550
/* 804C35C0  39 61 00 30 */	addi r11, r1, 0x30
/* 804C35C4  4B BD 79 51 */	bl func_8009AF14
/* 804C35C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C35CC  7C 08 03 A6 */	mtlr r0
/* 804C35D0  38 21 00 30 */	addi r1, r1, 0x30
/* 804C35D4  4E 80 00 20 */	blr 
