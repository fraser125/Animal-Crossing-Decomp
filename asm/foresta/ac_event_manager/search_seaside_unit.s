lbl_8041B2D4:
/* 8041B2D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041B2D8  7C 08 02 A6 */	mflr r0
/* 8041B2DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041B2E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8041B2E4  4B C7 FB E5 */	bl func_8009AEC8
/* 8041B2E8  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 8041B2EC  7C 9D 23 78 */	mr r29, r4
/* 8041B2F0  38 00 00 06 */	li r0, 6
/* 8041B2F4  7C 7C 1B 78 */	mr r28, r3
/* 8041B2F8  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 8041B2FC  90 04 00 00 */	stw r0, 0(r4)
/* 8041B300  7C BE 2B 78 */	mr r30, r5
/* 8041B304  7C DA 33 78 */	mr r26, r6
/* 8041B308  3F 63 00 02 */	addis r27, r3, 2
/* 8041B30C  3B E0 00 01 */	li r31, 1
/* 8041B310  4B F8 9A 81 */	bl mFI_GetBlockXMax
/* 8041B314  88 9B 61 20 */	lbz r4, 0x6120(r27)
/* 8041B318  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8041B31C  88 1B 61 23 */	lbz r0, 0x6123(r27)
/* 8041B320  38 A3 FF FE */	addi r5, r3, -2
/* 8041B324  7C 00 22 14 */	add r0, r0, r4
/* 8041B328  7C 7A 02 14 */	add r3, r26, r0
/* 8041B32C  7C 03 2B D6 */	divw r0, r3, r5
/* 8041B330  7C 00 29 D6 */	mullw r0, r0, r5
/* 8041B334  7C 60 18 50 */	subf r3, r0, r3
/* 8041B338  38 03 00 01 */	addi r0, r3, 1
/* 8041B33C  90 1D 00 04 */	stw r0, 4(r29)
/* 8041B340  80 7D 00 04 */	lwz r3, 4(r29)
/* 8041B344  80 1C 02 48 */	lwz r0, 0x248(r28)
/* 8041B348  7C 03 00 00 */	cmpw r3, r0
/* 8041B34C  40 82 00 3C */	bne lbl_8041B388
/* 8041B350  80 7D 00 00 */	lwz r3, 0(r29)
/* 8041B354  80 1C 02 44 */	lwz r0, 0x244(r28)
/* 8041B358  7C 03 00 00 */	cmpw r3, r0
/* 8041B35C  40 82 00 2C */	bne lbl_8041B388
/* 8041B360  4B F8 9A 31 */	bl mFI_GetBlockXMax
/* 8041B364  80 9D 00 04 */	lwz r4, 4(r29)
/* 8041B368  54 60 FE 7E */	rlwinm r0, r3, 0x1f, 0x19, 0x1f
/* 8041B36C  7C 04 00 00 */	cmpw r4, r0
/* 8041B370  40 81 00 10 */	ble lbl_8041B380
/* 8041B374  38 04 FF FF */	addi r0, r4, -1
/* 8041B378  90 1D 00 04 */	stw r0, 4(r29)
/* 8041B37C  48 00 00 0C */	b lbl_8041B388
lbl_8041B380:
/* 8041B380  38 04 00 01 */	addi r0, r4, 1
/* 8041B384  90 1D 00 04 */	stw r0, 4(r29)
lbl_8041B388:
/* 8041B388  80 7D 00 04 */	lwz r3, 4(r29)
/* 8041B38C  80 9D 00 00 */	lwz r4, 0(r29)
/* 8041B390  4B F8 AC 95 */	bl mFI_CheckBgDma
/* 8041B394  2C 03 00 00 */	cmpwi r3, 0
/* 8041B398  41 82 00 2C */	beq lbl_8041B3C4
/* 8041B39C  4B F8 99 F5 */	bl mFI_GetBlockXMax
/* 8041B3A0  80 9D 00 04 */	lwz r4, 4(r29)
/* 8041B3A4  54 60 FE 7E */	rlwinm r0, r3, 0x1f, 0x19, 0x1f
/* 8041B3A8  7C 04 00 00 */	cmpw r4, r0
/* 8041B3AC  40 81 00 10 */	ble lbl_8041B3BC
/* 8041B3B0  38 04 FF FE */	addi r0, r4, -2
/* 8041B3B4  90 1D 00 04 */	stw r0, 4(r29)
/* 8041B3B8  48 00 00 0C */	b lbl_8041B3C4
lbl_8041B3BC:
/* 8041B3BC  38 04 00 02 */	addi r0, r4, 2
/* 8041B3C0  90 1D 00 04 */	stw r0, 4(r29)
lbl_8041B3C4:
/* 8041B3C4  3B 80 00 00 */	li r28, 0
lbl_8041B3C8:
/* 8041B3C8  80 BD 00 04 */	lwz r5, 4(r29)
/* 8041B3CC  7F C4 F3 78 */	mr r4, r30
/* 8041B3D0  80 DD 00 00 */	lwz r6, 0(r29)
/* 8041B3D4  38 7E 00 04 */	addi r3, r30, 4
/* 8041B3D8  4B F8 EC F1 */	bl mFI_GetWaveUtinBlock
/* 8041B3DC  2C 03 00 00 */	cmpwi r3, 0
/* 8041B3E0  41 82 00 2C */	beq lbl_8041B40C
/* 8041B3E4  80 1E 00 04 */	lwz r0, 4(r30)
/* 8041B3E8  2C 00 00 00 */	cmpwi r0, 0
/* 8041B3EC  40 81 00 20 */	ble lbl_8041B40C
/* 8041B3F0  2C 00 00 0F */	cmpwi r0, 0xf
/* 8041B3F4  40 80 00 18 */	bge lbl_8041B40C
/* 8041B3F8  80 1E 00 00 */	lwz r0, 0(r30)
/* 8041B3FC  2C 00 00 00 */	cmpwi r0, 0
/* 8041B400  40 81 00 0C */	ble lbl_8041B40C
/* 8041B404  2C 00 00 0F */	cmpwi r0, 0xf
/* 8041B408  41 80 00 10 */	blt lbl_8041B418
lbl_8041B40C:
/* 8041B40C  3B 9C 00 01 */	addi r28, r28, 1
/* 8041B410  2C 1C 00 05 */	cmpwi r28, 5
/* 8041B414  41 80 FF B4 */	blt lbl_8041B3C8
lbl_8041B418:
/* 8041B418  2C 1C 00 05 */	cmpwi r28, 5
/* 8041B41C  40 82 00 88 */	bne lbl_8041B4A4
/* 8041B420  3B E0 00 00 */	li r31, 0
/* 8041B424  4B F8 99 6D */	bl mFI_GetBlockXMax
/* 8041B428  4B F8 99 69 */	bl mFI_GetBlockXMax
/* 8041B42C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8041B430  3B 83 FF FF */	addi r28, r3, -1
/* 8041B434  48 00 00 68 */	b lbl_8041B49C
lbl_8041B438:
/* 8041B438  4B F8 99 59 */	bl mFI_GetBlockXMax
/* 8041B43C  80 1D 00 04 */	lwz r0, 4(r29)
/* 8041B440  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8041B444  38 83 FF FE */	addi r4, r3, -2
/* 8041B448  7C 60 E2 14 */	add r3, r0, r28
/* 8041B44C  7C 03 23 D6 */	divw r0, r3, r4
/* 8041B450  7C 00 21 D6 */	mullw r0, r0, r4
/* 8041B454  7C 60 18 50 */	subf r3, r0, r3
/* 8041B458  38 03 00 01 */	addi r0, r3, 1
/* 8041B45C  90 1D 00 04 */	stw r0, 4(r29)
/* 8041B460  80 7D 00 04 */	lwz r3, 4(r29)
/* 8041B464  80 9D 00 00 */	lwz r4, 0(r29)
/* 8041B468  4B F8 AB BD */	bl mFI_CheckBgDma
/* 8041B46C  2C 03 00 00 */	cmpwi r3, 0
/* 8041B470  40 82 00 28 */	bne lbl_8041B498
/* 8041B474  80 BD 00 04 */	lwz r5, 4(r29)
/* 8041B478  7F C4 F3 78 */	mr r4, r30
/* 8041B47C  80 DD 00 00 */	lwz r6, 0(r29)
/* 8041B480  38 7E 00 04 */	addi r3, r30, 4
/* 8041B484  4B F8 EC 45 */	bl mFI_GetWaveUtinBlock
/* 8041B488  2C 03 00 00 */	cmpwi r3, 0
/* 8041B48C  41 82 00 0C */	beq lbl_8041B498
/* 8041B490  3B E0 00 01 */	li r31, 1
/* 8041B494  48 00 00 10 */	b lbl_8041B4A4
lbl_8041B498:
/* 8041B498  3B 9C FF FF */	addi r28, r28, -1
lbl_8041B49C:
/* 8041B49C  2C 1C 00 00 */	cmpwi r28, 0
/* 8041B4A0  40 82 FF 98 */	bne lbl_8041B438
lbl_8041B4A4:
/* 8041B4A4  7F E3 FB 78 */	mr r3, r31
/* 8041B4A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8041B4AC  4B C7 FA 69 */	bl func_8009AF14
/* 8041B4B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041B4B4  7C 08 03 A6 */	mtlr r0
/* 8041B4B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8041B4BC  4E 80 00 20 */	blr 
