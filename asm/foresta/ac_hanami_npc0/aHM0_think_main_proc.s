lbl_80529D04:
/* 80529D04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80529D08  7C 08 02 A6 */	mflr r0
/* 80529D0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80529D10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80529D14  7C 7F 1B 78 */	mr r31, r3
/* 80529D18  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 80529D1C  28 00 00 FF */	cmplwi r0, 0xff
/* 80529D20  40 82 00 6C */	bne lbl_80529D8C
/* 80529D24  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 80529D28  28 00 00 16 */	cmplwi r0, 0x16
/* 80529D2C  40 82 00 48 */	bne lbl_80529D74
/* 80529D30  4B B3 2F C5 */	bl fqrand
/* 80529D34  3C 60 80 65 */	lis r3, lit_560@ha /* 0x80649230@ha */
/* 80529D38  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80529D3C  38 83 92 30 */	addi r4, r3, lit_560@l /* 0x80649230@l */
/* 80529D40  3C 60 80 6A */	lis r3, action@ha /* 0x806A11E8@ha */
/* 80529D44  C0 04 00 00 */	lfs f0, 0(r4)
/* 80529D48  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80529D4C  38 83 11 E8 */	addi r4, r3, action@l /* 0x806A11E8@l */
/* 80529D50  7F E3 FB 78 */	mr r3, r31
/* 80529D54  EC 00 00 72 */	fmuls f0, f0, f1
/* 80529D58  FC 00 00 1E */	fctiwz f0, f0
/* 80529D5C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80529D60  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80529D64  7C A5 00 30 */	slw r5, r5, r0
/* 80529D68  54 A0 10 3A */	slwi r0, r5, 2
/* 80529D6C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80529D70  4B FF FE 49 */	bl aHM0_setupAction
lbl_80529D74:
/* 80529D74  38 60 01 37 */	li r3, 0x137
/* 80529D78  38 00 00 01 */	li r0, 1
/* 80529D7C  90 7F 08 40 */	stw r3, 0x840(r31)
/* 80529D80  7F E3 FB 78 */	mr r3, r31
/* 80529D84  98 1F 09 59 */	stb r0, 0x959(r31)
/* 80529D88  4B FF FC F5 */	bl func_80529A7C
lbl_80529D8C:
/* 80529D8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80529D90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80529D94  7C 08 03 A6 */	mtlr r0
/* 80529D98  38 21 00 20 */	addi r1, r1, 0x20
/* 80529D9C  4E 80 00 20 */	blr 
