lbl_805F99D4:
/* 805F99D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F99D8  7C 08 02 A6 */	mflr r0
/* 805F99DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F99E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F99E4  7C 9F 23 78 */	mr r31, r4
/* 805F99E8  93 C1 00 08 */	stw r30, 8(r1)
/* 805F99EC  7C 7E 1B 78 */	mr r30, r3
/* 805F99F0  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805F99F4  2C 00 00 01 */	cmpwi r0, 1
/* 805F99F8  40 82 00 88 */	bne lbl_805F9A80
/* 805F99FC  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805F9A00  80 63 09 80 */	lwz r3, 0x980(r3)
/* 805F9A04  38 63 02 36 */	addi r3, r3, 0x236
/* 805F9A08  4B DC 2D 99 */	bl mMl_check_not_used_mail
/* 805F9A0C  2C 03 00 01 */	cmpwi r3, 1
/* 805F9A10  40 82 02 20 */	bne lbl_805F9C30
/* 805F9A14  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 805F9A18  2C 00 00 02 */	cmpwi r0, 2
/* 805F9A1C  40 80 00 30 */	bge lbl_805F9A4C
/* 805F9A20  7F C3 F3 78 */	mr r3, r30
/* 805F9A24  38 80 00 02 */	li r4, 2
/* 805F9A28  4B FF FE D9 */	bl mTG_move_check_hand_item
/* 805F9A2C  2C 03 00 00 */	cmpwi r3, 0
/* 805F9A30  41 82 00 1C */	beq lbl_805F9A4C
/* 805F9A34  38 60 00 02 */	li r3, 2
/* 805F9A38  38 00 00 00 */	li r0, 0
/* 805F9A3C  90 7F 00 38 */	stw r3, 0x38(r31)
/* 805F9A40  38 60 00 01 */	li r3, 1
/* 805F9A44  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9A48  48 00 01 EC */	b lbl_805F9C34
lbl_805F9A4C:
/* 805F9A4C  38 80 00 00 */	li r4, 0
/* 805F9A50  38 00 00 04 */	li r0, 4
/* 805F9A54  90 9F 00 38 */	stw r4, 0x38(r31)
/* 805F9A58  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 805F9A5C  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 805F9A60  38 03 FF FE */	addi r0, r3, -2
/* 805F9A64  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9A68  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 805F9A6C  2C 00 00 00 */	cmpwi r0, 0
/* 805F9A70  40 80 00 08 */	bge lbl_805F9A78
/* 805F9A74  90 9F 00 40 */	stw r4, 0x40(r31)
lbl_805F9A78:
/* 805F9A78  38 60 00 01 */	li r3, 1
/* 805F9A7C  48 00 01 B8 */	b lbl_805F9C34
lbl_805F9A80:
/* 805F9A80  2C 00 00 08 */	cmpwi r0, 8
/* 805F9A84  40 82 00 98 */	bne lbl_805F9B1C
/* 805F9A88  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805F9A8C  80 63 09 88 */	lwz r3, 0x988(r3)
/* 805F9A90  88 03 03 F2 */	lbz r0, 0x3f2(r3)
/* 805F9A94  28 00 00 01 */	cmplwi r0, 1
/* 805F9A98  41 82 00 3C */	beq lbl_805F9AD4
/* 805F9A9C  38 00 00 07 */	li r0, 7
/* 805F9AA0  90 1F 00 38 */	stw r0, 0x38(r31)
/* 805F9AA4  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 805F9AA8  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 805F9AAC  2C 00 00 01 */	cmpwi r0, 1
/* 805F9AB0  40 82 00 10 */	bne lbl_805F9AC0
/* 805F9AB4  38 00 00 02 */	li r0, 2
/* 805F9AB8  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9ABC  48 00 00 58 */	b lbl_805F9B14
lbl_805F9AC0:
/* 805F9AC0  2C 00 00 02 */	cmpwi r0, 2
/* 805F9AC4  40 82 00 50 */	bne lbl_805F9B14
/* 805F9AC8  38 00 00 04 */	li r0, 4
/* 805F9ACC  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9AD0  48 00 00 44 */	b lbl_805F9B14
lbl_805F9AD4:
/* 805F9AD4  38 00 00 01 */	li r0, 1
/* 805F9AD8  90 1F 00 38 */	stw r0, 0x38(r31)
/* 805F9ADC  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 805F9AE0  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 805F9AE4  2C 00 00 00 */	cmpwi r0, 0
/* 805F9AE8  40 82 00 10 */	bne lbl_805F9AF8
/* 805F9AEC  38 00 00 00 */	li r0, 0
/* 805F9AF0  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9AF4  48 00 00 20 */	b lbl_805F9B14
lbl_805F9AF8:
/* 805F9AF8  2C 00 00 01 */	cmpwi r0, 1
/* 805F9AFC  40 82 00 10 */	bne lbl_805F9B0C
/* 805F9B00  38 00 00 02 */	li r0, 2
/* 805F9B04  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9B08  48 00 00 0C */	b lbl_805F9B14
lbl_805F9B0C:
/* 805F9B0C  38 00 00 03 */	li r0, 3
/* 805F9B10  90 1F 00 40 */	stw r0, 0x40(r31)
lbl_805F9B14:
/* 805F9B14  38 60 00 01 */	li r3, 1
/* 805F9B18  48 00 01 1C */	b lbl_805F9C34
lbl_805F9B1C:
/* 805F9B1C  2C 00 00 02 */	cmpwi r0, 2
/* 805F9B20  40 82 00 24 */	bne lbl_805F9B44
/* 805F9B24  38 80 00 03 */	li r4, 3
/* 805F9B28  4B FF FD D9 */	bl mTG_move_check_hand_item
/* 805F9B2C  2C 03 00 00 */	cmpwi r3, 0
/* 805F9B30  41 82 01 00 */	beq lbl_805F9C30
/* 805F9B34  38 00 00 03 */	li r0, 3
/* 805F9B38  38 60 00 01 */	li r3, 1
/* 805F9B3C  90 1F 00 38 */	stw r0, 0x38(r31)
/* 805F9B40  48 00 00 F4 */	b lbl_805F9C34
lbl_805F9B44:
/* 805F9B44  2C 00 00 00 */	cmpwi r0, 0
/* 805F9B48  40 82 00 28 */	bne lbl_805F9B70
/* 805F9B4C  4B FF 5A 99 */	bl func_805EF5E4
/* 805F9B50  2C 03 00 01 */	cmpwi r3, 1
/* 805F9B54  40 82 00 DC */	bne lbl_805F9C30
/* 805F9B58  38 60 00 13 */	li r3, 0x13
/* 805F9B5C  38 00 00 00 */	li r0, 0
/* 805F9B60  90 7F 00 38 */	stw r3, 0x38(r31)
/* 805F9B64  38 60 00 01 */	li r3, 1
/* 805F9B68  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9B6C  48 00 00 C8 */	b lbl_805F9C34
lbl_805F9B70:
/* 805F9B70  2C 00 00 03 */	cmpwi r0, 3
/* 805F9B74  40 82 00 20 */	bne lbl_805F9B94
/* 805F9B78  4B FF 5A 6D */	bl func_805EF5E4
/* 805F9B7C  2C 03 00 01 */	cmpwi r3, 1
/* 805F9B80  40 82 00 B0 */	bne lbl_805F9C30
/* 805F9B84  38 00 00 13 */	li r0, 0x13
/* 805F9B88  38 60 00 01 */	li r3, 1
/* 805F9B8C  90 1F 00 38 */	stw r0, 0x38(r31)
/* 805F9B90  48 00 00 A4 */	b lbl_805F9C34
lbl_805F9B94:
/* 805F9B94  2C 00 00 07 */	cmpwi r0, 7
/* 805F9B98  40 82 00 68 */	bne lbl_805F9C00
/* 805F9B9C  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805F9BA0  38 80 00 02 */	li r4, 2
/* 805F9BA4  38 00 00 08 */	li r0, 8
/* 805F9BA8  80 63 09 80 */	lwz r3, 0x980(r3)
/* 805F9BAC  B0 83 00 14 */	sth r4, 0x14(r3)
/* 805F9BB0  90 1F 00 38 */	stw r0, 0x38(r31)
/* 805F9BB4  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 805F9BB8  2C 00 00 01 */	cmpwi r0, 1
/* 805F9BBC  40 82 00 10 */	bne lbl_805F9BCC
/* 805F9BC0  38 00 00 00 */	li r0, 0
/* 805F9BC4  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9BC8  48 00 00 30 */	b lbl_805F9BF8
lbl_805F9BCC:
/* 805F9BCC  2C 00 00 02 */	cmpwi r0, 2
/* 805F9BD0  40 82 00 10 */	bne lbl_805F9BE0
/* 805F9BD4  38 00 00 01 */	li r0, 1
/* 805F9BD8  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9BDC  48 00 00 1C */	b lbl_805F9BF8
lbl_805F9BE0:
/* 805F9BE0  2C 00 00 03 */	cmpwi r0, 3
/* 805F9BE4  41 82 00 0C */	beq lbl_805F9BF0
/* 805F9BE8  2C 00 00 04 */	cmpwi r0, 4
/* 805F9BEC  40 82 00 0C */	bne lbl_805F9BF8
lbl_805F9BF0:
/* 805F9BF0  38 00 00 02 */	li r0, 2
/* 805F9BF4  90 1F 00 40 */	stw r0, 0x40(r31)
lbl_805F9BF8:
/* 805F9BF8  38 60 00 01 */	li r3, 1
/* 805F9BFC  48 00 00 38 */	b lbl_805F9C34
lbl_805F9C00:
/* 805F9C00  2C 00 00 13 */	cmpwi r0, 0x13
/* 805F9C04  40 82 00 2C */	bne lbl_805F9C30
/* 805F9C08  38 00 00 08 */	li r0, 8
/* 805F9C0C  38 80 00 01 */	li r4, 1
/* 805F9C10  90 1F 00 38 */	stw r0, 0x38(r31)
/* 805F9C14  38 00 00 02 */	li r0, 2
/* 805F9C18  38 60 00 01 */	li r3, 1
/* 805F9C1C  90 9F 00 40 */	stw r4, 0x40(r31)
/* 805F9C20  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805F9C24  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805F9C28  B0 04 00 14 */	sth r0, 0x14(r4)
/* 805F9C2C  48 00 00 08 */	b lbl_805F9C34
lbl_805F9C30:
/* 805F9C30  38 60 00 00 */	li r3, 0
lbl_805F9C34:
/* 805F9C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F9C38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F9C3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F9C40  7C 08 03 A6 */	mtlr r0
/* 805F9C44  38 21 00 10 */	addi r1, r1, 0x10
/* 805F9C48  4E 80 00 20 */	blr 
