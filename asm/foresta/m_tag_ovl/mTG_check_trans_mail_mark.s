lbl_805F94A8:
/* 805F94A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F94AC  7C 08 02 A6 */	mflr r0
/* 805F94B0  38 E0 00 00 */	li r7, 0
/* 805F94B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F94B8  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805F94BC  80 C6 09 98 */	lwz r6, 0x998(r6)
/* 805F94C0  A0 06 00 08 */	lhz r0, 8(r6)
/* 805F94C4  28 00 00 00 */	cmplwi r0, 0
/* 805F94C8  41 82 00 10 */	beq lbl_805F94D8
/* 805F94CC  4B FF FC 61 */	bl mTG_trans_mail_mark
/* 805F94D0  7C 67 1B 78 */	mr r7, r3
/* 805F94D4  48 00 00 14 */	b lbl_805F94E8
lbl_805F94D8:
/* 805F94D8  38 00 00 00 */	li r0, 0
/* 805F94DC  98 06 00 00 */	stb r0, 0(r6)
/* 805F94E0  B0 06 00 08 */	sth r0, 8(r6)
/* 805F94E4  90 06 00 0C */	stw r0, 0xc(r6)
lbl_805F94E8:
/* 805F94E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F94EC  7C E3 3B 78 */	mr r3, r7
/* 805F94F0  7C 08 03 A6 */	mtlr r0
/* 805F94F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805F94F8  4E 80 00 20 */	blr 
