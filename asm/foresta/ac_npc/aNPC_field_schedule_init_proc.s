lbl_80538368:
/* 80538368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053836C  7C 08 02 A6 */	mflr r0
/* 80538370  38 A0 00 00 */	li r5, 0
/* 80538374  90 01 00 14 */	stw r0, 0x14(r1)
/* 80538378  88 03 08 4C */	lbz r0, 0x84c(r3)
/* 8053837C  28 00 00 01 */	cmplwi r0, 1
/* 80538380  40 82 00 14 */	bne lbl_80538394
/* 80538384  38 00 00 00 */	li r0, 0
/* 80538388  38 A0 00 02 */	li r5, 2
/* 8053838C  98 03 08 4C */	stb r0, 0x84c(r3)
/* 80538390  48 00 00 28 */	b lbl_805383B8
lbl_80538394:
/* 80538394  80 C3 01 7C */	lwz r6, 0x17c(r3)
/* 80538398  28 06 00 00 */	cmplwi r6, 0
/* 8053839C  41 82 00 18 */	beq lbl_805383B4
/* 805383A0  88 06 08 E8 */	lbz r0, 0x8e8(r6)
/* 805383A4  28 00 00 00 */	cmplwi r0, 0
/* 805383A8  40 82 00 10 */	bne lbl_805383B8
/* 805383AC  38 A0 00 01 */	li r5, 1
/* 805383B0  48 00 00 08 */	b lbl_805383B8
lbl_805383B4:
/* 805383B4  38 A0 00 01 */	li r5, 1
lbl_805383B8:
/* 805383B8  98 A3 07 DD */	stb r5, 0x7dd(r3)
/* 805383BC  4B FF FE 75 */	bl func_80538230
/* 805383C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805383C4  7C 08 03 A6 */	mtlr r0
/* 805383C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805383CC  4E 80 00 20 */	blr 
