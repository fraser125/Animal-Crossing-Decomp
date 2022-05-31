lbl_80393A9C:
/* 80393A9C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80393AA0  7C 08 02 A6 */	mflr r0
/* 80393AA4  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80393AA8  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80393AAC  4B D0 73 F5 */	bl func_8009AEA0
/* 80393AB0  3D 00 81 13 */	lis r8, data_81135548@ha /* 0x81135548@ha */
/* 80393AB4  7C 98 23 78 */	mr r24, r4
/* 80393AB8  3B E8 55 48 */	addi r31, r8, data_81135548@l /* 0x81135548@l */
/* 80393ABC  7C 77 1B 78 */	mr r23, r3
/* 80393AC0  7C B9 2B 78 */	mr r25, r5
/* 80393AC4  7C DA 33 78 */	mr r26, r6
/* 80393AC8  7C FB 3B 78 */	mr r27, r7
/* 80393ACC  38 7F 24 DC */	addi r3, r31, 0x24dc
/* 80393AD0  3B 80 00 00 */	li r28, 0
/* 80393AD4  38 80 09 60 */	li r4, 0x960
/* 80393AD8  4B CC 95 91 */	bl bzero
/* 80393ADC  38 7F 00 88 */	addi r3, r31, 0x88
/* 80393AE0  38 80 1C 18 */	li r4, 0x1c18
/* 80393AE4  4B CC 95 85 */	bl bzero
/* 80393AE8  81 59 00 00 */	lwz r10, 0(r25)
/* 80393AEC  7E E3 BB 78 */	mr r3, r23
/* 80393AF0  81 39 00 04 */	lwz r9, 4(r25)
/* 80393AF4  38 81 00 74 */	addi r4, r1, 0x74
/* 80393AF8  81 19 00 08 */	lwz r8, 8(r25)
/* 80393AFC  38 A1 00 68 */	addi r5, r1, 0x68
/* 80393B00  80 F8 00 00 */	lwz r7, 0(r24)
/* 80393B04  80 D8 00 04 */	lwz r6, 4(r24)
/* 80393B08  80 18 00 08 */	lwz r0, 8(r24)
/* 80393B0C  91 41 00 68 */	stw r10, 0x68(r1)
/* 80393B10  91 21 00 6C */	stw r9, 0x6c(r1)
/* 80393B14  91 01 00 70 */	stw r8, 0x70(r1)
/* 80393B18  90 E1 00 74 */	stw r7, 0x74(r1)
/* 80393B1C  90 C1 00 78 */	stw r6, 0x78(r1)
/* 80393B20  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80393B24  4B FF FE 65 */	bl mCoBG_JudgeStartLineCheck
/* 80393B28  2C 03 00 00 */	cmpwi r3, 0
/* 80393B2C  41 82 03 28 */	beq lbl_80393E54
/* 80393B30  3C 80 80 64 */	lis r4, lit_4708@ha /* 0x80641BA0@ha */
/* 80393B34  3C 60 80 64 */	lis r3, lit_4709@ha /* 0x80641BAC@ha */
/* 80393B38  38 A4 1B A0 */	addi r5, r4, lit_4708@l /* 0x80641BA0@l */
/* 80393B3C  3C 80 80 64 */	lis r4, lit_4710@ha /* 0x80641BB8@ha */
/* 80393B40  39 83 1B AC */	addi r12, r3, lit_4709@l /* 0x80641BAC@l */
/* 80393B44  3C 60 80 64 */	lis r3, lit_4711@ha /* 0x80641BC4@ha */
/* 80393B48  39 64 1B B8 */	addi r11, r4, lit_4710@l /* 0x80641BB8@l */
/* 80393B4C  81 25 00 00 */	lwz r9, 0(r5)
/* 80393B50  39 43 1B C4 */	addi r10, r3, lit_4711@l /* 0x80641BC4@l */
/* 80393B54  81 05 00 04 */	lwz r8, 4(r5)
/* 80393B58  80 E5 00 08 */	lwz r7, 8(r5)
/* 80393B5C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80393B60  80 CC 00 00 */	lwz r6, 0(r12)
/* 80393B64  38 81 00 50 */	addi r4, r1, 0x50
/* 80393B68  80 AC 00 04 */	lwz r5, 4(r12)
/* 80393B6C  80 0C 00 08 */	lwz r0, 8(r12)
/* 80393B70  82 0B 00 00 */	lwz r16, 0(r11)
/* 80393B74  82 2B 00 04 */	lwz r17, 4(r11)
/* 80393B78  82 4B 00 08 */	lwz r18, 8(r11)
/* 80393B7C  82 6A 00 00 */	lwz r19, 0(r10)
/* 80393B80  82 8A 00 04 */	lwz r20, 4(r10)
/* 80393B84  82 AA 00 08 */	lwz r21, 8(r10)
/* 80393B88  82 D9 00 00 */	lwz r22, 0(r25)
/* 80393B8C  83 D9 00 04 */	lwz r30, 4(r25)
/* 80393B90  83 B9 00 08 */	lwz r29, 8(r25)
/* 80393B94  81 98 00 00 */	lwz r12, 0(r24)
/* 80393B98  81 78 00 04 */	lwz r11, 4(r24)
/* 80393B9C  81 58 00 08 */	lwz r10, 8(r24)
/* 80393BA0  91 21 00 A4 */	stw r9, 0xa4(r1)
/* 80393BA4  91 01 00 A8 */	stw r8, 0xa8(r1)
/* 80393BA8  90 E1 00 AC */	stw r7, 0xac(r1)
/* 80393BAC  90 C1 00 98 */	stw r6, 0x98(r1)
/* 80393BB0  90 A1 00 9C */	stw r5, 0x9c(r1)
/* 80393BB4  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80393BB8  92 01 00 8C */	stw r16, 0x8c(r1)
/* 80393BBC  92 21 00 90 */	stw r17, 0x90(r1)
/* 80393BC0  92 41 00 94 */	stw r18, 0x94(r1)
/* 80393BC4  92 61 00 80 */	stw r19, 0x80(r1)
/* 80393BC8  92 81 00 84 */	stw r20, 0x84(r1)
/* 80393BCC  92 A1 00 88 */	stw r21, 0x88(r1)
/* 80393BD0  92 C1 00 50 */	stw r22, 0x50(r1)
/* 80393BD4  93 C1 00 54 */	stw r30, 0x54(r1)
/* 80393BD8  93 A1 00 58 */	stw r29, 0x58(r1)
/* 80393BDC  91 81 00 5C */	stw r12, 0x5c(r1)
/* 80393BE0  91 61 00 60 */	stw r11, 0x60(r1)
/* 80393BE4  91 41 00 64 */	stw r10, 0x64(r1)
/* 80393BE8  4B FF FC ED */	bl mCoBG_MakeLineCheckCollisionData
/* 80393BEC  7F 25 CB 78 */	mr r5, r25
/* 80393BF0  38 7F 00 88 */	addi r3, r31, 0x88
/* 80393BF4  38 9F 1C A0 */	addi r4, r31, 0x1ca0
/* 80393BF8  38 C0 00 01 */	li r6, 1
/* 80393BFC  4B FF 9B 85 */	bl mCoBG_MakeMoveBgVector
/* 80393C00  3B BF 00 88 */	addi r29, r31, 0x88
/* 80393C04  7F 48 D3 78 */	mr r8, r26
/* 80393C08  7F BE EB 78 */	mr r30, r29
/* 80393C0C  38 BF 24 DC */	addi r5, r31, 0x24dc
/* 80393C10  3B BD 1A 08 */	addi r29, r29, 0x1a08
/* 80393C14  38 C0 00 03 */	li r6, 3
/* 80393C18  3B DE 1A 04 */	addi r30, r30, 0x1a04
/* 80393C1C  38 E0 00 00 */	li r7, 0
/* 80393C20  7F A3 EB 78 */	mr r3, r29
/* 80393C24  39 20 FF FF */	li r9, -1
/* 80393C28  7F C4 F3 78 */	mr r4, r30
/* 80393C2C  39 40 FF FF */	li r10, -1
/* 80393C30  4B FF AD E5 */	bl mCoBG_MakeColumnCollisionData
/* 80393C34  57 60 07 FF */	clrlwi. r0, r27, 0x1f
/* 80393C38  41 82 00 8C */	beq lbl_80393CC4
/* 80393C3C  81 59 00 00 */	lwz r10, 0(r25)
/* 80393C40  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80393C44  81 39 00 04 */	lwz r9, 4(r25)
/* 80393C48  38 81 00 44 */	addi r4, r1, 0x44
/* 80393C4C  81 19 00 08 */	lwz r8, 8(r25)
/* 80393C50  38 A1 00 38 */	addi r5, r1, 0x38
/* 80393C54  80 F8 00 00 */	lwz r7, 0(r24)
/* 80393C58  80 D8 00 04 */	lwz r6, 4(r24)
/* 80393C5C  80 18 00 08 */	lwz r0, 8(r24)
/* 80393C60  91 41 00 38 */	stw r10, 0x38(r1)
/* 80393C64  91 21 00 3C */	stw r9, 0x3c(r1)
/* 80393C68  91 01 00 40 */	stw r8, 0x40(r1)
/* 80393C6C  90 E1 00 44 */	stw r7, 0x44(r1)
/* 80393C70  90 C1 00 48 */	stw r6, 0x48(r1)
/* 80393C74  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80393C78  4B FF EB C1 */	bl mCoBG_LineWallCheck
/* 80393C7C  2C 03 00 00 */	cmpwi r3, 0
/* 80393C80  41 82 00 08 */	beq lbl_80393C88
/* 80393C84  63 9C 00 01 */	ori r28, r28, 1
lbl_80393C88:
/* 80393C88  7F 23 CB 78 */	mr r3, r25
/* 80393C8C  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80393C90  4B FF 76 CD */	bl mCoBG_PlusEqualPos
/* 80393C94  80 BE 00 00 */	lwz r5, 0(r30)
/* 80393C98  7F A4 EB 78 */	mr r4, r29
/* 80393C9C  7F 06 C3 78 */	mr r6, r24
/* 80393CA0  7F 27 CB 78 */	mr r7, r25
/* 80393CA4  38 61 00 8C */	addi r3, r1, 0x8c
/* 80393CA8  4B FF B4 39 */	bl mCoBG_LineWallCheck_Column
/* 80393CAC  2C 03 00 00 */	cmpwi r3, 0
/* 80393CB0  41 82 00 08 */	beq lbl_80393CB8
/* 80393CB4  63 9C 00 01 */	ori r28, r28, 1
lbl_80393CB8:
/* 80393CB8  7F 23 CB 78 */	mr r3, r25
/* 80393CBC  38 81 00 8C */	addi r4, r1, 0x8c
/* 80393CC0  4B FF 76 9D */	bl mCoBG_PlusEqualPos
lbl_80393CC4:
/* 80393CC4  57 60 07 BD */	rlwinm. r0, r27, 0, 0x1e, 0x1e
/* 80393CC8  41 82 00 8C */	beq lbl_80393D54
/* 80393CCC  81 59 00 00 */	lwz r10, 0(r25)
/* 80393CD0  38 61 00 98 */	addi r3, r1, 0x98
/* 80393CD4  81 39 00 04 */	lwz r9, 4(r25)
/* 80393CD8  38 81 00 2C */	addi r4, r1, 0x2c
/* 80393CDC  81 19 00 08 */	lwz r8, 8(r25)
/* 80393CE0  38 A1 00 20 */	addi r5, r1, 0x20
/* 80393CE4  80 F8 00 00 */	lwz r7, 0(r24)
/* 80393CE8  80 D8 00 04 */	lwz r6, 4(r24)
/* 80393CEC  80 18 00 08 */	lwz r0, 8(r24)
/* 80393CF0  91 41 00 20 */	stw r10, 0x20(r1)
/* 80393CF4  91 21 00 24 */	stw r9, 0x24(r1)
/* 80393CF8  91 01 00 28 */	stw r8, 0x28(r1)
/* 80393CFC  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 80393D00  90 C1 00 30 */	stw r6, 0x30(r1)
/* 80393D04  90 01 00 34 */	stw r0, 0x34(r1)
/* 80393D08  4B FF FA 8D */	bl mCoBG_LineGroundCheck
/* 80393D0C  2C 03 00 00 */	cmpwi r3, 0
/* 80393D10  41 82 00 08 */	beq lbl_80393D18
/* 80393D14  63 9C 00 02 */	ori r28, r28, 2
lbl_80393D18:
/* 80393D18  7F 23 CB 78 */	mr r3, r25
/* 80393D1C  38 81 00 98 */	addi r4, r1, 0x98
/* 80393D20  4B FF 76 3D */	bl mCoBG_PlusEqualPos
/* 80393D24  80 BE 00 00 */	lwz r5, 0(r30)
/* 80393D28  7F A4 EB 78 */	mr r4, r29
/* 80393D2C  7F 06 C3 78 */	mr r6, r24
/* 80393D30  7F 27 CB 78 */	mr r7, r25
/* 80393D34  38 61 00 80 */	addi r3, r1, 0x80
/* 80393D38  4B FF B8 69 */	bl mCoBG_LineGroundCheck_Column
/* 80393D3C  2C 03 00 00 */	cmpwi r3, 0
/* 80393D40  41 82 00 08 */	beq lbl_80393D48
/* 80393D44  63 9C 00 02 */	ori r28, r28, 2
lbl_80393D48:
/* 80393D48  7F 23 CB 78 */	mr r3, r25
/* 80393D4C  38 81 00 80 */	addi r4, r1, 0x80
/* 80393D50  4B FF 76 0D */	bl mCoBG_PlusEqualPos
lbl_80393D54:
/* 80393D54  57 60 07 7B */	rlwinm. r0, r27, 0, 0x1d, 0x1d
/* 80393D58  41 82 00 E4 */	beq lbl_80393E3C
/* 80393D5C  3C 60 80 64 */	lis r3, lit_4768@ha /* 0x80641BD0@ha */
/* 80393D60  C0 59 00 04 */	lfs f2, 4(r25)
/* 80393D64  C0 03 1B D0 */	lfs f0, lit_4768@l(r3)  /* 0x80641BD0@l */
/* 80393D68  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80393D6C  4C 40 13 82 */	cror 2, 0, 2
/* 80393D70  40 82 00 1C */	bne lbl_80393D8C
/* 80393D74  3C 60 80 64 */	lis r3, lit_2000@ha /* 0x80641A54@ha */
/* 80393D78  C0 38 00 04 */	lfs f1, 4(r24)
/* 80393D7C  C0 03 1A 54 */	lfs f0, lit_2000@l(r3)  /* 0x80641A54@l */
/* 80393D80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80393D84  4C 41 13 82 */	cror 2, 1, 2
/* 80393D88  41 82 00 30 */	beq lbl_80393DB8
lbl_80393D8C:
/* 80393D8C  3C 60 80 64 */	lis r3, lit_4768@ha /* 0x80641BD0@ha */
/* 80393D90  C0 38 00 04 */	lfs f1, 4(r24)
/* 80393D94  C0 03 1B D0 */	lfs f0, lit_4768@l(r3)  /* 0x80641BD0@l */
/* 80393D98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80393D9C  4C 40 13 82 */	cror 2, 0, 2
/* 80393DA0  40 82 00 20 */	bne lbl_80393DC0
/* 80393DA4  3C 60 80 64 */	lis r3, lit_2000@ha /* 0x80641A54@ha */
/* 80393DA8  C0 03 1A 54 */	lfs f0, lit_2000@l(r3)  /* 0x80641A54@l */
/* 80393DAC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80393DB0  4C 41 13 82 */	cror 2, 1, 2
/* 80393DB4  40 82 00 0C */	bne lbl_80393DC0
lbl_80393DB8:
/* 80393DB8  63 9C 00 04 */	ori r28, r28, 4
/* 80393DBC  48 00 00 80 */	b lbl_80393E3C
lbl_80393DC0:
/* 80393DC0  80 D9 00 00 */	lwz r6, 0(r25)
/* 80393DC4  38 61 00 14 */	addi r3, r1, 0x14
/* 80393DC8  80 B9 00 04 */	lwz r5, 4(r25)
/* 80393DCC  38 80 00 00 */	li r4, 0
/* 80393DD0  80 19 00 08 */	lwz r0, 8(r25)
/* 80393DD4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80393DD8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80393DDC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80393DE0  4B FF 52 CD */	bl mCoBG_Wpos2Attribute
/* 80393DE4  48 00 04 E9 */	bl mCoBG_CheckWaterAttribute
/* 80393DE8  2C 03 00 00 */	cmpwi r3, 0
/* 80393DEC  41 82 00 50 */	beq lbl_80393E3C
/* 80393DF0  80 B9 00 00 */	lwz r5, 0(r25)
/* 80393DF4  3C 60 80 65 */	lis r3, lit_4769@ha /* 0x80651058@ha */
/* 80393DF8  80 D9 00 04 */	lwz r6, 4(r25)
/* 80393DFC  38 83 10 58 */	addi r4, r3, lit_4769@l /* 0x80651058@l */
/* 80393E00  80 19 00 08 */	lwz r0, 8(r25)
/* 80393E04  38 61 00 08 */	addi r3, r1, 8
/* 80393E08  90 A1 00 08 */	stw r5, 8(r1)
/* 80393E0C  38 A0 03 70 */	li r5, 0x370
/* 80393E10  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80393E14  90 01 00 10 */	stw r0, 0x10(r1)
/* 80393E18  48 00 01 A1 */	bl mCoBG_GetWaterHeight_File
/* 80393E1C  3C 60 80 64 */	lis r3, lit_522@ha /* 0x806419B0@ha */
/* 80393E20  C0 59 00 04 */	lfs f2, 4(r25)
/* 80393E24  C0 03 19 B0 */	lfs f0, lit_522@l(r3)  /* 0x806419B0@l */
/* 80393E28  EC 00 08 2A */	fadds f0, f0, f1
/* 80393E2C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80393E30  4C 40 13 82 */	cror 2, 0, 2
/* 80393E34  40 82 00 08 */	bne lbl_80393E3C
/* 80393E38  63 9C 00 08 */	ori r28, r28, 8
lbl_80393E3C:
/* 80393E3C  7E E3 BB 78 */	mr r3, r23
/* 80393E40  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80393E44  38 A1 00 98 */	addi r5, r1, 0x98
/* 80393E48  38 C1 00 8C */	addi r6, r1, 0x8c
/* 80393E4C  38 E1 00 80 */	addi r7, r1, 0x80
/* 80393E50  4B FF FB E1 */	bl mCoBG_SetWallGroundReverse
lbl_80393E54:
/* 80393E54  7F 83 E3 78 */	mr r3, r28
/* 80393E58  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80393E5C  4B D0 70 91 */	bl func_8009AEEC
/* 80393E60  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80393E64  7C 08 03 A6 */	mtlr r0
/* 80393E68  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80393E6C  4E 80 00 20 */	blr 
