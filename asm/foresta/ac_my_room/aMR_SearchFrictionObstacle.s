lbl_8047FC3C:
/* 8047FC3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047FC40  7C 08 02 A6 */	mflr r0
/* 8047FC44  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047FC48  39 61 00 20 */	addi r11, r1, 0x20
/* 8047FC4C  4B C1 B2 7D */	bl func_8009AEC8
/* 8047FC50  7C 7B 1B 78 */	mr r27, r3
/* 8047FC54  7C 9A 23 78 */	mr r26, r4
/* 8047FC58  A0 63 00 00 */	lhz r3, 0(r3)
/* 8047FC5C  7C BF 2B 78 */	mr r31, r5
/* 8047FC60  4B FF 05 41 */	bl func_804701A0
/* 8047FC64  88 03 00 2A */	lbz r0, 0x2a(r3)
/* 8047FC68  88 7B 00 3E */	lbz r3, 0x3e(r27)
/* 8047FC6C  28 00 00 00 */	cmplwi r0, 0
/* 8047FC70  41 82 00 B0 */	beq lbl_8047FD20
/* 8047FC74  2C 03 00 03 */	cmpwi r3, 3
/* 8047FC78  41 81 00 A8 */	bgt lbl_8047FD20
/* 8047FC7C  7F 40 07 34 */	extsh r0, r26
/* 8047FC80  2C 00 00 0A */	cmpwi r0, 0xa
/* 8047FC84  40 82 00 1C */	bne lbl_8047FCA0
/* 8047FC88  1C 83 00 18 */	mulli r4, r3, 0x18
/* 8047FC8C  3C 60 80 69 */	lis r3, rotate_forbid_friction_table@ha /* 0x80689128@ha */
/* 8047FC90  38 03 91 28 */	addi r0, r3, rotate_forbid_friction_table@l /* 0x80689128@l */
/* 8047FC94  7C 60 22 14 */	add r3, r0, r4
/* 8047FC98  3B 43 00 0C */	addi r26, r3, 0xc
/* 8047FC9C  48 00 00 14 */	b lbl_8047FCB0
lbl_8047FCA0:
/* 8047FCA0  1C 83 00 18 */	mulli r4, r3, 0x18
/* 8047FCA4  3C 60 80 69 */	lis r3, rotate_forbid_friction_table@ha /* 0x80689128@ha */
/* 8047FCA8  38 03 91 28 */	addi r0, r3, rotate_forbid_friction_table@l /* 0x80689128@l */
/* 8047FCAC  7F 40 22 14 */	add r26, r0, r4
lbl_8047FCB0:
/* 8047FCB0  3C 80 80 69 */	lis r4, l_place_table@ha /* 0x8068877C@ha */
/* 8047FCB4  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047FCB8  3B 84 87 7C */	addi r28, r4, l_place_table@l /* 0x8068877C@l */
/* 8047FCBC  3B 60 00 00 */	li r27, 0
/* 8047FCC0  3B A3 DF E8 */	addi r29, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047FCC4  3B C0 00 00 */	li r30, 0
lbl_8047FCC8:
/* 8047FCC8  7C 7A F2 14 */	add r3, r26, r30
/* 8047FCCC  A8 03 00 04 */	lha r0, 4(r3)
/* 8047FCD0  A8 63 00 00 */	lha r3, 0(r3)
/* 8047FCD4  54 00 20 36 */	slwi r0, r0, 4
/* 8047FCD8  7C 00 1A 14 */	add r0, r0, r3
/* 8047FCDC  7C 1F 02 14 */	add r0, r31, r0
/* 8047FCE0  7C 1C 00 AE */	lbzx r0, r28, r0
/* 8047FCE4  28 00 00 C8 */	cmplwi r0, 0xc8
/* 8047FCE8  41 82 00 28 */	beq lbl_8047FD10
/* 8047FCEC  1C 00 08 58 */	mulli r0, r0, 0x858
/* 8047FCF0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8047FCF4  7C 63 02 2E */	lhzx r3, r3, r0
/* 8047FCF8  4B FF 04 A9 */	bl func_804701A0
/* 8047FCFC  88 03 00 2A */	lbz r0, 0x2a(r3)
/* 8047FD00  28 00 00 00 */	cmplwi r0, 0
/* 8047FD04  41 82 00 0C */	beq lbl_8047FD10
/* 8047FD08  38 60 00 00 */	li r3, 0
/* 8047FD0C  48 00 00 18 */	b lbl_8047FD24
lbl_8047FD10:
/* 8047FD10  3B 7B 00 01 */	addi r27, r27, 1
/* 8047FD14  3B DE 00 06 */	addi r30, r30, 6
/* 8047FD18  2C 1B 00 02 */	cmpwi r27, 2
/* 8047FD1C  41 80 FF AC */	blt lbl_8047FCC8
lbl_8047FD20:
/* 8047FD20  38 60 00 01 */	li r3, 1
lbl_8047FD24:
/* 8047FD24  39 61 00 20 */	addi r11, r1, 0x20
/* 8047FD28  4B C1 B1 ED */	bl func_8009AF14
/* 8047FD2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047FD30  7C 08 03 A6 */	mtlr r0
/* 8047FD34  38 21 00 20 */	addi r1, r1, 0x20
/* 8047FD38  4E 80 00 20 */	blr 
