lbl_8057CFF4:
/* 8057CFF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057CFF8  7C 08 02 A6 */	mflr r0
/* 8057CFFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057D000  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8057D004  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8057D008  7C 7E 1B 78 */	mr r30, r3
/* 8057D00C  4B AD FC E9 */	bl fqrand
/* 8057D010  3C 80 80 65 */	lis r4, lit_697@ha /* 0x80649A14@ha */
/* 8057D014  80 7E 09 B8 */	lwz r3, 0x9b8(r30)
/* 8057D018  C0 04 9A 14 */	lfs f0, lit_697@l(r4)  /* 0x80649A14@l */
/* 8057D01C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8057D020  FC 00 00 1E */	fctiwz f0, f0
/* 8057D024  D8 01 00 08 */	stfd f0, 8(r1)
/* 8057D028  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D02C  4B FF FD 11 */	bl uketori_lottery_ticket
/* 8057D030  7F C3 F3 78 */	mr r3, r30
/* 8057D034  38 80 00 03 */	li r4, 3
/* 8057D038  48 00 05 75 */	bl aSHM_change_talk_proc
/* 8057D03C  38 00 00 10 */	li r0, 0x10
/* 8057D040  2C 1F 00 05 */	cmpwi r31, 5
/* 8057D044  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8057D048  40 80 00 10 */	bge lbl_8057D058
/* 8057D04C  38 00 00 00 */	li r0, 0
/* 8057D050  B0 1E 09 AC */	sth r0, 0x9ac(r30)
/* 8057D054  48 00 00 34 */	b lbl_8057D088
lbl_8057D058:
/* 8057D058  2C 1F 00 0F */	cmpwi r31, 0xf
/* 8057D05C  40 80 00 10 */	bge lbl_8057D06C
/* 8057D060  38 00 00 01 */	li r0, 1
/* 8057D064  B0 1E 09 AC */	sth r0, 0x9ac(r30)
/* 8057D068  48 00 00 20 */	b lbl_8057D088
lbl_8057D06C:
/* 8057D06C  2C 1F 00 23 */	cmpwi r31, 0x23
/* 8057D070  40 80 00 10 */	bge lbl_8057D080
/* 8057D074  38 00 00 02 */	li r0, 2
/* 8057D078  B0 1E 09 AC */	sth r0, 0x9ac(r30)
/* 8057D07C  48 00 00 0C */	b lbl_8057D088
lbl_8057D080:
/* 8057D080  38 00 00 03 */	li r0, 3
/* 8057D084  B0 1E 09 AC */	sth r0, 0x9ac(r30)
lbl_8057D088:
/* 8057D088  A8 1E 09 AC */	lha r0, 0x9ac(r30)
/* 8057D08C  2C 00 00 03 */	cmpwi r0, 3
/* 8057D090  41 82 00 1C */	beq lbl_8057D0AC
/* 8057D094  7F C3 F3 78 */	mr r3, r30
/* 8057D098  4B FF FE 81 */	bl to_atari
/* 8057D09C  2C 03 00 00 */	cmpwi r3, 0
/* 8057D0A0  40 82 00 0C */	bne lbl_8057D0AC
/* 8057D0A4  38 00 00 03 */	li r0, 3
/* 8057D0A8  B0 1E 09 AC */	sth r0, 0x9ac(r30)
lbl_8057D0AC:
/* 8057D0AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057D0B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8057D0B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8057D0B8  7C 08 03 A6 */	mtlr r0
/* 8057D0BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8057D0C0  4E 80 00 20 */	blr 
