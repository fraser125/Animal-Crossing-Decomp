lbl_804C8A10:
/* 804C8A10  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804C8A14  7C 08 02 A6 */	mflr r0
/* 804C8A18  90 01 00 94 */	stw r0, 0x94(r1)
/* 804C8A1C  39 61 00 90 */	addi r11, r1, 0x90
/* 804C8A20  4B BD 24 99 */	bl func_8009AEB8
/* 804C8A24  7D 19 43 78 */	mr r25, r8
/* 804C8A28  7C 76 1B 78 */	mr r22, r3
/* 804C8A2C  7F 3E 07 34 */	extsh r30, r25
/* 804C8A30  7C 97 23 78 */	mr r23, r4
/* 804C8A34  2C 1E 00 02 */	cmpwi r30, 2
/* 804C8A38  7C BF 2B 78 */	mr r31, r5
/* 804C8A3C  7C D8 33 78 */	mr r24, r6
/* 804C8A40  7C FD 3B 78 */	mr r29, r7
/* 804C8A44  7D 3A 4B 78 */	mr r26, r9
/* 804C8A48  3B 60 00 00 */	li r27, 0
/* 804C8A4C  3B 80 FF FF */	li r28, -1
/* 804C8A50  41 82 00 58 */	beq lbl_804C8AA8
/* 804C8A54  40 80 00 AC */	bge lbl_804C8B00
/* 804C8A58  2C 1E 00 01 */	cmpwi r30, 1
/* 804C8A5C  40 80 00 08 */	bge lbl_804C8A64
/* 804C8A60  48 00 00 A0 */	b lbl_804C8B00
lbl_804C8A64:
/* 804C8A64  56 E0 04 3E */	clrlwi r0, r23, 0x10
/* 804C8A68  28 00 00 5C */	cmplwi r0, 0x5c
/* 804C8A6C  40 82 00 0C */	bne lbl_804C8A78
/* 804C8A70  3B 80 00 5D */	li r28, 0x5d
/* 804C8A74  48 00 00 8C */	b lbl_804C8B00
lbl_804C8A78:
/* 804C8A78  80 9F 00 00 */	lwz r4, 0(r31)
/* 804C8A7C  38 61 00 44 */	addi r3, r1, 0x44
/* 804C8A80  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C8A84  90 81 00 44 */	stw r4, 0x44(r1)
/* 804C8A88  90 01 00 48 */	stw r0, 0x48(r1)
/* 804C8A8C  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C8A90  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804C8A94  4B EC 79 01 */	bl mCoBG_GetHoleNumber
/* 804C8A98  2C 03 00 00 */	cmpwi r3, 0
/* 804C8A9C  41 80 00 64 */	blt lbl_804C8B00
/* 804C8AA0  3B 83 00 11 */	addi r28, r3, 0x11
/* 804C8AA4  48 00 00 5C */	b lbl_804C8B00
lbl_804C8AA8:
/* 804C8AA8  80 9F 00 00 */	lwz r4, 0(r31)
/* 804C8AAC  38 61 00 38 */	addi r3, r1, 0x38
/* 804C8AB0  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C8AB4  90 81 00 38 */	stw r4, 0x38(r1)
/* 804C8AB8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804C8ABC  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C8AC0  90 01 00 40 */	stw r0, 0x40(r1)
/* 804C8AC4  4B ED E9 6D */	bl mFI_GetUnitFG
/* 804C8AC8  28 03 00 00 */	cmplwi r3, 0
/* 804C8ACC  41 82 00 34 */	beq lbl_804C8B00
/* 804C8AD0  A3 83 00 00 */	lhz r28, 0(r3)
/* 804C8AD4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C8AD8  80 DF 00 00 */	lwz r6, 0(r31)
/* 804C8ADC  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C8AE0  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C8AE4  38 81 00 2C */	addi r4, r1, 0x2c
/* 804C8AE8  38 A0 00 01 */	li r5, 1
/* 804C8AEC  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 804C8AF0  90 01 00 30 */	stw r0, 0x30(r1)
/* 804C8AF4  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C8AF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C8AFC  4B ED ED 35 */	bl mFI_SetFG_common
lbl_804C8B00:
/* 804C8B00  2C 1C 00 00 */	cmpwi r28, 0
/* 804C8B04  41 80 01 3C */	blt lbl_804C8C40
/* 804C8B08  80 BF 00 00 */	lwz r5, 0(r31)
/* 804C8B0C  38 61 00 50 */	addi r3, r1, 0x50
/* 804C8B10  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C8B14  38 81 00 20 */	addi r4, r1, 0x20
/* 804C8B18  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804C8B1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C8B20  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C8B24  90 01 00 28 */	stw r0, 0x28(r1)
/* 804C8B28  4B ED CA 15 */	bl mFI_Wpos2UtCenterWpos
/* 804C8B2C  80 9F 00 00 */	lwz r4, 0(r31)
/* 804C8B30  3C 60 80 64 */	lis r3, lit_664@ha /* 0x806461E4@ha */
/* 804C8B34  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C8B38  C0 23 61 E4 */	lfs f1, lit_664@l(r3)  /* 0x806461E4@l */
/* 804C8B3C  38 61 00 14 */	addi r3, r1, 0x14
/* 804C8B40  90 81 00 14 */	stw r4, 0x14(r1)
/* 804C8B44  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C8B48  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C8B4C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C8B50  4B EC 6E 49 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804C8B54  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 804C8B58  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 804C8B5C  3B E3 00 01 */	addi r31, r3, 1
/* 804C8B60  3B A0 00 00 */	li r29, 0
/* 804C8B64  48 00 00 CC */	b lbl_804C8C30
lbl_804C8B68:
/* 804C8B68  A8 16 00 16 */	lha r0, 0x16(r22)
/* 804C8B6C  2C 00 00 00 */	cmpwi r0, 0
/* 804C8B70  40 82 00 B8 */	bne lbl_804C8C28
/* 804C8B74  2C 1E 00 02 */	cmpwi r30, 2
/* 804C8B78  41 82 00 30 */	beq lbl_804C8BA8
/* 804C8B7C  40 80 00 80 */	bge lbl_804C8BFC
/* 804C8B80  2C 1E 00 01 */	cmpwi r30, 1
/* 804C8B84  40 80 00 08 */	bge lbl_804C8B8C
/* 804C8B88  48 00 00 74 */	b lbl_804C8BFC
lbl_804C8B8C:
/* 804C8B8C  B2 F6 00 1A */	sth r23, 0x1a(r22)
/* 804C8B90  3C 60 80 64 */	lis r3, data_806461DC@ha /* 0x806461DC@ha */
/* 804C8B94  C0 03 61 DC */	lfs f0, data_806461DC@l(r3)  /* 0x806461DC@l */
/* 804C8B98  3B 60 00 01 */	li r27, 1
/* 804C8B9C  B3 96 00 18 */	sth r28, 0x18(r22)
/* 804C8BA0  D0 16 00 0C */	stfs f0, 0xc(r22)
/* 804C8BA4  48 00 00 58 */	b lbl_804C8BFC
lbl_804C8BA8:
/* 804C8BA8  B2 F6 00 1A */	sth r23, 0x1a(r22)
/* 804C8BAC  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646204@ha */
/* 804C8BB0  38 83 62 04 */	addi r4, r3, lit_845@l /* 0x80646204@l */
/* 804C8BB4  C0 04 00 00 */	lfs f0, 0(r4)
/* 804C8BB8  7E C3 B3 78 */	mr r3, r22
/* 804C8BBC  B3 96 00 18 */	sth r28, 0x18(r22)
/* 804C8BC0  38 81 00 50 */	addi r4, r1, 0x50
/* 804C8BC4  D0 16 00 0C */	stfs f0, 0xc(r22)
/* 804C8BC8  4B EF 22 F5 */	bl xyz_t_move
/* 804C8BCC  80 D6 00 00 */	lwz r6, 0(r22)
/* 804C8BD0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C8BD4  80 16 00 04 */	lwz r0, 4(r22)
/* 804C8BD8  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C8BDC  38 81 00 08 */	addi r4, r1, 8
/* 804C8BE0  38 A0 00 01 */	li r5, 1
/* 804C8BE4  90 C1 00 08 */	stw r6, 8(r1)
/* 804C8BE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C8BEC  80 16 00 08 */	lwz r0, 8(r22)
/* 804C8BF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C8BF4  4B ED EC 3D */	bl mFI_SetFG_common
/* 804C8BF8  3B 60 00 01 */	li r27, 1
lbl_804C8BFC:
/* 804C8BFC  2C 1B 00 00 */	cmpwi r27, 0
/* 804C8C00  41 82 00 28 */	beq lbl_804C8C28
/* 804C8C04  B3 36 00 16 */	sth r25, 0x16(r22)
/* 804C8C08  7E C3 B3 78 */	mr r3, r22
/* 804C8C0C  38 81 00 50 */	addi r4, r1, 0x50
/* 804C8C10  4B EF 22 AD */	bl xyz_t_move
/* 804C8C14  38 00 00 00 */	li r0, 0
/* 804C8C18  B0 16 00 1C */	sth r0, 0x1c(r22)
/* 804C8C1C  B3 16 00 1E */	sth r24, 0x1e(r22)
/* 804C8C20  B3 F6 00 20 */	sth r31, 0x20(r22)
/* 804C8C24  B3 56 00 22 */	sth r26, 0x22(r22)
lbl_804C8C28:
/* 804C8C28  3B BD 00 01 */	addi r29, r29, 1
/* 804C8C2C  3A D6 00 24 */	addi r22, r22, 0x24
lbl_804C8C30:
/* 804C8C30  2C 1B 00 00 */	cmpwi r27, 0
/* 804C8C34  40 82 00 0C */	bne lbl_804C8C40
/* 804C8C38  2C 1D 00 01 */	cmpwi r29, 1
/* 804C8C3C  41 80 FF 2C */	blt lbl_804C8B68
lbl_804C8C40:
/* 804C8C40  7F 63 DB 78 */	mr r3, r27
/* 804C8C44  39 61 00 90 */	addi r11, r1, 0x90
/* 804C8C48  4B BD 22 BD */	bl func_8009AF04
/* 804C8C4C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804C8C50  7C 08 03 A6 */	mtlr r0
/* 804C8C54  38 21 00 90 */	addi r1, r1, 0x90
/* 804C8C58  4E 80 00 20 */	blr 
