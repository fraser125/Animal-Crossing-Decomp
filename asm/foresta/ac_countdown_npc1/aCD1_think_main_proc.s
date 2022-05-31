lbl_80517AC4:
/* 80517AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80517AC8  7C 08 02 A6 */	mflr r0
/* 80517ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80517AD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80517AD4  7C 7F 1B 78 */	mr r31, r3
/* 80517AD8  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 80517ADC  28 00 00 16 */	cmplwi r0, 0x16
/* 80517AE0  40 82 00 B4 */	bne lbl_80517B94
/* 80517AE4  80 1F 09 A0 */	lwz r0, 0x9a0(r31)
/* 80517AE8  2C 00 00 04 */	cmpwi r0, 4
/* 80517AEC  40 82 00 40 */	bne lbl_80517B2C
/* 80517AF0  80 9F 09 94 */	lwz r4, 0x994(r31)
/* 80517AF4  2C 04 00 03 */	cmpwi r4, 3
/* 80517AF8  41 82 00 20 */	beq lbl_80517B18
/* 80517AFC  2C 04 00 04 */	cmpwi r4, 4
/* 80517B00  41 82 00 18 */	beq lbl_80517B18
/* 80517B04  2C 04 00 05 */	cmpwi r4, 5
/* 80517B08  41 82 00 10 */	beq lbl_80517B18
/* 80517B0C  38 80 00 03 */	li r4, 3
/* 80517B10  4B FF FC BD */	bl aCD1_setupAction
/* 80517B14  48 00 00 0C */	b lbl_80517B20
lbl_80517B18:
/* 80517B18  7F E3 FB 78 */	mr r3, r31
/* 80517B1C  4B FF FC B1 */	bl aCD1_setupAction
lbl_80517B20:
/* 80517B20  38 00 00 00 */	li r0, 0
/* 80517B24  B0 1F 09 24 */	sth r0, 0x924(r31)
/* 80517B28  48 00 00 50 */	b lbl_80517B78
lbl_80517B2C:
/* 80517B2C  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 80517B30  28 00 00 FF */	cmplwi r0, 0xff
/* 80517B34  40 82 00 44 */	bne lbl_80517B78
/* 80517B38  80 1F 09 98 */	lwz r0, 0x998(r31)
/* 80517B3C  2C 00 FF FF */	cmpwi r0, -1
/* 80517B40  41 82 00 0C */	beq lbl_80517B4C
/* 80517B44  7C 04 03 78 */	mr r4, r0
/* 80517B48  48 00 00 20 */	b lbl_80517B68
lbl_80517B4C:
/* 80517B4C  4B FF FD CD */	bl aCD1_get_next_move_act
/* 80517B50  80 1F 09 A0 */	lwz r0, 0x9a0(r31)
/* 80517B54  7C 64 1B 78 */	mr r4, r3
/* 80517B58  2C 00 00 05 */	cmpwi r0, 5
/* 80517B5C  41 82 00 08 */	beq lbl_80517B64
/* 80517B60  48 00 00 08 */	b lbl_80517B68
lbl_80517B64:
/* 80517B64  38 84 00 08 */	addi r4, r4, 8
lbl_80517B68:
/* 80517B68  38 00 00 00 */	li r0, 0
/* 80517B6C  7F E3 FB 78 */	mr r3, r31
/* 80517B70  B0 1F 09 14 */	sth r0, 0x914(r31)
/* 80517B74  4B FF FC 59 */	bl aCD1_setupAction
lbl_80517B78:
/* 80517B78  38 00 FF FF */	li r0, -1
/* 80517B7C  7F E3 FB 78 */	mr r3, r31
/* 80517B80  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80517B84  4B FF F5 C9 */	bl func_8051714C
/* 80517B88  7F E3 FB 78 */	mr r3, r31
/* 80517B8C  4B FF FE AD */	bl aCD1_decide_demo_flg
/* 80517B90  48 00 00 9C */	b lbl_80517C2C
lbl_80517B94:
/* 80517B94  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 80517B98  28 00 00 FF */	cmplwi r0, 0xff
/* 80517B9C  40 82 00 90 */	bne lbl_80517C2C
/* 80517BA0  80 1F 09 A0 */	lwz r0, 0x9a0(r31)
/* 80517BA4  2C 00 00 04 */	cmpwi r0, 4
/* 80517BA8  40 82 00 40 */	bne lbl_80517BE8
/* 80517BAC  80 9F 09 94 */	lwz r4, 0x994(r31)
/* 80517BB0  2C 04 00 03 */	cmpwi r4, 3
/* 80517BB4  41 82 00 20 */	beq lbl_80517BD4
/* 80517BB8  2C 04 00 04 */	cmpwi r4, 4
/* 80517BBC  41 82 00 18 */	beq lbl_80517BD4
/* 80517BC0  2C 04 00 05 */	cmpwi r4, 5
/* 80517BC4  41 82 00 10 */	beq lbl_80517BD4
/* 80517BC8  38 80 00 03 */	li r4, 3
/* 80517BCC  4B FF FC 01 */	bl aCD1_setupAction
/* 80517BD0  48 00 00 0C */	b lbl_80517BDC
lbl_80517BD4:
/* 80517BD4  7F E3 FB 78 */	mr r3, r31
/* 80517BD8  4B FF FB F5 */	bl aCD1_setupAction
lbl_80517BDC:
/* 80517BDC  38 00 00 00 */	li r0, 0
/* 80517BE0  B0 1F 09 24 */	sth r0, 0x924(r31)
/* 80517BE4  48 00 00 30 */	b lbl_80517C14
lbl_80517BE8:
/* 80517BE8  4B FF FD 31 */	bl aCD1_get_next_move_act
/* 80517BEC  80 1F 09 A0 */	lwz r0, 0x9a0(r31)
/* 80517BF0  7C 64 1B 78 */	mr r4, r3
/* 80517BF4  2C 00 00 05 */	cmpwi r0, 5
/* 80517BF8  41 82 00 08 */	beq lbl_80517C00
/* 80517BFC  48 00 00 08 */	b lbl_80517C04
lbl_80517C00:
/* 80517C00  38 84 00 08 */	addi r4, r4, 8
lbl_80517C04:
/* 80517C04  38 00 00 00 */	li r0, 0
/* 80517C08  7F E3 FB 78 */	mr r3, r31
/* 80517C0C  B0 1F 09 14 */	sth r0, 0x914(r31)
/* 80517C10  4B FF FB BD */	bl aCD1_setupAction
lbl_80517C14:
/* 80517C14  38 00 FF FF */	li r0, -1
/* 80517C18  7F E3 FB 78 */	mr r3, r31
/* 80517C1C  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80517C20  4B FF F5 2D */	bl func_8051714C
/* 80517C24  7F E3 FB 78 */	mr r3, r31
/* 80517C28  4B FF FE 11 */	bl aCD1_decide_demo_flg
lbl_80517C2C:
/* 80517C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80517C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80517C34  7C 08 03 A6 */	mtlr r0
/* 80517C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80517C3C  4E 80 00 20 */	blr 
