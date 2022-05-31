lbl_8039F64C:
/* 8039F64C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039F650  7C 08 02 A6 */	mflr r0
/* 8039F654  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039F658  39 61 00 20 */	addi r11, r1, 0x20
/* 8039F65C  4B CF B8 6D */	bl func_8009AEC8
/* 8039F660  7C 7A 1B 78 */	mr r26, r3
/* 8039F664  7C 9B 23 78 */	mr r27, r4
/* 8039F668  7C BC 2B 78 */	mr r28, r5
/* 8039F66C  7C FD 3B 78 */	mr r29, r7
/* 8039F670  7C C3 33 78 */	mr r3, r6
/* 8039F674  3B C0 00 00 */	li r30, 0
/* 8039F678  4B FF FD F1 */	bl mEvMN_GetMapIdx
/* 8039F67C  2C 03 FF FF */	cmpwi r3, -1
/* 8039F680  41 82 00 5C */	beq lbl_8039F6DC
/* 8039F684  3C 80 80 65 */	lis r4, l_event_set_table@ha /* 0x80652910@ha */
/* 8039F688  54 60 10 3A */	slwi r0, r3, 2
/* 8039F68C  38 64 29 10 */	addi r3, r4, l_event_set_table@l /* 0x80652910@l */
/* 8039F690  7F E3 00 2E */	lwzx r31, r3, r0
/* 8039F694  28 1F 00 00 */	cmplwi r31, 0
/* 8039F698  41 82 00 44 */	beq lbl_8039F6DC
/* 8039F69C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8039F6A0  4B FF FE 7D */	bl mEvMN_GetDataBaseIdx
/* 8039F6A4  80 9F 00 04 */	lwz r4, 4(r31)
/* 8039F6A8  54 60 10 3A */	slwi r0, r3, 2
/* 8039F6AC  57 A5 08 3C */	slwi r5, r29, 1
/* 8039F6B0  3B C0 00 01 */	li r30, 1
/* 8039F6B4  7C 84 00 2E */	lwzx r4, r4, r0
/* 8039F6B8  80 64 00 00 */	lwz r3, 0(r4)
/* 8039F6BC  80 84 00 04 */	lwz r4, 4(r4)
/* 8039F6C0  7C 03 2A 2E */	lhzx r0, r3, r5
/* 8039F6C4  7C 64 2A 14 */	add r3, r4, r5
/* 8039F6C8  B0 1A 00 00 */	sth r0, 0(r26)
/* 8039F6CC  88 03 00 00 */	lbz r0, 0(r3)
/* 8039F6D0  90 1B 00 00 */	stw r0, 0(r27)
/* 8039F6D4  88 03 00 01 */	lbz r0, 1(r3)
/* 8039F6D8  90 1C 00 00 */	stw r0, 0(r28)
lbl_8039F6DC:
/* 8039F6DC  7F C3 F3 78 */	mr r3, r30
/* 8039F6E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8039F6E4  4B CF B8 31 */	bl func_8009AF14
/* 8039F6E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039F6EC  7C 08 03 A6 */	mtlr r0
/* 8039F6F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8039F6F4  4E 80 00 20 */	blr 
