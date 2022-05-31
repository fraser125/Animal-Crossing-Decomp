lbl_803A3398:
/* 803A3398  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A339C  7C 08 02 A6 */	mflr r0
/* 803A33A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A33A4  39 61 00 30 */	addi r11, r1, 0x30
/* 803A33A8  4B CF 7B 1D */	bl func_8009AEC4
/* 803A33AC  7C 7B 1B 78 */	mr r27, r3
/* 803A33B0  7C 9A 23 78 */	mr r26, r4
/* 803A33B4  7C B9 2B 78 */	mr r25, r5
/* 803A33B8  38 60 00 94 */	li r3, 0x94
/* 803A33BC  48 01 90 A1 */	bl zelda_malloc
/* 803A33C0  7C 7C 1B 79 */	or. r28, r3, r3
/* 803A33C4  40 82 00 0C */	bne lbl_803A33D0
/* 803A33C8  38 60 00 00 */	li r3, 0
/* 803A33CC  48 00 03 D0 */	b lbl_803A379C
lbl_803A33D0:
/* 803A33D0  38 80 00 94 */	li r4, 0x94
/* 803A33D4  4B CB 9C 95 */	bl bzero
/* 803A33D8  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 803A33DC  3C 80 80 85 */	lis r4, data_8084F8B0@ha /* 0x8084F8B0@ha */
/* 803A33E0  1C A0 00 A4 */	mulli r5, r0, 0xa4
/* 803A33E4  38 60 00 0C */	li r3, 0xc
/* 803A33E8  38 04 F8 B0 */	addi r0, r4, data_8084F8B0@l /* 0x8084F8B0@l */
/* 803A33EC  7F C0 2A 14 */	add r30, r0, r5
/* 803A33F0  88 1E 00 02 */	lbz r0, 2(r30)
/* 803A33F4  98 1C 00 92 */	stb r0, 0x92(r28)
/* 803A33F8  88 1E 00 03 */	lbz r0, 3(r30)
/* 803A33FC  98 1C 00 93 */	stb r0, 0x93(r28)
/* 803A3400  9B 3C 00 8E */	stb r25, 0x8e(r28)
/* 803A3404  B3 5C 00 8C */	sth r26, 0x8c(r28)
/* 803A3408  48 01 90 55 */	bl zelda_malloc
/* 803A340C  38 80 00 00 */	li r4, 0
/* 803A3410  38 00 00 03 */	li r0, 3
/* 803A3414  7C 85 23 78 */	mr r5, r4
/* 803A3418  90 7C 00 78 */	stw r3, 0x78(r28)
/* 803A341C  7C 09 03 A6 */	mtctr r0
lbl_803A3420:
/* 803A3420  80 7C 00 78 */	lwz r3, 0x78(r28)
/* 803A3424  7C A3 21 2E */	stwx r5, r3, r4
/* 803A3428  38 84 00 04 */	addi r4, r4, 4
/* 803A342C  42 00 FF F4 */	bdnz lbl_803A3420
/* 803A3430  88 1E 00 02 */	lbz r0, 2(r30)
/* 803A3434  88 7E 00 03 */	lbz r3, 3(r30)
/* 803A3438  1C 00 06 14 */	mulli r0, r0, 0x614
/* 803A343C  7F A3 01 D6 */	mullw r29, r3, r0
/* 803A3440  7F A3 EB 78 */	mr r3, r29
/* 803A3444  48 01 90 19 */	bl zelda_malloc
/* 803A3448  7C 7B 1B 79 */	or. r27, r3, r3
/* 803A344C  40 82 00 0C */	bne lbl_803A3458
/* 803A3450  38 60 00 00 */	li r3, 0
/* 803A3454  48 00 03 48 */	b lbl_803A379C
lbl_803A3458:
/* 803A3458  7F A4 EB 78 */	mr r4, r29
/* 803A345C  4B CB 9C 0D */	bl bzero
/* 803A3460  93 7C 00 74 */	stw r27, 0x74(r28)
/* 803A3464  38 E0 00 00 */	li r7, 0
/* 803A3468  38 00 00 04 */	li r0, 4
/* 803A346C  38 60 00 00 */	li r3, 0
/* 803A3470  A1 1E 00 00 */	lhz r8, 0(r30)
/* 803A3474  38 80 00 00 */	li r4, 0
/* 803A3478  38 C0 00 FF */	li r6, 0xff
/* 803A347C  38 A0 FF FF */	li r5, -1
/* 803A3480  B1 1C 00 00 */	sth r8, 0(r28)
/* 803A3484  81 1E 00 94 */	lwz r8, 0x94(r30)
/* 803A3488  91 1C 00 04 */	stw r8, 4(r28)
/* 803A348C  98 FC 00 8F */	stb r7, 0x8f(r28)
/* 803A3490  98 FC 00 90 */	stb r7, 0x90(r28)
/* 803A3494  98 FC 00 91 */	stb r7, 0x91(r28)
/* 803A3498  7C 09 03 A6 */	mtctr r0
lbl_803A349C:
/* 803A349C  7D 1C 22 14 */	add r8, r28, r4
/* 803A34A0  38 03 00 7C */	addi r0, r3, 0x7c
/* 803A34A4  90 C8 00 08 */	stw r6, 8(r8)
/* 803A34A8  38 63 00 04 */	addi r3, r3, 4
/* 803A34AC  38 84 00 0C */	addi r4, r4, 0xc
/* 803A34B0  90 C8 00 0C */	stw r6, 0xc(r8)
/* 803A34B4  90 E8 00 10 */	stw r7, 0x10(r8)
/* 803A34B8  7C BC 01 2E */	stwx r5, r28, r0
/* 803A34BC  42 00 FF E0 */	bdnz lbl_803A349C
/* 803A34C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A34C4  3B E3 85 38 */	addi r31, r3, common_data@l /* 0x81138538@l */
/* 803A34C8  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803A34CC  2C 00 00 07 */	cmpwi r0, 7
/* 803A34D0  40 82 00 0C */	bne lbl_803A34DC
/* 803A34D4  38 61 00 08 */	addi r3, r1, 8
/* 803A34D8  48 00 30 01 */	bl mFI_GetIslandBlockNumX
lbl_803A34DC:
/* 803A34DC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803A34E0  2C 03 00 07 */	cmpwi r3, 7
/* 803A34E4  40 82 00 2C */	bne lbl_803A3510
/* 803A34E8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A34EC  80 7C 00 74 */	lwz r3, 0x74(r28)
/* 803A34F0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803A34F4  88 9C 00 92 */	lbz r4, 0x92(r28)
/* 803A34F8  3F A5 00 01 */	addis r29, r5, 1
/* 803A34FC  88 BC 00 93 */	lbz r5, 0x93(r28)
/* 803A3500  38 C1 00 08 */	addi r6, r1, 8
/* 803A3504  3B BD 73 A8 */	addi r29, r29, 0x73a8
/* 803A3508  4B FF ED DD */	bl mFM_SetFgUtPtoSaveData
/* 803A350C  48 00 00 E4 */	b lbl_803A35F0
lbl_803A3510:
/* 803A3510  38 03 FF EC */	addi r0, r3, -20
/* 803A3514  28 00 00 02 */	cmplwi r0, 2
/* 803A3518  40 81 00 18 */	ble lbl_803A3530
/* 803A351C  38 03 FF D8 */	addi r0, r3, -40
/* 803A3520  28 00 00 05 */	cmplwi r0, 5
/* 803A3524  40 81 00 0C */	ble lbl_803A3530
/* 803A3528  2C 03 00 2F */	cmpwi r3, 0x2f
/* 803A352C  40 82 00 80 */	bne lbl_803A35AC
lbl_803A3530:
/* 803A3530  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A3534  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A3538  3F 63 00 02 */	addis r27, r3, 2
/* 803A353C  A3 5B 65 1C */	lhz r26, 0x651c(r27)
/* 803A3540  48 00 28 8D */	bl mFI_GetNowPlayerHouseFloorNo
/* 803A3544  7C 67 1B 78 */	mr r7, r3
/* 803A3548  2C 07 FF FF */	cmpwi r7, -1
/* 803A354C  40 82 00 08 */	bne lbl_803A3554
/* 803A3550  38 E0 00 00 */	li r7, 0
lbl_803A3554:
/* 803A3554  28 1A FF FF */	cmplwi r26, 0xffff
/* 803A3558  40 82 00 10 */	bne lbl_803A3568
/* 803A355C  38 00 00 00 */	li r0, 0
/* 803A3560  3B 40 00 00 */	li r26, 0
/* 803A3564  B0 1B 65 1C */	sth r0, 0x651c(r27)
lbl_803A3568:
/* 803A3568  38 1A 60 00 */	addi r0, r26, 0x6000
/* 803A356C  3B BE 00 04 */	addi r29, r30, 4
/* 803A3570  B0 1C 00 00 */	sth r0, 0(r28)
/* 803A3574  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803A3578  2C 00 00 2F */	cmpwi r0, 0x2f
/* 803A357C  40 82 00 18 */	bne lbl_803A3594
/* 803A3580  80 7C 00 74 */	lwz r3, 0x74(r28)
/* 803A3584  88 9C 00 92 */	lbz r4, 0x92(r28)
/* 803A3588  88 BC 00 93 */	lbz r5, 0x93(r28)
/* 803A358C  4B FF EE E1 */	bl mFM_SetFgUtPtoCottageInfo
/* 803A3590  48 00 00 60 */	b lbl_803A35F0
lbl_803A3594:
/* 803A3594  80 7C 00 74 */	lwz r3, 0x74(r28)
/* 803A3598  7F 46 D3 78 */	mr r6, r26
/* 803A359C  88 9C 00 92 */	lbz r4, 0x92(r28)
/* 803A35A0  88 BC 00 93 */	lbz r5, 0x93(r28)
/* 803A35A4  4B FF EE 6D */	bl mFM_SetFgUtPtoHomeInfo
/* 803A35A8  48 00 00 48 */	b lbl_803A35F0
lbl_803A35AC:
/* 803A35AC  88 7C 00 92 */	lbz r3, 0x92(r28)
/* 803A35B0  3B BE 00 04 */	addi r29, r30, 4
/* 803A35B4  88 1C 00 93 */	lbz r0, 0x93(r28)
/* 803A35B8  83 5C 00 74 */	lwz r26, 0x74(r28)
/* 803A35BC  7F 23 01 D6 */	mullw r25, r3, r0
/* 803A35C0  48 00 00 28 */	b lbl_803A35E8
lbl_803A35C4:
/* 803A35C4  38 60 02 00 */	li r3, 0x200
/* 803A35C8  48 01 8E 95 */	bl zelda_malloc
/* 803A35CC  7C 7B 1B 79 */	or. r27, r3, r3
/* 803A35D0  41 82 00 20 */	beq lbl_803A35F0
/* 803A35D4  38 80 02 00 */	li r4, 0x200
/* 803A35D8  4B CB 9A 91 */	bl bzero
/* 803A35DC  93 7A 05 84 */	stw r27, 0x584(r26)
/* 803A35E0  3B 5A 06 14 */	addi r26, r26, 0x614
/* 803A35E4  3B 39 FF FF */	addi r25, r25, -1
lbl_803A35E8:
/* 803A35E8  2C 19 00 00 */	cmpwi r25, 0
/* 803A35EC  40 82 FF D8 */	bne lbl_803A35C4
lbl_803A35F0:
/* 803A35F0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803A35F4  2C 03 00 14 */	cmpwi r3, 0x14
/* 803A35F8  41 82 00 24 */	beq lbl_803A361C
/* 803A35FC  38 03 FF EB */	addi r0, r3, -21
/* 803A3600  28 00 00 01 */	cmplwi r0, 1
/* 803A3604  40 81 00 18 */	ble lbl_803A361C
/* 803A3608  38 03 FF D8 */	addi r0, r3, -40
/* 803A360C  28 00 00 05 */	cmplwi r0, 5
/* 803A3610  40 81 00 0C */	ble lbl_803A361C
/* 803A3614  2C 03 00 2F */	cmpwi r3, 0x2f
/* 803A3618  40 82 00 90 */	bne lbl_803A36A8
lbl_803A361C:
/* 803A361C  2C 03 00 2F */	cmpwi r3, 0x2f
/* 803A3620  40 82 00 18 */	bne lbl_803A3638
/* 803A3624  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A3628  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A362C  3C E3 00 02 */	addis r7, r3, 2
/* 803A3630  38 E7 29 60 */	addi r7, r7, 0x2960
/* 803A3634  48 00 00 44 */	b lbl_803A3678
lbl_803A3638:
/* 803A3638  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A363C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A3640  3C 63 00 02 */	addis r3, r3, 2
/* 803A3644  A3 23 65 1C */	lhz r25, 0x651c(r3)
/* 803A3648  48 00 27 85 */	bl mFI_GetNowPlayerHouseFloorNo
/* 803A364C  2C 03 FF FF */	cmpwi r3, -1
/* 803A3650  40 82 00 08 */	bne lbl_803A3658
/* 803A3654  38 60 00 00 */	li r3, 0
lbl_803A3658:
/* 803A3658  1C B9 26 B0 */	mulli r5, r25, 0x26b0
/* 803A365C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A3660  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803A3664  1C 03 08 A8 */	mulli r0, r3, 0x8a8
/* 803A3668  7C 64 2A 14 */	add r3, r4, r5
/* 803A366C  7C 63 02 14 */	add r3, r3, r0
/* 803A3670  3C E3 00 01 */	addis r7, r3, 1
/* 803A3674  38 E7 9D 20 */	addi r7, r7, -25312
lbl_803A3678:
/* 803A3678  38 00 00 03 */	li r0, 3
/* 803A367C  38 60 00 04 */	li r3, 4
/* 803A3680  38 80 02 28 */	li r4, 0x228
/* 803A3684  7C 09 03 A6 */	mtctr r0
lbl_803A3688:
/* 803A3688  80 BC 00 78 */	lwz r5, 0x78(r28)
/* 803A368C  7C C7 22 14 */	add r6, r7, r4
/* 803A3690  38 03 FF FC */	addi r0, r3, -4
/* 803A3694  38 84 02 28 */	addi r4, r4, 0x228
/* 803A3698  7C C5 01 2E */	stwx r6, r5, r0
/* 803A369C  38 63 00 04 */	addi r3, r3, 4
/* 803A36A0  42 00 FF E8 */	bdnz lbl_803A3688
/* 803A36A4  48 00 00 3C */	b lbl_803A36E0
lbl_803A36A8:
/* 803A36A8  2C 03 00 06 */	cmpwi r3, 6
/* 803A36AC  41 82 00 0C */	beq lbl_803A36B8
/* 803A36B0  2C 03 00 0D */	cmpwi r3, 0xd
/* 803A36B4  40 82 00 2C */	bne lbl_803A36E0
lbl_803A36B8:
/* 803A36B8  38 60 02 00 */	li r3, 0x200
/* 803A36BC  48 01 8D A1 */	bl zelda_malloc
/* 803A36C0  80 9C 00 78 */	lwz r4, 0x78(r28)
/* 803A36C4  90 64 00 00 */	stw r3, 0(r4)
/* 803A36C8  80 7C 00 78 */	lwz r3, 0x78(r28)
/* 803A36CC  80 63 00 00 */	lwz r3, 0(r3)
/* 803A36D0  28 03 00 00 */	cmplwi r3, 0
/* 803A36D4  41 82 00 0C */	beq lbl_803A36E0
/* 803A36D8  38 80 02 00 */	li r4, 0x200
/* 803A36DC  4B CB 99 8D */	bl bzero
lbl_803A36E0:
/* 803A36E0  7F 83 E3 78 */	mr r3, r28
/* 803A36E4  7F A4 EB 78 */	mr r4, r29
/* 803A36E8  4B FF F6 C9 */	bl mFM_SetBlockInfo
/* 803A36EC  80 7C 00 74 */	lwz r3, 0x74(r28)
/* 803A36F0  88 9C 00 92 */	lbz r4, 0x92(r28)
/* 803A36F4  88 BC 00 93 */	lbz r5, 0x93(r28)
/* 803A36F8  80 DE 00 90 */	lwz r6, 0x90(r30)
/* 803A36FC  80 FE 00 94 */	lwz r7, 0x94(r30)
/* 803A3700  81 1E 00 98 */	lwz r8, 0x98(r30)
/* 803A3704  4B FF F4 99 */	bl mFM_SetMoveActorInfo
/* 803A3708  38 00 00 04 */	li r0, 4
/* 803A370C  38 60 00 00 */	li r3, 0
/* 803A3710  38 80 00 00 */	li r4, 0
/* 803A3714  7C 09 03 A6 */	mtctr r0
lbl_803A3718:
/* 803A3718  38 03 00 38 */	addi r0, r3, 0x38
/* 803A371C  38 63 00 04 */	addi r3, r3, 4
/* 803A3720  7C 9C 01 2E */	stwx r4, r28, r0
/* 803A3724  42 00 FF F4 */	bdnz lbl_803A3718
/* 803A3728  3B 60 00 00 */	li r27, 0
/* 803A372C  3B A0 00 00 */	li r29, 0
/* 803A3730  48 00 00 34 */	b lbl_803A3764
lbl_803A3734:
/* 803A3734  A0 7C 00 8C */	lhz r3, 0x8c(r28)
/* 803A3738  48 01 8D 25 */	bl zelda_malloc
/* 803A373C  38 9D 00 38 */	addi r4, r29, 0x38
/* 803A3740  3B 7B 00 01 */	addi r27, r27, 1
/* 803A3744  7C 7C 21 2E */	stwx r3, r28, r4
/* 803A3748  3B BD 00 04 */	addi r29, r29, 4
/* 803A374C  7C 7C 20 2E */	lwzx r3, r28, r4
/* 803A3750  38 03 00 0F */	addi r0, r3, 0xf
/* 803A3754  7C 1C 21 2E */	stwx r0, r28, r4
/* 803A3758  7C 1C 20 2E */	lwzx r0, r28, r4
/* 803A375C  54 00 00 36 */	rlwinm r0, r0, 0, 0, 0x1b
/* 803A3760  7C 1C 21 2E */	stwx r0, r28, r4
lbl_803A3764:
/* 803A3764  88 1C 00 8E */	lbz r0, 0x8e(r28)
/* 803A3768  7C 1B 00 00 */	cmpw r27, r0
/* 803A376C  41 80 FF C8 */	blt lbl_803A3734
/* 803A3770  38 7C 00 48 */	addi r3, r28, 0x48
/* 803A3774  4B FF F7 D1 */	bl mFM_set_pal_p
/* 803A3778  38 7C 00 48 */	addi r3, r28, 0x48
/* 803A377C  4B FF F9 9D */	bl mFM_SetFieldPal
/* 803A3780  80 7C 00 74 */	lwz r3, 0x74(r28)
/* 803A3784  38 E1 00 08 */	addi r7, r1, 8
/* 803A3788  A0 9C 00 00 */	lhz r4, 0(r28)
/* 803A378C  88 BC 00 92 */	lbz r5, 0x92(r28)
/* 803A3790  88 DC 00 93 */	lbz r6, 0x93(r28)
/* 803A3794  4B FF FA 71 */	bl mFM_SetFgDepositP
/* 803A3798  7F 83 E3 78 */	mr r3, r28
lbl_803A379C:
/* 803A379C  39 61 00 30 */	addi r11, r1, 0x30
/* 803A37A0  4B CF 77 71 */	bl func_8009AF10
/* 803A37A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A37A8  7C 08 03 A6 */	mtlr r0
/* 803A37AC  38 21 00 30 */	addi r1, r1, 0x30
/* 803A37B0  4E 80 00 20 */	blr 
