lbl_805F94FC:
/* 805F94FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F9500  7C 08 02 A6 */	mflr r0
/* 805F9504  38 E0 00 00 */	li r7, 0
/* 805F9508  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F950C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805F9510  80 A4 09 C0 */	lwz r5, 0x9c0(r4)
/* 805F9514  80 84 09 88 */	lwz r4, 0x988(r4)
/* 805F9518  88 C5 0B BC */	lbz r6, 0xbbc(r5)
/* 805F951C  38 06 00 01 */	addi r0, r6, 1
/* 805F9520  98 05 0B BC */	stb r0, 0xbbc(r5)
/* 805F9524  A0 04 05 E2 */	lhz r0, 0x5e2(r4)
/* 805F9528  28 00 00 00 */	cmplwi r0, 0
/* 805F952C  40 82 00 10 */	bne lbl_805F953C
/* 805F9530  80 05 0B B4 */	lwz r0, 0xbb4(r5)
/* 805F9534  28 00 00 00 */	cmplwi r0, 0
/* 805F9538  41 82 00 10 */	beq lbl_805F9548
lbl_805F953C:
/* 805F953C  4B FF FB 75 */	bl mTG_cpack_change_mail_mark_main
/* 805F9540  7C 67 1B 78 */	mr r7, r3
/* 805F9544  48 00 00 10 */	b lbl_805F9554
lbl_805F9548:
/* 805F9548  38 00 00 00 */	li r0, 0
/* 805F954C  B0 04 05 E4 */	sth r0, 0x5e4(r4)
/* 805F9550  90 05 0B B8 */	stw r0, 0xbb8(r5)
lbl_805F9554:
/* 805F9554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F9558  7C E3 3B 78 */	mr r3, r7
/* 805F955C  7C 08 03 A6 */	mtlr r0
/* 805F9560  38 21 00 10 */	addi r1, r1, 0x10
/* 805F9564  4E 80 00 20 */	blr 
