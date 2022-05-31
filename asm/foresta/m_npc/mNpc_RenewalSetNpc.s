lbl_803D0148:
/* 803D0148  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D014C  7C 08 02 A6 */	mflr r0
/* 803D0150  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D0154  39 61 00 40 */	addi r11, r1, 0x40
/* 803D0158  4B CC AD 75 */	bl func_8009AECC
/* 803D015C  7C 7E 1B 78 */	mr r30, r3
/* 803D0160  80 03 01 80 */	lwz r0, 0x180(r3)
/* 803D0164  28 00 00 00 */	cmplwi r0, 0
/* 803D0168  41 82 01 50 */	beq lbl_803D02B8
/* 803D016C  4B FD 4B 61 */	bl mFI_GetFieldId
/* 803D0170  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 803D0174  83 FE 01 80 */	lwz r31, 0x180(r30)
/* 803D0178  38 7F 00 10 */	addi r3, r31, 0x10
/* 803D017C  40 82 01 40 */	bne lbl_803D02BC
/* 803D0180  38 9E 00 28 */	addi r4, r30, 0x28
/* 803D0184  4B FE AD 39 */	bl xyz_t_move
/* 803D0188  38 00 00 01 */	li r0, 1
/* 803D018C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D0190  98 1F 00 1C */	stb r0, 0x1c(r31)
/* 803D0194  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D0198  3F 83 00 02 */	addis r28, r3, 2
/* 803D019C  A0 7E 00 06 */	lhz r3, 6(r30)
/* 803D01A0  A0 1C 34 40 */	lhz r0, 0x3440(r28)
/* 803D01A4  7C 03 00 40 */	cmplw r3, r0
/* 803D01A8  40 82 01 14 */	bne lbl_803D02BC
/* 803D01AC  88 7E 00 08 */	lbz r3, 8(r30)
/* 803D01B0  88 9E 00 09 */	lbz r4, 9(r30)
/* 803D01B4  7C 63 07 74 */	extsb r3, r3
/* 803D01B8  7C 84 07 74 */	extsb r4, r4
/* 803D01BC  4B FD 4F FD */	bl mFI_GetBlockNum
/* 803D01C0  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803D01C4  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803D01C8  1C 63 06 14 */	mulli r3, r3, 0x614
/* 803D01CC  80 84 00 00 */	lwz r4, 0(r4)
/* 803D01D0  80 04 00 74 */	lwz r0, 0x74(r4)
/* 803D01D4  3B 63 05 8C */	addi r27, r3, 0x58c
/* 803D01D8  7F 60 DA 15 */	add. r27, r0, r27
/* 803D01DC  41 82 00 D0 */	beq lbl_803D02AC
/* 803D01E0  A0 BE 00 06 */	lhz r5, 6(r30)
/* 803D01E4  7F 63 DB 78 */	mr r3, r27
/* 803D01E8  38 80 00 10 */	li r4, 0x10
/* 803D01EC  4B FD 85 61 */	bl mFI_GetMoveActorListIdx
/* 803D01F0  7C 7D 1B 78 */	mr r29, r3
/* 803D01F4  2C 1D FF FF */	cmpwi r29, -1
/* 803D01F8  41 82 00 B4 */	beq lbl_803D02AC
/* 803D01FC  80 FF 00 10 */	lwz r7, 0x10(r31)
/* 803D0200  38 61 00 14 */	addi r3, r1, 0x14
/* 803D0204  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803D0208  38 81 00 10 */	addi r4, r1, 0x10
/* 803D020C  38 A1 00 0C */	addi r5, r1, 0xc
/* 803D0210  38 C1 00 08 */	addi r6, r1, 8
/* 803D0214  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803D0218  38 E1 00 18 */	addi r7, r1, 0x18
/* 803D021C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803D0220  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 803D0224  90 01 00 20 */	stw r0, 0x20(r1)
/* 803D0228  4B FD 55 99 */	bl mFI_Wpos2BkandUtNuminBlock
/* 803D022C  2C 03 00 00 */	cmpwi r3, 0
/* 803D0230  40 82 00 18 */	bne lbl_803D0248
/* 803D0234  88 7C 3C DB */	lbz r3, 0x3cdb(r28)
/* 803D0238  88 1C 3C DC */	lbz r0, 0x3cdc(r28)
/* 803D023C  90 61 00 0C */	stw r3, 0xc(r1)
/* 803D0240  90 01 00 08 */	stw r0, 8(r1)
/* 803D0244  48 00 00 50 */	b lbl_803D0294
lbl_803D0248:
/* 803D0248  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803D024C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803D0250  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803D0254  80 C1 00 08 */	lwz r6, 8(r1)
/* 803D0258  48 00 2B 4D */	bl mNpc_CheckNpcSet
/* 803D025C  2C 03 00 00 */	cmpwi r3, 0
/* 803D0260  40 82 00 34 */	bne lbl_803D0294
/* 803D0264  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803D0268  38 61 00 0C */	addi r3, r1, 0xc
/* 803D026C  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 803D0270  38 81 00 08 */	addi r4, r1, 8
/* 803D0274  38 E0 00 00 */	li r7, 0
/* 803D0278  48 00 2D 3D */	bl mNpc_GetMakeUtNuminBlock_area
/* 803D027C  2C 03 00 00 */	cmpwi r3, 0
/* 803D0280  40 82 00 14 */	bne lbl_803D0294
/* 803D0284  88 7C 3C DB */	lbz r3, 0x3cdb(r28)
/* 803D0288  88 1C 3C DC */	lbz r0, 0x3cdc(r28)
/* 803D028C  90 61 00 0C */	stw r3, 0xc(r1)
/* 803D0290  90 01 00 08 */	stw r0, 8(r1)
lbl_803D0294:
/* 803D0294  57 A3 18 38 */	slwi r3, r29, 3
/* 803D0298  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803D029C  7C 7B 1A 14 */	add r3, r27, r3
/* 803D02A0  98 03 00 02 */	stb r0, 2(r3)
/* 803D02A4  80 01 00 08 */	lwz r0, 8(r1)
/* 803D02A8  98 03 00 03 */	stb r0, 3(r3)
lbl_803D02AC:
/* 803D02AC  7F C3 F3 78 */	mr r3, r30
/* 803D02B0  4B FD 84 61 */	bl mFI_MyMoveActorBitData_ON
/* 803D02B4  48 00 00 08 */	b lbl_803D02BC
lbl_803D02B8:
/* 803D02B8  4B FD 84 59 */	bl mFI_MyMoveActorBitData_ON
lbl_803D02BC:
/* 803D02BC  39 61 00 40 */	addi r11, r1, 0x40
/* 803D02C0  4B CC AC 59 */	bl func_8009AF18
/* 803D02C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D02C8  7C 08 03 A6 */	mtlr r0
/* 803D02CC  38 21 00 40 */	addi r1, r1, 0x40
/* 803D02D0  4E 80 00 20 */	blr 
