lbl_805F3CA8:
/* 805F3CA8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805F3CAC  7C 08 02 A6 */	mflr r0
/* 805F3CB0  90 01 00 54 */	stw r0, 0x54(r1)
/* 805F3CB4  39 61 00 50 */	addi r11, r1, 0x50
/* 805F3CB8  4B AA 71 ED */	bl func_8009AEA4
/* 805F3CBC  7C 72 1B 78 */	mr r18, r3
/* 805F3CC0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F3CC4  80 B2 00 2C */	lwz r5, 0x2c(r18)
/* 805F3CC8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F3CCC  3F E3 00 02 */	addis r31, r3, 2
/* 805F3CD0  7C 93 23 78 */	mr r19, r4
/* 805F3CD4  80 C5 09 7C */	lwz r6, 0x97c(r5)
/* 805F3CD8  38 80 00 00 */	li r4, 0
/* 805F3CDC  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F3CE0  38 A0 00 00 */	li r5, 0
/* 805F3CE4  3B 66 00 08 */	addi r27, r6, 8
/* 805F3CE8  4B DE CA 89 */	bl mPr_GetPossessionItemIdxWithCond
/* 805F3CEC  7C 7A 1B 78 */	mr r26, r3
/* 805F3CF0  2C 1A FF FF */	cmpwi r26, -1
/* 805F3CF4  40 82 00 48 */	bne lbl_805F3D3C
/* 805F3CF8  80 92 00 2C */	lwz r4, 0x2c(r18)
/* 805F3CFC  38 C0 00 06 */	li r6, 6
/* 805F3D00  38 00 00 78 */	li r0, 0x78
/* 805F3D04  7E 43 93 78 */	mr r3, r18
/* 805F3D08  80 E4 09 9C */	lwz r7, 0x99c(r4)
/* 805F3D0C  38 80 00 00 */	li r4, 0
/* 805F3D10  38 A0 00 00 */	li r5, 0
/* 805F3D14  90 C7 00 04 */	stw r6, 4(r7)
/* 805F3D18  80 DB 00 38 */	lwz r6, 0x38(r27)
/* 805F3D1C  90 C7 00 08 */	stw r6, 8(r7)
/* 805F3D20  80 DB 00 3C */	lwz r6, 0x3c(r27)
/* 805F3D24  90 C7 00 0C */	stw r6, 0xc(r7)
/* 805F3D28  90 07 00 10 */	stw r0, 0x10(r7)
/* 805F3D2C  4B FF BA 89 */	bl mTG_return_tag_init
/* 805F3D30  38 60 10 03 */	li r3, 0x1003
/* 805F3D34  48 03 9F D1 */	bl sAdo_SysTrgStart
/* 805F3D38  48 00 02 98 */	b lbl_805F3FD0
lbl_805F3D3C:
/* 805F3D3C  80 13 00 3C */	lwz r0, 0x3c(r19)
/* 805F3D40  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F3D44  80 BF 61 3C */	lwz r5, 0x613c(r31)
/* 805F3D48  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F3D4C  1C 80 26 B0 */	mulli r4, r0, 0x26b0
/* 805F3D50  80 1B 00 3C */	lwz r0, 0x3c(r27)
/* 805F3D54  83 C5 00 8C */	lwz r30, 0x8c(r5)
/* 805F3D58  3B 85 00 68 */	addi r28, r5, 0x68
/* 805F3D5C  54 00 18 38 */	slwi r0, r0, 3
/* 805F3D60  7C 63 22 14 */	add r3, r3, r4
/* 805F3D64  7C 63 02 14 */	add r3, r3, r0
/* 805F3D68  7F D4 F3 78 */	mr r20, r30
/* 805F3D6C  3F 23 00 01 */	addis r25, r3, 1
/* 805F3D70  3A A0 00 00 */	li r21, 0
/* 805F3D74  3A 20 00 00 */	li r17, 0
/* 805F3D78  3B 39 C2 BC */	addi r25, r25, -15684
lbl_805F3D7C:
/* 805F3D7C  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F3D80  80 03 00 88 */	lwz r0, 0x88(r3)
/* 805F3D84  7C 00 8C 30 */	srw r0, r0, r17
/* 805F3D88  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 805F3D8C  40 82 00 10 */	bne lbl_805F3D9C
/* 805F3D90  A0 7C 00 00 */	lhz r3, 0(r28)
/* 805F3D94  4B FF F5 81 */	bl mTG_itemNo_to_amount
/* 805F3D98  7E 94 1A 14 */	add r20, r20, r3
lbl_805F3D9C:
/* 805F3D9C  3A B5 00 01 */	addi r21, r21, 1
/* 805F3DA0  3B 9C 00 02 */	addi r28, r28, 2
/* 805F3DA4  2C 15 00 0F */	cmpwi r21, 0xf
/* 805F3DA8  3A 31 00 02 */	addi r17, r17, 2
/* 805F3DAC  41 80 FF D0 */	blt lbl_805F3D7C
/* 805F3DB0  80 19 00 04 */	lwz r0, 4(r25)
/* 805F3DB4  7E 80 A0 51 */	subf. r20, r0, r20
/* 805F3DB8  40 80 00 40 */	bge lbl_805F3DF8
/* 805F3DBC  80 D2 00 2C */	lwz r6, 0x2c(r18)
/* 805F3DC0  7E 43 93 78 */	mr r3, r18
/* 805F3DC4  7F 64 DB 78 */	mr r4, r27
/* 805F3DC8  38 A0 00 07 */	li r5, 7
/* 805F3DCC  80 C6 09 9C */	lwz r6, 0x99c(r6)
/* 805F3DD0  81 86 00 38 */	lwz r12, 0x38(r6)
/* 805F3DD4  7D 89 03 A6 */	mtctr r12
/* 805F3DD8  4E 80 04 21 */	bctrl 
/* 805F3DDC  7E 43 93 78 */	mr r3, r18
/* 805F3DE0  38 80 00 00 */	li r4, 0
/* 805F3DE4  38 A0 00 00 */	li r5, 0
/* 805F3DE8  4B FF B9 CD */	bl mTG_return_tag_init
/* 805F3DEC  38 60 10 03 */	li r3, 0x1003
/* 805F3DF0  48 03 9F 15 */	bl sAdo_SysTrgStart
/* 805F3DF4  48 00 01 DC */	b lbl_805F3FD0
lbl_805F3DF8:
/* 805F3DF8  80 B2 00 2C */	lwz r5, 0x2c(r18)
/* 805F3DFC  3C 80 80 6D */	lis r4, mTG_money_name@ha /* 0x806D0B20@ha */
/* 805F3E00  3C 60 80 6D */	lis r3, mTG_money_amount@ha /* 0x806D0B28@ha */
/* 805F3E04  7F 00 F0 50 */	subf r24, r0, r30
/* 805F3E08  38 84 0B 20 */	addi r4, r4, mTG_money_name@l /* 0x806D0B20@l */
/* 805F3E0C  82 C5 09 88 */	lwz r22, 0x988(r5)
/* 805F3E10  38 03 0B 28 */	addi r0, r3, mTG_money_amount@l /* 0x806D0B28@l */
/* 805F3E14  3A E0 00 00 */	li r23, 0
/* 805F3E18  7C 95 23 78 */	mr r21, r4
/* 805F3E1C  7C 14 03 78 */	mr r20, r0
/* 805F3E20  48 00 00 78 */	b lbl_805F3E98
lbl_805F3E24:
/* 805F3E24  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F3E28  3B 80 00 00 */	li r28, 0
/* 805F3E2C  3A 20 00 00 */	li r17, 0
/* 805F3E30  3B A3 00 68 */	addi r29, r3, 0x68
lbl_805F3E34:
/* 805F3E34  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F3E38  80 03 00 88 */	lwz r0, 0x88(r3)
/* 805F3E3C  7C 00 8C 30 */	srw r0, r0, r17
/* 805F3E40  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 805F3E44  40 82 00 34 */	bne lbl_805F3E78
/* 805F3E48  A0 9D 00 00 */	lhz r4, 0(r29)
/* 805F3E4C  A0 15 00 00 */	lhz r0, 0(r21)
/* 805F3E50  7C 04 00 40 */	cmplw r4, r0
/* 805F3E54  40 82 00 24 */	bne lbl_805F3E78
/* 805F3E58  80 14 00 00 */	lwz r0, 0(r20)
/* 805F3E5C  7F 84 E3 78 */	mr r4, r28
/* 805F3E60  38 A0 00 00 */	li r5, 0
/* 805F3E64  38 C0 00 00 */	li r6, 0
/* 805F3E68  7F 18 02 14 */	add r24, r24, r0
/* 805F3E6C  4B DE CF BD */	bl mPr_SetPossessionItem
/* 805F3E70  2C 18 00 00 */	cmpwi r24, 0
/* 805F3E74  40 80 00 18 */	bge lbl_805F3E8C
lbl_805F3E78:
/* 805F3E78  3B 9C 00 01 */	addi r28, r28, 1
/* 805F3E7C  3B BD 00 02 */	addi r29, r29, 2
/* 805F3E80  2C 1C 00 0F */	cmpwi r28, 0xf
/* 805F3E84  3A 31 00 02 */	addi r17, r17, 2
/* 805F3E88  41 80 FF AC */	blt lbl_805F3E34
lbl_805F3E8C:
/* 805F3E8C  3A F7 00 01 */	addi r23, r23, 1
/* 805F3E90  3A B5 00 02 */	addi r21, r21, 2
/* 805F3E94  3A 94 00 04 */	addi r20, r20, 4
lbl_805F3E98:
/* 805F3E98  2C 17 00 04 */	cmpwi r23, 4
/* 805F3E9C  40 80 00 0C */	bge lbl_805F3EA8
/* 805F3EA0  2C 18 00 00 */	cmpwi r24, 0
/* 805F3EA4  41 80 FF 80 */	blt lbl_805F3E24
lbl_805F3EA8:
/* 805F3EA8  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F3EAC  7F 44 D3 78 */	mr r4, r26
/* 805F3EB0  38 C0 00 00 */	li r6, 0
/* 805F3EB4  93 03 00 8C */	stw r24, 0x8c(r3)
/* 805F3EB8  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F3EBC  A0 B9 00 00 */	lhz r5, 0(r25)
/* 805F3EC0  4B DE CF 69 */	bl mPr_SetPossessionItem
/* 805F3EC4  80 D2 00 2C */	lwz r6, 0x2c(r18)
/* 805F3EC8  7E 43 93 78 */	mr r3, r18
/* 805F3ECC  7F 64 DB 78 */	mr r4, r27
/* 805F3ED0  38 A0 00 08 */	li r5, 8
/* 805F3ED4  80 C6 09 9C */	lwz r6, 0x99c(r6)
/* 805F3ED8  81 86 00 38 */	lwz r12, 0x38(r6)
/* 805F3EDC  7D 89 03 A6 */	mtctr r12
/* 805F3EE0  4E 80 04 21 */	bctrl 
/* 805F3EE4  7E 43 93 78 */	mr r3, r18
/* 805F3EE8  38 80 00 00 */	li r4, 0
/* 805F3EEC  38 A0 00 00 */	li r5, 0
/* 805F3EF0  4B FF B8 C5 */	bl mTG_return_tag_init
/* 805F3EF4  80 13 00 3C */	lwz r0, 0x3c(r19)
/* 805F3EF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F3EFC  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 805F3F00  80 79 00 04 */	lwz r3, 4(r25)
/* 805F3F04  1C 80 26 B0 */	mulli r4, r0, 0x26b0
/* 805F3F08  38 00 00 00 */	li r0, 0
/* 805F3F0C  3C A5 00 01 */	addis r5, r5, 1
/* 805F3F10  7C A5 22 14 */	add r5, r5, r4
/* 805F3F14  80 85 C3 5C */	lwz r4, -0x3ca4(r5)
/* 805F3F18  7C 64 1A 14 */	add r3, r4, r3
/* 805F3F1C  90 65 C3 5C */	stw r3, -0x3ca4(r5)
/* 805F3F20  B0 19 00 00 */	sth r0, 0(r25)
/* 805F3F24  A8 19 00 02 */	lha r0, 2(r25)
/* 805F3F28  2C 00 00 00 */	cmpwi r0, 0
/* 805F3F2C  40 82 00 10 */	bne lbl_805F3F3C
/* 805F3F30  38 60 00 5F */	li r3, 0x5f
/* 805F3F34  48 03 9D D1 */	bl sAdo_SysTrgStart
/* 805F3F38  48 00 00 98 */	b lbl_805F3FD0
lbl_805F3F3C:
/* 805F3F3C  7E 3E C0 50 */	subf r17, r30, r24
/* 805F3F40  7E 23 FE 70 */	srawi r3, r17, 0x1f
/* 805F3F44  7C 60 8A 78 */	xor r0, r3, r17
/* 805F3F48  7C 03 00 50 */	subf r0, r3, r0
/* 805F3F4C  2C 00 00 2A */	cmpwi r0, 0x2a
/* 805F3F50  40 80 00 14 */	bge lbl_805F3F64
/* 805F3F54  38 60 10 50 */	li r3, 0x1050
/* 805F3F58  48 03 9D AD */	bl sAdo_SysTrgStart
/* 805F3F5C  93 16 03 C0 */	stw r24, 0x3c0(r22)
/* 805F3F60  48 00 00 70 */	b lbl_805F3FD0
lbl_805F3F64:
/* 805F3F64  38 60 10 52 */	li r3, 0x1052
/* 805F3F68  48 03 9D 9D */	bl sAdo_SysTrgStart
/* 805F3F6C  38 80 00 2A */	li r4, 0x2a
/* 805F3F70  80 72 00 2C */	lwz r3, 0x2c(r18)
/* 805F3F74  7C 11 23 D6 */	divw r0, r17, r4
/* 805F3F78  80 63 09 80 */	lwz r3, 0x980(r3)
/* 805F3F7C  B0 83 00 16 */	sth r4, 0x16(r3)
/* 805F3F80  90 16 03 C4 */	stw r0, 0x3c4(r22)
/* 805F3F84  80 B6 03 C4 */	lwz r5, 0x3c4(r22)
/* 805F3F88  2C 05 00 00 */	cmpwi r5, 0
/* 805F3F8C  7C 85 00 D0 */	neg r4, r5
/* 805F3F90  41 80 00 08 */	blt lbl_805F3F98
/* 805F3F94  7C A4 2B 78 */	mr r4, r5
lbl_805F3F98:
/* 805F3F98  38 60 00 05 */	li r3, 5
/* 805F3F9C  7C 04 1B D6 */	divw r0, r4, r3
/* 805F3FA0  7C 00 19 D6 */	mullw r0, r0, r3
/* 805F3FA4  7C 00 20 51 */	subf. r0, r0, r4
/* 805F3FA8  40 82 00 28 */	bne lbl_805F3FD0
/* 805F3FAC  2C 05 00 00 */	cmpwi r5, 0
/* 805F3FB0  40 81 00 14 */	ble lbl_805F3FC4
/* 805F3FB4  80 76 03 C4 */	lwz r3, 0x3c4(r22)
/* 805F3FB8  38 03 FF FF */	addi r0, r3, -1
/* 805F3FBC  90 16 03 C4 */	stw r0, 0x3c4(r22)
/* 805F3FC0  48 00 00 10 */	b lbl_805F3FD0
lbl_805F3FC4:
/* 805F3FC4  80 76 03 C4 */	lwz r3, 0x3c4(r22)
/* 805F3FC8  38 03 00 01 */	addi r0, r3, 1
/* 805F3FCC  90 16 03 C4 */	stw r0, 0x3c4(r22)
lbl_805F3FD0:
/* 805F3FD0  39 61 00 50 */	addi r11, r1, 0x50
/* 805F3FD4  4B AA 6F 1D */	bl func_8009AEF0
/* 805F3FD8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805F3FDC  7C 08 03 A6 */	mtlr r0
/* 805F3FE0  38 21 00 50 */	addi r1, r1, 0x50
/* 805F3FE4  4E 80 00 20 */	blr 
