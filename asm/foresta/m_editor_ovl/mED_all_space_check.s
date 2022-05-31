lbl_805D99C4:
/* 805D99C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D99C8  7C 08 02 A6 */	mflr r0
/* 805D99CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D99D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D99D4  93 C1 00 08 */	stw r30, 8(r1)
/* 805D99D8  7C 9E 23 78 */	mr r30, r4
/* 805D99DC  80 05 00 38 */	lwz r0, 0x38(r5)
/* 805D99E0  2C 00 00 03 */	cmpwi r0, 3
/* 805D99E4  41 82 00 0C */	beq lbl_805D99F0
/* 805D99E8  38 60 00 00 */	li r3, 0
/* 805D99EC  48 00 00 88 */	b lbl_805D9A74
lbl_805D99F0:
/* 805D99F0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805D99F4  83 FE 00 28 */	lwz r31, 0x28(r30)
/* 805D99F8  80 03 01 AC */	lwz r0, 0x1ac(r3)
/* 805D99FC  2C 00 00 02 */	cmpwi r0, 2
/* 805D9A00  40 82 00 2C */	bne lbl_805D9A2C
/* 805D9A04  80 63 01 B4 */	lwz r3, 0x1b4(r3)
/* 805D9A08  7F E4 FB 78 */	mr r4, r31
/* 805D9A0C  A8 BE 00 18 */	lha r5, 0x18(r30)
/* 805D9A10  4B DE 10 55 */	bl mem_cmp
/* 805D9A14  2C 03 00 00 */	cmpwi r3, 0
/* 805D9A18  40 82 00 0C */	bne lbl_805D9A24
/* 805D9A1C  38 00 00 00 */	li r0, 0
/* 805D9A20  48 00 00 10 */	b lbl_805D9A30
lbl_805D9A24:
/* 805D9A24  38 00 00 01 */	li r0, 1
/* 805D9A28  48 00 00 08 */	b lbl_805D9A30
lbl_805D9A2C:
/* 805D9A2C  38 00 00 00 */	li r0, 0
lbl_805D9A30:
/* 805D9A30  2C 00 00 00 */	cmpwi r0, 0
/* 805D9A34  40 82 00 34 */	bne lbl_805D9A68
/* 805D9A38  A8 1E 00 1E */	lha r0, 0x1e(r30)
/* 805D9A3C  7F E3 FB 78 */	mr r3, r31
/* 805D9A40  7C 09 03 A6 */	mtctr r0
/* 805D9A44  2C 00 00 00 */	cmpwi r0, 0
/* 805D9A48  40 81 00 20 */	ble lbl_805D9A68
lbl_805D9A4C:
/* 805D9A4C  88 03 00 00 */	lbz r0, 0(r3)
/* 805D9A50  28 00 00 20 */	cmplwi r0, 0x20
/* 805D9A54  41 82 00 0C */	beq lbl_805D9A60
/* 805D9A58  38 60 00 00 */	li r3, 0
/* 805D9A5C  48 00 00 18 */	b lbl_805D9A74
lbl_805D9A60:
/* 805D9A60  38 63 00 01 */	addi r3, r3, 1
/* 805D9A64  42 00 FF E8 */	bdnz lbl_805D9A4C
lbl_805D9A68:
/* 805D9A68  7F C3 F3 78 */	mr r3, r30
/* 805D9A6C  4B FF FF 19 */	bl mED_clear_input_data
/* 805D9A70  38 60 00 01 */	li r3, 1
lbl_805D9A74:
/* 805D9A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D9A78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D9A7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805D9A80  7C 08 03 A6 */	mtlr r0
/* 805D9A84  38 21 00 10 */	addi r1, r1, 0x10
/* 805D9A88  4E 80 00 20 */	blr 
