lbl_803E0E28:
/* 803E0E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E0E2C  7C 08 02 A6 */	mflr r0
/* 803E0E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E0E34  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 803E0E38  2C 00 25 20 */	cmpwi r0, 0x2520
/* 803E0E3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E0E40  7C 9F 23 78 */	mr r31, r4
/* 803E0E44  93 C1 00 08 */	stw r30, 8(r1)
/* 803E0E48  7C 7E 1B 78 */	mr r30, r3
/* 803E0E4C  41 82 00 4C */	beq lbl_803E0E98
/* 803E0E50  40 80 00 1C */	bge lbl_803E0E6C
/* 803E0E54  2C 00 25 1C */	cmpwi r0, 0x251c
/* 803E0E58  41 82 00 24 */	beq lbl_803E0E7C
/* 803E0E5C  41 80 00 5C */	blt lbl_803E0EB8
/* 803E0E60  2C 00 25 1F */	cmpwi r0, 0x251f
/* 803E0E64  40 80 00 28 */	bge lbl_803E0E8C
/* 803E0E68  48 00 00 50 */	b lbl_803E0EB8
lbl_803E0E6C:
/* 803E0E6C  2C 00 25 22 */	cmpwi r0, 0x2522
/* 803E0E70  41 82 00 40 */	beq lbl_803E0EB0
/* 803E0E74  40 80 00 44 */	bge lbl_803E0EB8
/* 803E0E78  48 00 00 2C */	b lbl_803E0EA4
lbl_803E0E7C:
/* 803E0E7C  4B FF FF 29 */	bl mPr_DummyPresentToTruePresent
/* 803E0E80  38 C0 00 01 */	li r6, 1
/* 803E0E84  7C 65 1B 78 */	mr r5, r3
/* 803E0E88  48 00 00 30 */	b lbl_803E0EB8
lbl_803E0E8C:
/* 803E0E8C  38 A0 22 39 */	li r5, 0x2239
/* 803E0E90  38 C0 00 01 */	li r6, 1
/* 803E0E94  48 00 00 24 */	b lbl_803E0EB8
lbl_803E0E98:
/* 803E0E98  38 A0 22 3A */	li r5, 0x223a
/* 803E0E9C  38 C0 00 01 */	li r6, 1
/* 803E0EA0  48 00 00 18 */	b lbl_803E0EB8
lbl_803E0EA4:
/* 803E0EA4  38 A0 22 3B */	li r5, 0x223b
/* 803E0EA8  38 C0 00 01 */	li r6, 1
/* 803E0EAC  48 00 00 0C */	b lbl_803E0EB8
lbl_803E0EB0:
/* 803E0EB0  38 A0 22 3C */	li r5, 0x223c
/* 803E0EB4  38 C0 00 01 */	li r6, 1
lbl_803E0EB8:
/* 803E0EB8  57 E4 08 3C */	slwi r4, r31, 1
/* 803E0EBC  38 00 00 03 */	li r0, 3
/* 803E0EC0  7C 7E 22 14 */	add r3, r30, r4
/* 803E0EC4  28 06 00 00 */	cmplwi r6, 0
/* 803E0EC8  B0 A3 00 68 */	sth r5, 0x68(r3)
/* 803E0ECC  7C 03 20 30 */	slw r3, r0, r4
/* 803E0ED0  7C C0 20 30 */	slw r0, r6, r4
/* 803E0ED4  80 9E 00 88 */	lwz r4, 0x88(r30)
/* 803E0ED8  7C 83 18 78 */	andc r3, r4, r3
/* 803E0EDC  7C 60 03 78 */	or r0, r3, r0
/* 803E0EE0  90 1E 00 88 */	stw r0, 0x88(r30)
/* 803E0EE4  40 82 00 0C */	bne lbl_803E0EF0
/* 803E0EE8  7C A3 2B 78 */	mr r3, r5
/* 803E0EEC  4B FF FC E1 */	bl mPr_SetItemCollectBit
lbl_803E0EF0:
/* 803E0EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E0EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E0EF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E0EFC  7C 08 03 A6 */	mtlr r0
/* 803E0F00  38 21 00 10 */	addi r1, r1, 0x10
/* 803E0F04  4E 80 00 20 */	blr 
