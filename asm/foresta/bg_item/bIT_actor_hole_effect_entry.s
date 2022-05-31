lbl_804B9B00:
/* 804B9B00  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804B9B04  7C 08 02 A6 */	mflr r0
/* 804B9B08  90 01 00 94 */	stw r0, 0x94(r1)
/* 804B9B0C  39 61 00 90 */	addi r11, r1, 0x90
/* 804B9B10  4B BE 13 A9 */	bl func_8009AEB8
/* 804B9B14  7D 19 43 78 */	mr r25, r8
/* 804B9B18  7C 76 1B 78 */	mr r22, r3
/* 804B9B1C  7F 3E 07 34 */	extsh r30, r25
/* 804B9B20  7C 97 23 78 */	mr r23, r4
/* 804B9B24  2C 1E 00 02 */	cmpwi r30, 2
/* 804B9B28  7C BF 2B 78 */	mr r31, r5
/* 804B9B2C  7C D8 33 78 */	mr r24, r6
/* 804B9B30  7C FD 3B 78 */	mr r29, r7
/* 804B9B34  7D 3A 4B 78 */	mr r26, r9
/* 804B9B38  3B 60 00 00 */	li r27, 0
/* 804B9B3C  3B 80 FF FF */	li r28, -1
/* 804B9B40  41 82 00 58 */	beq lbl_804B9B98
/* 804B9B44  40 80 00 AC */	bge lbl_804B9BF0
/* 804B9B48  2C 1E 00 01 */	cmpwi r30, 1
/* 804B9B4C  40 80 00 08 */	bge lbl_804B9B54
/* 804B9B50  48 00 00 A0 */	b lbl_804B9BF0
lbl_804B9B54:
/* 804B9B54  56 E0 04 3E */	clrlwi r0, r23, 0x10
/* 804B9B58  28 00 00 5C */	cmplwi r0, 0x5c
/* 804B9B5C  40 82 00 0C */	bne lbl_804B9B68
/* 804B9B60  3B 80 00 5D */	li r28, 0x5d
/* 804B9B64  48 00 00 8C */	b lbl_804B9BF0
lbl_804B9B68:
/* 804B9B68  80 9F 00 00 */	lwz r4, 0(r31)
/* 804B9B6C  38 61 00 44 */	addi r3, r1, 0x44
/* 804B9B70  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B9B74  90 81 00 44 */	stw r4, 0x44(r1)
/* 804B9B78  90 01 00 48 */	stw r0, 0x48(r1)
/* 804B9B7C  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B9B80  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804B9B84  4B ED 68 11 */	bl mCoBG_GetHoleNumber
/* 804B9B88  2C 03 00 00 */	cmpwi r3, 0
/* 804B9B8C  41 80 00 64 */	blt lbl_804B9BF0
/* 804B9B90  3B 83 00 11 */	addi r28, r3, 0x11
/* 804B9B94  48 00 00 5C */	b lbl_804B9BF0
lbl_804B9B98:
/* 804B9B98  80 9F 00 00 */	lwz r4, 0(r31)
/* 804B9B9C  38 61 00 38 */	addi r3, r1, 0x38
/* 804B9BA0  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B9BA4  90 81 00 38 */	stw r4, 0x38(r1)
/* 804B9BA8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804B9BAC  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B9BB0  90 01 00 40 */	stw r0, 0x40(r1)
/* 804B9BB4  4B EE D8 7D */	bl mFI_GetUnitFG
/* 804B9BB8  28 03 00 00 */	cmplwi r3, 0
/* 804B9BBC  41 82 00 34 */	beq lbl_804B9BF0
/* 804B9BC0  A3 83 00 00 */	lhz r28, 0(r3)
/* 804B9BC4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804B9BC8  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B9BCC  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804B9BD0  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B9BD4  38 81 00 2C */	addi r4, r1, 0x2c
/* 804B9BD8  38 A0 00 01 */	li r5, 1
/* 804B9BDC  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 804B9BE0  90 01 00 30 */	stw r0, 0x30(r1)
/* 804B9BE4  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B9BE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B9BEC  4B EE DC 45 */	bl mFI_SetFG_common
lbl_804B9BF0:
/* 804B9BF0  2C 1C 00 00 */	cmpwi r28, 0
/* 804B9BF4  41 80 01 3C */	blt lbl_804B9D30
/* 804B9BF8  80 BF 00 00 */	lwz r5, 0(r31)
/* 804B9BFC  38 61 00 50 */	addi r3, r1, 0x50
/* 804B9C00  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B9C04  38 81 00 20 */	addi r4, r1, 0x20
/* 804B9C08  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804B9C0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B9C10  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B9C14  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B9C18  4B EE B9 25 */	bl mFI_Wpos2UtCenterWpos
/* 804B9C1C  80 9F 00 00 */	lwz r4, 0(r31)
/* 804B9C20  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646094@ha */
/* 804B9C24  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B9C28  C0 23 60 94 */	lfs f1, lit_664@l(r3)  /* 0x80646094@l */
/* 804B9C2C  38 61 00 14 */	addi r3, r1, 0x14
/* 804B9C30  90 81 00 14 */	stw r4, 0x14(r1)
/* 804B9C34  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B9C38  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B9C3C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B9C40  4B ED 5D 59 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B9C44  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 804B9C48  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 804B9C4C  3B E3 00 01 */	addi r31, r3, 1
/* 804B9C50  3B A0 00 00 */	li r29, 0
/* 804B9C54  48 00 00 CC */	b lbl_804B9D20
lbl_804B9C58:
/* 804B9C58  A8 16 00 16 */	lha r0, 0x16(r22)
/* 804B9C5C  2C 00 00 00 */	cmpwi r0, 0
/* 804B9C60  40 82 00 B8 */	bne lbl_804B9D18
/* 804B9C64  2C 1E 00 02 */	cmpwi r30, 2
/* 804B9C68  41 82 00 30 */	beq lbl_804B9C98
/* 804B9C6C  40 80 00 80 */	bge lbl_804B9CEC
/* 804B9C70  2C 1E 00 01 */	cmpwi r30, 1
/* 804B9C74  40 80 00 08 */	bge lbl_804B9C7C
/* 804B9C78  48 00 00 74 */	b lbl_804B9CEC
lbl_804B9C7C:
/* 804B9C7C  B2 F6 00 1A */	sth r23, 0x1a(r22)
/* 804B9C80  3C 60 80 64 */	lis r3, data_8064608C@ha /* 0x8064608C@ha */
/* 804B9C84  C0 03 60 8C */	lfs f0, data_8064608C@l(r3)  /* 0x8064608C@l */
/* 804B9C88  3B 60 00 01 */	li r27, 1
/* 804B9C8C  B3 96 00 18 */	sth r28, 0x18(r22)
/* 804B9C90  D0 16 00 0C */	stfs f0, 0xc(r22)
/* 804B9C94  48 00 00 58 */	b lbl_804B9CEC
lbl_804B9C98:
/* 804B9C98  B2 F6 00 1A */	sth r23, 0x1a(r22)
/* 804B9C9C  3C 60 80 64 */	lis r3, lit_845@ha /* 0x806460B4@ha */
/* 804B9CA0  38 83 60 B4 */	addi r4, r3, lit_845@l /* 0x806460B4@l */
/* 804B9CA4  C0 04 00 00 */	lfs f0, 0(r4)
/* 804B9CA8  7E C3 B3 78 */	mr r3, r22
/* 804B9CAC  B3 96 00 18 */	sth r28, 0x18(r22)
/* 804B9CB0  38 81 00 50 */	addi r4, r1, 0x50
/* 804B9CB4  D0 16 00 0C */	stfs f0, 0xc(r22)
/* 804B9CB8  4B F0 12 05 */	bl xyz_t_move
/* 804B9CBC  80 D6 00 00 */	lwz r6, 0(r22)
/* 804B9CC0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804B9CC4  80 16 00 04 */	lwz r0, 4(r22)
/* 804B9CC8  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804B9CCC  38 81 00 08 */	addi r4, r1, 8
/* 804B9CD0  38 A0 00 01 */	li r5, 1
/* 804B9CD4  90 C1 00 08 */	stw r6, 8(r1)
/* 804B9CD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B9CDC  80 16 00 08 */	lwz r0, 8(r22)
/* 804B9CE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B9CE4  4B EE DB 4D */	bl mFI_SetFG_common
/* 804B9CE8  3B 60 00 01 */	li r27, 1
lbl_804B9CEC:
/* 804B9CEC  2C 1B 00 00 */	cmpwi r27, 0
/* 804B9CF0  41 82 00 28 */	beq lbl_804B9D18
/* 804B9CF4  B3 36 00 16 */	sth r25, 0x16(r22)
/* 804B9CF8  7E C3 B3 78 */	mr r3, r22
/* 804B9CFC  38 81 00 50 */	addi r4, r1, 0x50
/* 804B9D00  4B F0 11 BD */	bl xyz_t_move
/* 804B9D04  38 00 00 00 */	li r0, 0
/* 804B9D08  B0 16 00 1C */	sth r0, 0x1c(r22)
/* 804B9D0C  B3 16 00 1E */	sth r24, 0x1e(r22)
/* 804B9D10  B3 F6 00 20 */	sth r31, 0x20(r22)
/* 804B9D14  B3 56 00 22 */	sth r26, 0x22(r22)
lbl_804B9D18:
/* 804B9D18  3B BD 00 01 */	addi r29, r29, 1
/* 804B9D1C  3A D6 00 24 */	addi r22, r22, 0x24
lbl_804B9D20:
/* 804B9D20  2C 1B 00 00 */	cmpwi r27, 0
/* 804B9D24  40 82 00 0C */	bne lbl_804B9D30
/* 804B9D28  2C 1D 00 01 */	cmpwi r29, 1
/* 804B9D2C  41 80 FF 2C */	blt lbl_804B9C58
lbl_804B9D30:
/* 804B9D30  7F 63 DB 78 */	mr r3, r27
/* 804B9D34  39 61 00 90 */	addi r11, r1, 0x90
/* 804B9D38  4B BE 11 CD */	bl func_8009AF04
/* 804B9D3C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804B9D40  7C 08 03 A6 */	mtlr r0
/* 804B9D44  38 21 00 90 */	addi r1, r1, 0x90
/* 804B9D48  4E 80 00 20 */	blr 
