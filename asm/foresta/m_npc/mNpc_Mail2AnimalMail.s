lbl_803CCC34:
/* 803CCC34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CCC38  7C 08 02 A6 */	mflr r0
/* 803CCC3C  38 A0 00 C0 */	li r5, 0xc0
/* 803CCC40  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CCC44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CCC48  7C 9F 23 78 */	mr r31, r4
/* 803CCC4C  38 9F 00 4A */	addi r4, r31, 0x4a
/* 803CCC50  93 C1 00 08 */	stw r30, 8(r1)
/* 803CCC54  7C 7E 1B 78 */	mr r30, r3
/* 803CCC58  38 7E 00 1D */	addi r3, r30, 0x1d
/* 803CCC5C  4B FE DD C9 */	bl func_803BAA24
/* 803CCC60  38 7E 00 05 */	addi r3, r30, 5
/* 803CCC64  38 9F 00 32 */	addi r4, r31, 0x32
/* 803CCC68  38 A0 00 18 */	li r5, 0x18
/* 803CCC6C  4B FE DD B9 */	bl func_803BAA24
/* 803CCC70  38 7E 00 DD */	addi r3, r30, 0xdd
/* 803CCC74  38 9F 01 0A */	addi r4, r31, 0x10a
/* 803CCC78  38 A0 00 20 */	li r5, 0x20
/* 803CCC7C  4B FE DD A9 */	bl func_803BAA24
/* 803CCC80  88 1F 00 2F */	lbz r0, 0x2f(r31)
/* 803CCC84  98 1E 00 04 */	stb r0, 4(r30)
/* 803CCC88  88 1F 00 2E */	lbz r0, 0x2e(r31)
/* 803CCC8C  98 1E 00 00 */	stb r0, 0(r30)
/* 803CCC90  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 803CCC94  B0 1E 00 02 */	sth r0, 2(r30)
/* 803CCC98  88 1F 00 31 */	lbz r0, 0x31(r31)
/* 803CCC9C  98 1E 00 01 */	stb r0, 1(r30)
/* 803CCCA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CCCA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803CCCA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CCCAC  7C 08 03 A6 */	mtlr r0
/* 803CCCB0  38 21 00 10 */	addi r1, r1, 0x10
/* 803CCCB4  4E 80 00 20 */	blr 
