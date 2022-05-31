lbl_8039EE9C:
/* 8039EE9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039EEA0  7C 08 02 A6 */	mflr r0
/* 8039EEA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039EEA8  39 61 00 20 */	addi r11, r1, 0x20
/* 8039EEAC  4B CF C0 1D */	bl func_8009AEC8
/* 8039EEB0  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8039EEB4  3C 80 81 16 */	lis r4, event_today@ha /* 0x811676AC@ha */
/* 8039EEB8  83 A5 52 F0 */	lwz r29, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 8039EEBC  7C 7A 1B 78 */	mr r26, r3
/* 8039EEC0  3B C4 76 AC */	addi r30, r4, event_today@l /* 0x811676AC@l */
/* 8039EEC4  3B 60 00 00 */	li r27, 0
/* 8039EEC8  3B E0 00 00 */	li r31, 0
lbl_8039EECC:
/* 8039EECC  7F 9E FA 14 */	add r28, r30, r31
/* 8039EED0  80 7C 00 00 */	lwz r3, 0(r28)
/* 8039EED4  2C 03 FF FF */	cmpwi r3, -1
/* 8039EED8  41 82 00 54 */	beq lbl_8039EF2C
/* 8039EEDC  3C 80 81 16 */	lis r4, index_today@ha /* 0x811677AC@ha */
/* 8039EEE0  38 84 77 AC */	addi r4, r4, index_today@l /* 0x811677AC@l */
/* 8039EEE4  7C 04 18 AE */	lbzx r0, r4, r3
/* 8039EEE8  28 00 00 FF */	cmplwi r0, 0xff
/* 8039EEEC  41 82 00 40 */	beq lbl_8039EF2C
/* 8039EEF0  38 80 00 20 */	li r4, 0x20
/* 8039EEF4  4B FF EC 0D */	bl mEv_check_status
/* 8039EEF8  2C 03 00 00 */	cmpwi r3, 0
/* 8039EEFC  40 82 00 30 */	bne lbl_8039EF2C
/* 8039EF00  80 7C 00 00 */	lwz r3, 0(r28)
/* 8039EF04  7C 03 D0 00 */	cmpw r3, r26
/* 8039EF08  40 82 00 24 */	bne lbl_8039EF2C
/* 8039EF0C  4B FF EB A9 */	bl clear_active
/* 8039EF10  2C 03 00 00 */	cmpwi r3, 0
/* 8039EF14  41 82 00 10 */	beq lbl_8039EF24
/* 8039EF18  A8 7D 20 B2 */	lha r3, 0x20b2(r29)
/* 8039EF1C  38 03 00 01 */	addi r0, r3, 1
/* 8039EF20  B0 1D 20 B2 */	sth r0, 0x20b2(r29)
lbl_8039EF24:
/* 8039EF24  3C 00 20 00 */	lis r0, 0x2000
/* 8039EF28  90 1C 00 04 */	stw r0, 4(r28)
lbl_8039EF2C:
/* 8039EF2C  3B 7B 00 01 */	addi r27, r27, 1
/* 8039EF30  3B FF 00 10 */	addi r31, r31, 0x10
/* 8039EF34  2C 1B 00 10 */	cmpwi r27, 0x10
/* 8039EF38  41 80 FF 94 */	blt lbl_8039EECC
/* 8039EF3C  39 61 00 20 */	addi r11, r1, 0x20
/* 8039EF40  4B CF BF D5 */	bl func_8009AF14
/* 8039EF44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039EF48  7C 08 03 A6 */	mtlr r0
/* 8039EF4C  38 21 00 20 */	addi r1, r1, 0x20
/* 8039EF50  4E 80 00 20 */	blr 
