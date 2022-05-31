lbl_804B3E88:
/* 804B3E88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B3E8C  7C 08 02 A6 */	mflr r0
/* 804B3E90  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B3E94  39 61 00 20 */	addi r11, r1, 0x20
/* 804B3E98  4B BE 70 35 */	bl func_8009AECC
/* 804B3E9C  7C BD 2B 78 */	mr r29, r5
/* 804B3EA0  7C 7B 1B 78 */	mr r27, r3
/* 804B3EA4  83 E5 00 00 */	lwz r31, 0(r5)
/* 804B3EA8  7C 9C 23 78 */	mr r28, r4
/* 804B3EAC  3B C0 00 00 */	li r30, 0
/* 804B3EB0  48 00 00 2C */	b lbl_804B3EDC
lbl_804B3EB4:
/* 804B3EB4  81 9F 00 04 */	lwz r12, 4(r31)
/* 804B3EB8  28 0C 00 00 */	cmplwi r12, 0
/* 804B3EBC  41 82 00 18 */	beq lbl_804B3ED4
/* 804B3EC0  7F 63 DB 78 */	mr r3, r27
/* 804B3EC4  7F 84 E3 78 */	mr r4, r28
/* 804B3EC8  7F E5 FB 78 */	mr r5, r31
/* 804B3ECC  7D 89 03 A6 */	mtctr r12
/* 804B3ED0  4E 80 04 21 */	bctrl 
lbl_804B3ED4:
/* 804B3ED4  3B DE 00 01 */	addi r30, r30, 1
/* 804B3ED8  3B FF 00 A8 */	addi r31, r31, 0xa8
lbl_804B3EDC:
/* 804B3EDC  A8 1D 00 04 */	lha r0, 4(r29)
/* 804B3EE0  7C 1E 00 00 */	cmpw r30, r0
/* 804B3EE4  41 80 FF D0 */	blt lbl_804B3EB4
/* 804B3EE8  39 61 00 20 */	addi r11, r1, 0x20
/* 804B3EEC  4B BE 70 2D */	bl func_8009AF18
/* 804B3EF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B3EF4  7C 08 03 A6 */	mtlr r0
/* 804B3EF8  38 21 00 20 */	addi r1, r1, 0x20
/* 804B3EFC  4E 80 00 20 */	blr 
