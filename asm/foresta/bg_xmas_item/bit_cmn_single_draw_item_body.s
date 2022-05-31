lbl_804CA938:
/* 804CA938  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CA93C  7C 08 02 A6 */	mflr r0
/* 804CA940  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CA944  39 61 00 30 */	addi r11, r1, 0x30
/* 804CA948  4B BD 05 81 */	bl func_8009AEC8
/* 804CA94C  7C BC 2B 78 */	mr r28, r5
/* 804CA950  7C 7A 1B 78 */	mr r26, r3
/* 804CA954  83 C5 00 04 */	lwz r30, 4(r5)
/* 804CA958  7C 9B 23 78 */	mr r27, r4
/* 804CA95C  7C DD 33 78 */	mr r29, r6
/* 804CA960  57 DF 10 3A */	slwi r31, r30, 2
/* 804CA964  48 00 00 6C */	b lbl_804CA9D0
lbl_804CA968:
/* 804CA968  88 1B 00 42 */	lbz r0, 0x42(r27)
/* 804CA96C  3B FF FF FC */	addi r31, r31, -4
/* 804CA970  80 7C 00 08 */	lwz r3, 8(r28)
/* 804CA974  3B DE FF FF */	addi r30, r30, -1
/* 804CA978  28 00 00 FF */	cmplwi r0, 0xff
/* 804CA97C  7C C3 F8 2E */	lwzx r6, r3, r31
/* 804CA980  40 82 00 2C */	bne lbl_804CA9AC
/* 804CA984  80 1A 02 D0 */	lwz r0, 0x2d0(r26)
/* 804CA988  7F 43 D3 78 */	mr r3, r26
/* 804CA98C  7F 65 DB 78 */	mr r5, r27
/* 804CA990  7F A7 EB 78 */	mr r7, r29
/* 804CA994  90 01 00 08 */	stw r0, 8(r1)
/* 804CA998  38 81 00 08 */	addi r4, r1, 8
/* 804CA99C  4B FF F9 59 */	bl bit_cmn_single_draw_loop_type1
/* 804CA9A0  80 01 00 08 */	lwz r0, 8(r1)
/* 804CA9A4  90 1A 02 D0 */	stw r0, 0x2d0(r26)
/* 804CA9A8  48 00 00 28 */	b lbl_804CA9D0
lbl_804CA9AC:
/* 804CA9AC  80 1A 02 E0 */	lwz r0, 0x2e0(r26)
/* 804CA9B0  7F 43 D3 78 */	mr r3, r26
/* 804CA9B4  7F 65 DB 78 */	mr r5, r27
/* 804CA9B8  7F A7 EB 78 */	mr r7, r29
/* 804CA9BC  90 01 00 08 */	stw r0, 8(r1)
/* 804CA9C0  38 81 00 08 */	addi r4, r1, 8
/* 804CA9C4  4B FF F9 31 */	bl bit_cmn_single_draw_loop_type1
/* 804CA9C8  80 01 00 08 */	lwz r0, 8(r1)
/* 804CA9CC  90 1A 02 E0 */	stw r0, 0x2e0(r26)
lbl_804CA9D0:
/* 804CA9D0  2C 1E 00 00 */	cmpwi r30, 0
/* 804CA9D4  40 82 FF 94 */	bne lbl_804CA968
/* 804CA9D8  39 61 00 30 */	addi r11, r1, 0x30
/* 804CA9DC  4B BD 05 39 */	bl func_8009AF14
/* 804CA9E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CA9E4  7C 08 03 A6 */	mtlr r0
/* 804CA9E8  38 21 00 30 */	addi r1, r1, 0x30
/* 804CA9EC  4E 80 00 20 */	blr 
