lbl_80401B00:
/* 80401B00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80401B04  7C 08 02 A6 */	mflr r0
/* 80401B08  90 01 00 34 */	stw r0, 0x34(r1)
/* 80401B0C  39 61 00 30 */	addi r11, r1, 0x30
/* 80401B10  4B C9 93 B1 */	bl func_8009AEC0
/* 80401B14  7C 7C 1B 78 */	mr r28, r3
/* 80401B18  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80401B1C  83 FC 00 0C */	lwz r31, 0xc(r28)
/* 80401B20  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80401B24  3F C3 00 03 */	addis r30, r3, 3
/* 80401B28  80 1C 00 00 */	lwz r0, 0(r28)
/* 80401B2C  28 1F 00 00 */	cmplwi r31, 0
/* 80401B30  7C 9D 23 78 */	mr r29, r4
/* 80401B34  3B DE DB 46 */	addi r30, r30, -9402
/* 80401B38  41 82 01 B8 */	beq lbl_80401CF0
/* 80401B3C  2C 00 FF FF */	cmpwi r0, -1
/* 80401B40  41 82 01 B0 */	beq lbl_80401CF0
/* 80401B44  3F 23 00 02 */	addis r25, r3, 2
/* 80401B48  83 19 61 3C */	lwz r24, 0x613c(r25)
/* 80401B4C  88 79 60 03 */	lbz r3, 0x6003(r25)
/* 80401B50  4B F8 39 71 */	bl mCkRh_SavePlayTime
/* 80401B54  28 18 00 00 */	cmplwi r24, 0
/* 80401B58  41 82 00 44 */	beq lbl_80401B9C
/* 80401B5C  3B 58 00 68 */	addi r26, r24, 0x68
/* 80401B60  3B 60 00 00 */	li r27, 0
lbl_80401B64:
/* 80401B64  A0 1A 00 00 */	lhz r0, 0(r26)
/* 80401B68  28 00 2D 28 */	cmplwi r0, 0x2d28
/* 80401B6C  41 80 00 20 */	blt lbl_80401B8C
/* 80401B70  28 00 2D 2C */	cmplwi r0, 0x2d2c
/* 80401B74  41 81 00 18 */	bgt lbl_80401B8C
/* 80401B78  7F 03 C3 78 */	mr r3, r24
/* 80401B7C  7F 64 DB 78 */	mr r4, r27
/* 80401B80  38 A0 00 00 */	li r5, 0
/* 80401B84  38 C0 00 00 */	li r6, 0
/* 80401B88  4B FD F2 A1 */	bl mPr_SetPossessionItem
lbl_80401B8C:
/* 80401B8C  3B 7B 00 01 */	addi r27, r27, 1
/* 80401B90  3B 5A 00 02 */	addi r26, r26, 2
/* 80401B94  2C 1B 00 0F */	cmpwi r27, 0xf
/* 80401B98  41 80 FF CC */	blt lbl_80401B64
lbl_80401B9C:
/* 80401B9C  4B FF B0 61 */	bl mCD_ClearResetCode
/* 80401BA0  88 79 60 03 */	lbz r3, 0x6003(r25)
/* 80401BA4  4B FB 17 FD */	bl mHm_KeepHouseSize
/* 80401BA8  4B FC EA E9 */	bl mNpc_GetInAnimalP
/* 80401BAC  38 80 00 01 */	li r4, 1
/* 80401BB0  7C 7A 1B 78 */	mr r26, r3
/* 80401BB4  4B FC F5 A1 */	bl mNpc_GetRemoveAnimal
/* 80401BB8  3C 60 81 1A */	lis r3, l_mcd_foreigner_file@ha /* 0x81198C38@ha */
/* 80401BBC  7F 04 C3 78 */	mr r4, r24
/* 80401BC0  38 63 8C 38 */	addi r3, r3, l_mcd_foreigner_file@l /* 0x81198C38@l */
/* 80401BC4  7F 45 D3 78 */	mr r5, r26
/* 80401BC8  4B FF 8C A5 */	bl mCD_SetForeignerFile
/* 80401BCC  88 79 60 03 */	lbz r3, 0x6003(r25)
/* 80401BD0  4B FB 1F 21 */	bl mLd_PlayerManKindCheckNo
/* 80401BD4  2C 03 00 00 */	cmpwi r3, 0
/* 80401BD8  40 82 00 20 */	bne lbl_80401BF8
/* 80401BDC  38 00 00 00 */	li r0, 0
/* 80401BE0  7F 03 C3 78 */	mr r3, r24
/* 80401BE4  98 18 10 86 */	stb r0, 0x1086(r24)
/* 80401BE8  38 9C 01 A8 */	addi r4, r28, 0x1a8
/* 80401BEC  4B FF FD 01 */	bl mCD_ClearPrivateItem
/* 80401BF0  38 00 00 01 */	li r0, 1
/* 80401BF4  90 1C 01 98 */	stw r0, 0x198(r28)
lbl_80401BF8:
/* 80401BF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80401BFC  7F C4 F3 78 */	mr r4, r30
/* 80401C00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80401C04  38 A0 00 0C */	li r5, 0xc
/* 80401C08  3C 63 00 01 */	addis r3, r3, 1
/* 80401C0C  38 63 91 20 */	addi r3, r3, -28384
/* 80401C10  4B C5 B4 0D */	bl func_8005D01C
/* 80401C14  3B 00 00 00 */	li r24, 0
/* 80401C18  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80401C1C  7F 1A C3 78 */	mr r26, r24
/* 80401C20  3B 60 00 00 */	li r27, 0
/* 80401C24  3B 23 85 38 */	addi r25, r3, common_data@l /* 0x81138538@l */
lbl_80401C28:
/* 80401C28  38 7A 00 0C */	addi r3, r26, 0xc
/* 80401C2C  7C 99 DA 14 */	add r4, r25, r27
/* 80401C30  7C 7E 1A 14 */	add r3, r30, r3
/* 80401C34  38 84 00 20 */	addi r4, r4, 0x20
/* 80401C38  4B FD E4 E9 */	bl mPr_CopyPersonalID
/* 80401C3C  3B 18 00 01 */	addi r24, r24, 1
/* 80401C40  3B 5A 00 14 */	addi r26, r26, 0x14
/* 80401C44  2C 18 00 04 */	cmpwi r24, 4
/* 80401C48  3B 7B 24 40 */	addi r27, r27, 0x2440
/* 80401C4C  41 80 FF DC */	blt lbl_80401C28
/* 80401C50  48 10 DB FD */	bl mAGrw_ClearMoneyStoneShineGround
/* 80401C54  48 00 47 65 */	bl lbRTC_HardTime
/* 80401C58  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80401C5C  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 80401C60  3C A6 00 02 */	addis r5, r6, 2
/* 80401C64  90 85 41 9C */	stw r4, 0x419c(r5)
/* 80401C68  3F 26 00 03 */	addis r25, r6, 3
/* 80401C6C  90 65 41 98 */	stw r3, 0x4198(r5)
/* 80401C70  A0 19 85 96 */	lhz r0, -0x7a6a(r25)
/* 80401C74  90 1C 01 84 */	stw r0, 0x184(r28)
/* 80401C78  4B FF B0 AD */	bl mCD_get_land_copyProtect
/* 80401C7C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80401C80  B0 79 85 96 */	sth r3, -0x7a6a(r25)
/* 80401C84  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80401C88  3C A0 00 02 */	lis r5, 0x0002 /* 0x00026000@ha */
/* 80401C8C  B0 64 00 1A */	sth r3, 0x1a(r4)
/* 80401C90  7C 83 23 78 */	mr r3, r4
/* 80401C94  7F E4 FB 78 */	mr r4, r31
/* 80401C98  38 A5 60 00 */	addi r5, r5, 0x6000 /* 0x00026000@l */
/* 80401C9C  4B C5 B3 81 */	bl func_8005D01C
/* 80401CA0  38 00 00 06 */	li r0, 6
/* 80401CA4  7F E3 FB 78 */	mr r3, r31
/* 80401CA8  90 1F 00 00 */	stw r0, 0(r31)
/* 80401CAC  4B FA A9 D1 */	bl mFRm_SetSaveCheckData
/* 80401CB0  3C 80 00 02 */	lis r4, 0x0002 /* 0x00026000@ha */
/* 80401CB4  A0 BF 00 12 */	lhz r5, 0x12(r31)
/* 80401CB8  7F E3 FB 78 */	mr r3, r31
/* 80401CBC  38 84 60 00 */	addi r4, r4, 0x6000 /* 0x00026000@l */
/* 80401CC0  4B FA A8 6D */	bl mFRm_GetFlatCheckSum
/* 80401CC4  B0 7F 00 12 */	sth r3, 0x12(r31)
/* 80401CC8  38 00 00 01 */	li r0, 1
/* 80401CCC  90 1C 00 04 */	stw r0, 4(r28)
/* 80401CD0  80 7C 00 04 */	lwz r3, 4(r28)
/* 80401CD4  4B FF 87 85 */	bl mCD_get_size
/* 80401CD8  90 7C 00 08 */	stw r3, 8(r28)
/* 80401CDC  38 60 00 01 */	li r3, 1
/* 80401CE0  80 9D 00 00 */	lwz r4, 0(r29)
/* 80401CE4  38 04 00 01 */	addi r0, r4, 1
/* 80401CE8  90 1D 00 00 */	stw r0, 0(r29)
/* 80401CEC  48 00 00 10 */	b lbl_80401CFC
lbl_80401CF0:
/* 80401CF0  38 00 00 16 */	li r0, 0x16
/* 80401CF4  38 60 FF FF */	li r3, -1
/* 80401CF8  90 1D 00 04 */	stw r0, 4(r29)
lbl_80401CFC:
/* 80401CFC  39 61 00 30 */	addi r11, r1, 0x30
/* 80401D00  4B C9 92 0D */	bl func_8009AF0C
/* 80401D04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80401D08  7C 08 03 A6 */	mtlr r0
/* 80401D0C  38 21 00 30 */	addi r1, r1, 0x30
/* 80401D10  4E 80 00 20 */	blr 
