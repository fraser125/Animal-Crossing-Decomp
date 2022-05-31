lbl_804022FC:
/* 804022FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80402300  7C 08 02 A6 */	mflr r0
/* 80402304  90 01 00 34 */	stw r0, 0x34(r1)
/* 80402308  39 61 00 30 */	addi r11, r1, 0x30
/* 8040230C  4B C9 8B B5 */	bl func_8009AEC0
/* 80402310  7C 7C 1B 78 */	mr r28, r3
/* 80402314  7C 9D 23 78 */	mr r29, r4
/* 80402318  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 8040231C  83 C3 00 00 */	lwz r30, 0(r3)
/* 80402320  28 1F 00 00 */	cmplwi r31, 0
/* 80402324  41 82 01 A0 */	beq lbl_804024C4
/* 80402328  2C 1E FF FF */	cmpwi r30, -1
/* 8040232C  41 82 01 98 */	beq lbl_804024C4
/* 80402330  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80402334  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80402338  3F 63 00 02 */	addis r27, r3, 2
/* 8040233C  83 5B 61 3C */	lwz r26, 0x613c(r27)
/* 80402340  88 7B 60 03 */	lbz r3, 0x6003(r27)
/* 80402344  4B F8 31 7D */	bl mCkRh_SavePlayTime
/* 80402348  28 1A 00 00 */	cmplwi r26, 0
/* 8040234C  41 82 00 44 */	beq lbl_80402390
/* 80402350  3B 3A 00 68 */	addi r25, r26, 0x68
/* 80402354  3B 00 00 00 */	li r24, 0
lbl_80402358:
/* 80402358  A0 19 00 00 */	lhz r0, 0(r25)
/* 8040235C  28 00 2D 28 */	cmplwi r0, 0x2d28
/* 80402360  41 80 00 20 */	blt lbl_80402380
/* 80402364  28 00 2D 2C */	cmplwi r0, 0x2d2c
/* 80402368  41 81 00 18 */	bgt lbl_80402380
/* 8040236C  7F 43 D3 78 */	mr r3, r26
/* 80402370  7F 04 C3 78 */	mr r4, r24
/* 80402374  38 A0 00 00 */	li r5, 0
/* 80402378  38 C0 00 00 */	li r6, 0
/* 8040237C  4B FD EA AD */	bl mPr_SetPossessionItem
lbl_80402380:
/* 80402380  3B 18 00 01 */	addi r24, r24, 1
/* 80402384  3B 39 00 02 */	addi r25, r25, 2
/* 80402388  2C 18 00 0F */	cmpwi r24, 0xf
/* 8040238C  41 80 FF CC */	blt lbl_80402358
lbl_80402390:
/* 80402390  4B FF A8 6D */	bl mCD_ClearResetCode
/* 80402394  88 7B 60 03 */	lbz r3, 0x6003(r27)
/* 80402398  4B FB 10 09 */	bl mHm_KeepHouseSize
/* 8040239C  4B FC E2 F5 */	bl mNpc_GetInAnimalP
/* 804023A0  38 80 00 01 */	li r4, 1
/* 804023A4  7C 79 1B 78 */	mr r25, r3
/* 804023A8  4B FC ED AD */	bl mNpc_GetRemoveAnimal
/* 804023AC  3C 60 81 1A */	lis r3, l_mcd_foreigner_file@ha /* 0x81198C38@ha */
/* 804023B0  7F 44 D3 78 */	mr r4, r26
/* 804023B4  38 63 8C 38 */	addi r3, r3, l_mcd_foreigner_file@l /* 0x81198C38@l */
/* 804023B8  7F 25 CB 78 */	mr r5, r25
/* 804023BC  4B FF 84 B1 */	bl mCD_SetForeignerFile
/* 804023C0  88 7B 60 03 */	lbz r3, 0x6003(r27)
/* 804023C4  4B FB 17 2D */	bl mLd_PlayerManKindCheckNo
/* 804023C8  2C 03 00 00 */	cmpwi r3, 0
/* 804023CC  40 82 00 20 */	bne lbl_804023EC
/* 804023D0  38 00 00 00 */	li r0, 0
/* 804023D4  7F 43 D3 78 */	mr r3, r26
/* 804023D8  98 1A 10 86 */	stb r0, 0x1086(r26)
/* 804023DC  38 9C 01 A8 */	addi r4, r28, 0x1a8
/* 804023E0  4B FF F5 0D */	bl mCD_ClearPrivateItem
/* 804023E4  38 00 00 01 */	li r0, 1
/* 804023E8  90 1C 01 98 */	stw r0, 0x198(r28)
lbl_804023EC:
/* 804023EC  48 10 D4 61 */	bl mAGrw_ClearMoneyStoneShineGround
/* 804023F0  48 00 3F C9 */	bl lbRTC_HardTime
/* 804023F4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804023F8  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 804023FC  3C A6 00 02 */	addis r5, r6, 2
/* 80402400  90 85 41 9C */	stw r4, 0x419c(r5)
/* 80402404  3F 66 00 03 */	addis r27, r6, 3
/* 80402408  90 65 41 98 */	stw r3, 0x4198(r5)
/* 8040240C  A0 1B 85 96 */	lhz r0, -0x7a6a(r27)
/* 80402410  90 1C 01 84 */	stw r0, 0x184(r28)
/* 80402414  4B FF A9 11 */	bl mCD_get_land_copyProtect
/* 80402418  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8040241C  B0 7B 85 96 */	sth r3, -0x7a6a(r27)
/* 80402420  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80402424  3C 80 00 02 */	lis r4, 0x0002 /* 0x00026000@ha */
/* 80402428  B0 65 00 1A */	sth r3, 0x1a(r5)
/* 8040242C  7F E3 FB 78 */	mr r3, r31
/* 80402430  38 84 60 00 */	addi r4, r4, 0x6000 /* 0x00026000@l */
/* 80402434  4B C5 AC 35 */	bl bzero
/* 80402438  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8040243C  3C A0 00 02 */	lis r5, 0x0002 /* 0x00026000@ha */
/* 80402440  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80402444  7F E4 FB 78 */	mr r4, r31
/* 80402448  38 A5 60 00 */	addi r5, r5, 0x6000 /* 0x00026000@l */
/* 8040244C  4B C5 AB D1 */	bl func_8005D01C
/* 80402450  38 00 00 06 */	li r0, 6
/* 80402454  7F E3 FB 78 */	mr r3, r31
/* 80402458  90 1F 00 00 */	stw r0, 0(r31)
/* 8040245C  4B FA A2 21 */	bl mFRm_SetSaveCheckData
/* 80402460  3C 80 00 02 */	lis r4, 0x0002 /* 0x00026000@ha */
/* 80402464  A0 BF 00 12 */	lhz r5, 0x12(r31)
/* 80402468  7F E3 FB 78 */	mr r3, r31
/* 8040246C  38 84 60 00 */	addi r4, r4, 0x6000 /* 0x00026000@l */
/* 80402470  4B FA A0 BD */	bl mFRm_GetFlatCheckSum
/* 80402474  B0 7F 00 12 */	sth r3, 0x12(r31)
/* 80402478  38 00 00 01 */	li r0, 1
/* 8040247C  90 1C 00 04 */	stw r0, 4(r28)
/* 80402480  80 7C 00 04 */	lwz r3, 4(r28)
/* 80402484  4B FF 7F D5 */	bl mCD_get_size
/* 80402488  90 7C 00 08 */	stw r3, 8(r28)
/* 8040248C  7F C0 F0 F8 */	nor r0, r30, r30
/* 80402490  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80402494  3C 60 81 17 */	lis r3, l_keepSave@ha /* 0x81171638@ha */
/* 80402498  3C A0 00 02 */	lis r5, 0x0002 /* 0x00026000@ha */
/* 8040249C  90 1C 00 00 */	stw r0, 0(r28)
/* 804024A0  38 83 16 38 */	addi r4, r3, l_keepSave@l /* 0x81171638@l */
/* 804024A4  7F E3 FB 78 */	mr r3, r31
/* 804024A8  38 A5 60 00 */	addi r5, r5, 0x6000 /* 0x00026000@l */
/* 804024AC  4B C5 AB 71 */	bl func_8005D01C
/* 804024B0  80 9D 00 00 */	lwz r4, 0(r29)
/* 804024B4  38 60 00 01 */	li r3, 1
/* 804024B8  38 04 00 01 */	addi r0, r4, 1
/* 804024BC  90 1D 00 00 */	stw r0, 0(r29)
/* 804024C0  48 00 00 10 */	b lbl_804024D0
lbl_804024C4:
/* 804024C4  38 00 00 16 */	li r0, 0x16
/* 804024C8  38 60 FF FF */	li r3, -1
/* 804024CC  90 1D 00 04 */	stw r0, 4(r29)
lbl_804024D0:
/* 804024D0  39 61 00 30 */	addi r11, r1, 0x30
/* 804024D4  4B C9 8A 39 */	bl func_8009AF0C
/* 804024D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804024DC  7C 08 03 A6 */	mtlr r0
/* 804024E0  38 21 00 30 */	addi r1, r1, 0x30
/* 804024E4  4E 80 00 20 */	blr 
