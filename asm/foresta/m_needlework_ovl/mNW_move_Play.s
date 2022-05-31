lbl_805E9D24:
/* 805E9D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E9D28  7C 08 02 A6 */	mflr r0
/* 805E9D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E9D30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E9D34  7C 9F 23 78 */	mr r31, r4
/* 805E9D38  93 C1 00 08 */	stw r30, 8(r1)
/* 805E9D3C  7C 7E 1B 78 */	mr r30, r3
/* 805E9D40  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 805E9D44  2C 00 00 00 */	cmpwi r0, 0
/* 805E9D48  40 82 00 A8 */	bne lbl_805E9DF0
/* 805E9D4C  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805E9D50  38 00 00 04 */	li r0, 4
/* 805E9D54  38 60 00 00 */	li r3, 0
/* 805E9D58  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805E9D5C  38 A4 00 08 */	addi r5, r4, 8
/* 805E9D60  7C 09 03 A6 */	mtctr r0
lbl_805E9D64:
/* 805E9D64  98 65 00 00 */	stb r3, 0(r5)
/* 805E9D68  38 A5 00 B4 */	addi r5, r5, 0xb4
/* 805E9D6C  42 00 FF F8 */	bdnz lbl_805E9D64
/* 805E9D70  38 00 FF FF */	li r0, -1
/* 805E9D74  3C 60 80 65 */	lis r3, lit_574@ha /* 0x8064B69C@ha */
/* 805E9D78  90 04 00 00 */	stw r0, 0(r4)
/* 805E9D7C  38 A0 00 00 */	li r5, 0
/* 805E9D80  C0 23 B6 9C */	lfs f1, lit_574@l(r3)  /* 0x8064B69C@l */
/* 805E9D84  7F C3 F3 78 */	mr r3, r30
/* 805E9D88  90 04 00 04 */	stw r0, 4(r4)
/* 805E9D8C  38 80 00 11 */	li r4, 0x11
/* 805E9D90  FC 40 08 90 */	fmr f2, f1
/* 805E9D94  38 C0 00 00 */	li r6, 0
/* 805E9D98  80 FE 00 2C */	lwz r7, 0x2c(r30)
/* 805E9D9C  80 E7 09 7C */	lwz r7, 0x97c(r7)
/* 805E9DA0  81 87 02 E4 */	lwz r12, 0x2e4(r7)
/* 805E9DA4  7D 89 03 A6 */	mtctr r12
/* 805E9DA8  4E 80 04 21 */	bctrl 
/* 805E9DAC  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805E9DB0  7F C3 F3 78 */	mr r3, r30
/* 805E9DB4  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805E9DB8  81 84 02 E0 */	lwz r12, 0x2e0(r4)
/* 805E9DBC  7D 89 03 A6 */	mtctr r12
/* 805E9DC0  4E 80 04 21 */	bctrl 
/* 805E9DC4  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 805E9DC8  2C 00 00 01 */	cmpwi r0, 1
/* 805E9DCC  40 82 00 1C */	bne lbl_805E9DE8
/* 805E9DD0  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805E9DD4  7F C3 F3 78 */	mr r3, r30
/* 805E9DD8  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805E9DDC  81 84 03 74 */	lwz r12, 0x374(r4)
/* 805E9DE0  7D 89 03 A6 */	mtctr r12
/* 805E9DE4  4E 80 04 21 */	bctrl 
lbl_805E9DE8:
/* 805E9DE8  38 00 00 01 */	li r0, 1
/* 805E9DEC  90 1F 00 2C */	stw r0, 0x2c(r31)
lbl_805E9DF0:
/* 805E9DF0  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805E9DF4  7F C3 F3 78 */	mr r3, r30
/* 805E9DF8  7F E4 FB 78 */	mr r4, r31
/* 805E9DFC  81 85 09 1C */	lwz r12, 0x91c(r5)
/* 805E9E00  7D 89 03 A6 */	mtctr r12
/* 805E9E04  4E 80 04 21 */	bctrl 
/* 805E9E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E9E0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E9E10  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E9E14  7C 08 03 A6 */	mtlr r0
/* 805E9E18  38 21 00 10 */	addi r1, r1, 0x10
/* 805E9E1C  4E 80 00 20 */	blr 
