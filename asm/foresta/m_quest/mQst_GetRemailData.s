lbl_803E383C:
/* 803E383C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 803E3840  7C 08 02 A6 */	mflr r0
/* 803E3844  90 01 00 94 */	stw r0, 0x94(r1)
/* 803E3848  39 61 00 90 */	addi r11, r1, 0x90
/* 803E384C  4B CB 76 7D */	bl func_8009AEC8
/* 803E3850  7C BC 2B 78 */	mr r28, r5
/* 803E3854  7C 7A 1B 78 */	mr r26, r3
/* 803E3858  8B C5 00 0D */	lbz r30, 0xd(r5)
/* 803E385C  7C 9B 23 78 */	mr r27, r4
/* 803E3860  7C DF 33 78 */	mr r31, r6
/* 803E3864  7C FD 3B 78 */	mr r29, r7
/* 803E3868  4B FD 8E 99 */	bl mMl_clear_mail
/* 803E386C  1C BF 00 06 */	mulli r5, r31, 6
/* 803E3870  7F 84 E3 78 */	mr r4, r28
/* 803E3874  38 61 00 0C */	addi r3, r1, 0xc
/* 803E3878  3B E5 00 75 */	addi r31, r5, 0x75
/* 803E387C  7F FE FA 14 */	add r31, r30, r31
/* 803E3880  4B FE E0 D1 */	bl mNpc_GetNpcWorldNameAnm
/* 803E3884  38 81 00 0C */	addi r4, r1, 0xc
/* 803E3888  38 60 00 06 */	li r3, 6
/* 803E388C  38 A0 00 08 */	li r5, 8
/* 803E3890  4B FC E0 C9 */	bl mHandbill_Set_free_str
/* 803E3894  57 A0 04 3F */	clrlwi. r0, r29, 0x10
/* 803E3898  41 82 00 20 */	beq lbl_803E38B8
/* 803E389C  7F A4 EB 78 */	mr r4, r29
/* 803E38A0  38 61 00 0C */	addi r3, r1, 0xc
/* 803E38A4  4B FD 21 01 */	bl mIN_copy_name_str
/* 803E38A8  38 81 00 0C */	addi r4, r1, 0xc
/* 803E38AC  38 60 00 00 */	li r3, 0
/* 803E38B0  38 A0 00 10 */	li r5, 0x10
/* 803E38B4  4B FC E0 A5 */	bl mHandbill_Set_free_str
lbl_803E38B8:
/* 803E38B8  7F E9 FB 78 */	mr r9, r31
/* 803E38BC  38 61 00 4C */	addi r3, r1, 0x4c
/* 803E38C0  38 A1 00 08 */	addi r5, r1, 8
/* 803E38C4  38 C1 00 1C */	addi r6, r1, 0x1c
/* 803E38C8  39 1A 00 4A */	addi r8, r26, 0x4a
/* 803E38CC  38 80 00 28 */	li r4, 0x28
/* 803E38D0  38 E0 00 30 */	li r7, 0x30
/* 803E38D4  4B FC EE D5 */	bl mHandbill_Load_HandbillFromRom2
/* 803E38D8  38 7A 00 32 */	addi r3, r26, 0x32
/* 803E38DC  38 81 00 4C */	addi r4, r1, 0x4c
/* 803E38E0  38 A0 00 18 */	li r5, 0x18
/* 803E38E4  4B FD 71 41 */	bl func_803BAA24
/* 803E38E8  38 7A 01 0A */	addi r3, r26, 0x10a
/* 803E38EC  38 81 00 1C */	addi r4, r1, 0x1c
/* 803E38F0  38 A0 00 20 */	li r5, 0x20
/* 803E38F4  4B FD 71 31 */	bl func_803BAA24
/* 803E38F8  80 A1 00 08 */	lwz r5, 8(r1)
/* 803E38FC  38 00 00 00 */	li r0, 0
/* 803E3900  7F 43 D3 78 */	mr r3, r26
/* 803E3904  7F 64 DB 78 */	mr r4, r27
/* 803E3908  98 BA 00 2F */	stb r5, 0x2f(r26)
/* 803E390C  98 1A 00 2E */	stb r0, 0x2e(r26)
/* 803E3910  98 1A 00 30 */	stb r0, 0x30(r26)
/* 803E3914  4B FF C8 0D */	bl mPr_CopyPersonalID
/* 803E3918  38 00 00 00 */	li r0, 0
/* 803E391C  7F 84 E3 78 */	mr r4, r28
/* 803E3920  98 1A 00 14 */	stb r0, 0x14(r26)
/* 803E3924  38 7A 00 16 */	addi r3, r26, 0x16
/* 803E3928  4B FD 90 C9 */	bl mMl_set_mail_name_npcinfo
/* 803E392C  38 00 00 16 */	li r0, 0x16
/* 803E3930  98 1A 00 31 */	stb r0, 0x31(r26)
/* 803E3934  B3 BA 00 2C */	sth r29, 0x2c(r26)
/* 803E3938  39 61 00 90 */	addi r11, r1, 0x90
/* 803E393C  4B CB 75 D9 */	bl func_8009AF14
/* 803E3940  80 01 00 94 */	lwz r0, 0x94(r1)
/* 803E3944  7C 08 03 A6 */	mtlr r0
/* 803E3948  38 21 00 90 */	addi r1, r1, 0x90
/* 803E394C  4E 80 00 20 */	blr 
