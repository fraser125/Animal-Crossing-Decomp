lbl_8056046C:
/* 8056046C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560470  7C 08 02 A6 */	mflr r0
/* 80560474  3C A0 80 65 */	lis r5, lit_798@ha /* 0x8064976C@ha */
/* 80560478  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056047C  38 00 00 00 */	li r0, 0
/* 80560480  C0 05 97 6C */	lfs f0, lit_798@l(r5)  /* 0x8064976C@l */
/* 80560484  B0 03 00 36 */	sth r0, 0x36(r3)
/* 80560488  B0 03 00 DE */	sth r0, 0xde(r3)
/* 8056048C  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80560490  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80560494  4C 41 13 82 */	cror 2, 1, 2
/* 80560498  40 82 00 0C */	bne lbl_805604A4
/* 8056049C  38 00 00 01 */	li r0, 1
/* 805604A0  90 03 09 BC */	stw r0, 0x9bc(r3)
lbl_805604A4:
/* 805604A4  3C A0 80 65 */	lis r5, lit_799@ha /* 0x80649770@ha */
/* 805604A8  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 805604AC  C0 05 97 70 */	lfs f0, lit_799@l(r5)  /* 0x80649770@l */
/* 805604B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805604B4  4C 41 13 82 */	cror 2, 1, 2
/* 805604B8  40 82 00 28 */	bne lbl_805604E0
/* 805604BC  80 C3 01 8C */	lwz r6, 0x18c(r3)
/* 805604C0  38 A0 00 0F */	li r5, 0xf
/* 805604C4  28 06 00 00 */	cmplwi r6, 0
/* 805604C8  41 82 00 10 */	beq lbl_805604D8
/* 805604CC  A0 06 00 02 */	lhz r0, 2(r6)
/* 805604D0  28 00 D0 04 */	cmplwi r0, 0xd004
/* 805604D4  40 82 00 08 */	bne lbl_805604DC
lbl_805604D8:
/* 805604D8  38 A0 00 10 */	li r5, 0x10
lbl_805604DC:
/* 805604DC  48 00 09 15 */	bl aNM2_setupAction
lbl_805604E0:
/* 805604E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805604E4  7C 08 03 A6 */	mtlr r0
/* 805604E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805604EC  4E 80 00 20 */	blr 
