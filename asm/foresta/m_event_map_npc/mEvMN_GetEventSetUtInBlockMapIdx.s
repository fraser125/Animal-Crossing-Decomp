lbl_8039F5B4:
/* 8039F5B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039F5B8  7C 08 02 A6 */	mflr r0
/* 8039F5BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039F5C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8039F5C4  4B CF B9 0D */	bl func_8009AED0
/* 8039F5C8  2C 05 00 00 */	cmpwi r5, 0
/* 8039F5CC  7C 7C 1B 78 */	mr r28, r3
/* 8039F5D0  7C 9D 23 78 */	mr r29, r4
/* 8039F5D4  7C DE 33 78 */	mr r30, r6
/* 8039F5D8  38 60 00 00 */	li r3, 0
/* 8039F5DC  41 80 00 58 */	blt lbl_8039F634
/* 8039F5E0  2C 05 00 11 */	cmpwi r5, 0x11
/* 8039F5E4  40 80 00 50 */	bge lbl_8039F634
/* 8039F5E8  3C 80 80 65 */	lis r4, l_event_set_table@ha /* 0x80652910@ha */
/* 8039F5EC  54 A0 10 3A */	slwi r0, r5, 2
/* 8039F5F0  38 84 29 10 */	addi r4, r4, l_event_set_table@l /* 0x80652910@l */
/* 8039F5F4  7F E4 00 2E */	lwzx r31, r4, r0
/* 8039F5F8  28 1F 00 00 */	cmplwi r31, 0
/* 8039F5FC  41 82 00 38 */	beq lbl_8039F634
/* 8039F600  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8039F604  4B FF FF 19 */	bl mEvMN_GetDataBaseIdx
/* 8039F608  80 BF 00 04 */	lwz r5, 4(r31)
/* 8039F60C  54 64 10 3A */	slwi r4, r3, 2
/* 8039F610  57 C0 08 3C */	slwi r0, r30, 1
/* 8039F614  38 60 00 01 */	li r3, 1
/* 8039F618  7C 85 20 2E */	lwzx r4, r5, r4
/* 8039F61C  80 84 00 04 */	lwz r4, 4(r4)
/* 8039F620  7C 84 02 14 */	add r4, r4, r0
/* 8039F624  88 04 00 00 */	lbz r0, 0(r4)
/* 8039F628  90 1C 00 00 */	stw r0, 0(r28)
/* 8039F62C  88 04 00 01 */	lbz r0, 1(r4)
/* 8039F630  90 1D 00 00 */	stw r0, 0(r29)
lbl_8039F634:
/* 8039F634  39 61 00 20 */	addi r11, r1, 0x20
/* 8039F638  4B CF B8 E5 */	bl func_8009AF1C
/* 8039F63C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039F640  7C 08 03 A6 */	mtlr r0
/* 8039F644  38 21 00 20 */	addi r1, r1, 0x20
/* 8039F648  4E 80 00 20 */	blr 
