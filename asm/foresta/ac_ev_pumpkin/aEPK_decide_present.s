lbl_805229B8:
/* 805229B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805229BC  7C 08 02 A6 */	mflr r0
/* 805229C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805229C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805229C8  7C 7F 1B 78 */	mr r31, r3
/* 805229CC  4B B3 A3 29 */	bl fqrand
/* 805229D0  3C 60 80 65 */	lis r3, lit_534@ha /* 0x80649174@ha */
/* 805229D4  C0 03 91 74 */	lfs f0, lit_534@l(r3)  /* 0x80649174@l */
/* 805229D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 805229DC  FC 00 00 1E */	fctiwz f0, f0
/* 805229E0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805229E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805229E8  2C 00 00 01 */	cmpwi r0, 1
/* 805229EC  41 82 00 20 */	beq lbl_80522A0C
/* 805229F0  40 80 00 28 */	bge lbl_80522A18
/* 805229F4  2C 00 00 00 */	cmpwi r0, 0
/* 805229F8  40 80 00 08 */	bge lbl_80522A00
/* 805229FC  48 00 00 1C */	b lbl_80522A18
lbl_80522A00:
/* 80522A00  38 00 26 11 */	li r0, 0x2611
/* 80522A04  B0 01 00 08 */	sth r0, 8(r1)
/* 80522A08  48 00 00 34 */	b lbl_80522A3C
lbl_80522A0C:
/* 80522A0C  38 00 27 11 */	li r0, 0x2711
/* 80522A10  B0 01 00 08 */	sth r0, 8(r1)
/* 80522A14  48 00 00 28 */	b lbl_80522A3C
lbl_80522A18:
/* 80522A18  38 81 00 08 */	addi r4, r1, 8
/* 80522A1C  38 60 00 00 */	li r3, 0
/* 80522A20  38 A0 00 01 */	li r5, 1
/* 80522A24  38 C0 00 00 */	li r6, 0
/* 80522A28  38 E0 00 00 */	li r7, 0
/* 80522A2C  39 00 00 00 */	li r8, 0
/* 80522A30  39 20 00 06 */	li r9, 6
/* 80522A34  39 40 00 00 */	li r10, 0
/* 80522A38  4B EC 59 A5 */	bl mSP_SelectRandomItem_New
lbl_80522A3C:
/* 80522A3C  A0 01 00 08 */	lhz r0, 8(r1)
/* 80522A40  B0 1F 09 A0 */	sth r0, 0x9a0(r31)
/* 80522A44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80522A48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80522A4C  7C 08 03 A6 */	mtlr r0
/* 80522A50  38 21 00 20 */	addi r1, r1, 0x20
/* 80522A54  4E 80 00 20 */	blr 
