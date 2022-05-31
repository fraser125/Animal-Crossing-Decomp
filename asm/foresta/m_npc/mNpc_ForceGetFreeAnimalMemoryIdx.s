lbl_803CBAC8:
/* 803CBAC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CBACC  7C 08 02 A6 */	mflr r0
/* 803CBAD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CBAD4  39 61 00 30 */	addi r11, r1, 0x30
/* 803CBAD8  4B CC F3 ED */	bl func_8009AEC4
/* 803CBADC  7C 99 23 78 */	mr r25, r4
/* 803CBAE0  7C BA 2B 78 */	mr r26, r5
/* 803CBAE4  7C 7F 1B 78 */	mr r31, r3
/* 803CBAE8  3B A0 00 00 */	li r29, 0
/* 803CBAEC  7F 3E CB 78 */	mr r30, r25
/* 803CBAF0  7F 23 CB 78 */	mr r3, r25
/* 803CBAF4  7F 44 D3 78 */	mr r4, r26
/* 803CBAF8  4B FF FE 95 */	bl mNpc_GetFreeAnimalMemoryIdx
/* 803CBAFC  7C 7C 1B 78 */	mr r28, r3
/* 803CBB00  2C 1C FF FF */	cmpwi r28, -1
/* 803CBB04  40 82 00 B8 */	bne lbl_803CBBBC
/* 803CBB08  3B 60 00 00 */	li r27, 0
/* 803CBB0C  48 00 00 A4 */	b lbl_803CBBB0
lbl_803CBB10:
/* 803CBB10  A0 99 00 12 */	lhz r4, 0x12(r25)
/* 803CBB14  38 79 00 08 */	addi r3, r25, 8
/* 803CBB18  4B FE 80 21 */	bl mLd_CheckThisLand
/* 803CBB1C  2C 03 00 00 */	cmpwi r3, 0
/* 803CBB20  40 82 00 88 */	bne lbl_803CBBA8
/* 803CBB24  28 1D 00 00 */	cmplwi r29, 0
/* 803CBB28  41 82 00 78 */	beq lbl_803CBBA0
/* 803CBB2C  88 7D 00 31 */	lbz r3, 0x31(r29)
/* 803CBB30  88 19 00 31 */	lbz r0, 0x31(r25)
/* 803CBB34  54 63 CF FE */	rlwinm r3, r3, 0x19, 0x1f, 0x1f
/* 803CBB38  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 803CBB3C  7C 03 00 40 */	cmplw r3, r0
/* 803CBB40  40 82 00 4C */	bne lbl_803CBB8C
/* 803CBB44  88 7D 00 30 */	lbz r3, 0x30(r29)
/* 803CBB48  88 19 00 30 */	lbz r0, 0x30(r25)
/* 803CBB4C  7C 63 07 74 */	extsb r3, r3
/* 803CBB50  7C 00 07 74 */	extsb r0, r0
/* 803CBB54  7C 03 00 00 */	cmpw r3, r0
/* 803CBB58  40 81 00 10 */	ble lbl_803CBB68
/* 803CBB5C  7F 3D CB 78 */	mr r29, r25
/* 803CBB60  7F 7C DB 78 */	mr r28, r27
/* 803CBB64  48 00 00 44 */	b lbl_803CBBA8
lbl_803CBB68:
/* 803CBB68  40 82 00 40 */	bne lbl_803CBBA8
/* 803CBB6C  38 7D 00 14 */	addi r3, r29, 0x14
/* 803CBB70  38 99 00 14 */	addi r4, r25, 0x14
/* 803CBB74  48 03 AD A1 */	bl lbRTC_IsOverTime
/* 803CBB78  2C 03 FF FF */	cmpwi r3, -1
/* 803CBB7C  40 82 00 2C */	bne lbl_803CBBA8
/* 803CBB80  7F 3D CB 78 */	mr r29, r25
/* 803CBB84  7F 7C DB 78 */	mr r28, r27
/* 803CBB88  48 00 00 20 */	b lbl_803CBBA8
lbl_803CBB8C:
/* 803CBB8C  28 00 00 00 */	cmplwi r0, 0
/* 803CBB90  40 82 00 18 */	bne lbl_803CBBA8
/* 803CBB94  7F 3D CB 78 */	mr r29, r25
/* 803CBB98  7F 7C DB 78 */	mr r28, r27
/* 803CBB9C  48 00 00 0C */	b lbl_803CBBA8
lbl_803CBBA0:
/* 803CBBA0  7F 3D CB 78 */	mr r29, r25
/* 803CBBA4  7F 7C DB 78 */	mr r28, r27
lbl_803CBBA8:
/* 803CBBA8  3B 39 01 38 */	addi r25, r25, 0x138
/* 803CBBAC  3B 7B 00 01 */	addi r27, r27, 1
lbl_803CBBB0:
/* 803CBBB0  7C 1B D0 00 */	cmpw r27, r26
/* 803CBBB4  41 80 FF 5C */	blt lbl_803CBB10
/* 803CBBB8  48 00 00 0C */	b lbl_803CBBC4
lbl_803CBBBC:
/* 803CBBBC  1C 1C 01 38 */	mulli r0, r28, 0x138
/* 803CBBC0  7F B9 02 14 */	add r29, r25, r0
lbl_803CBBC4:
/* 803CBBC4  2C 1C FF FF */	cmpwi r28, -1
/* 803CBBC8  41 82 00 0C */	beq lbl_803CBBD4
/* 803CBBCC  28 1D 00 00 */	cmplwi r29, 0
/* 803CBBD0  40 82 00 28 */	bne lbl_803CBBF8
lbl_803CBBD4:
/* 803CBBD4  7F C3 F3 78 */	mr r3, r30
/* 803CBBD8  7F 44 D3 78 */	mr r4, r26
/* 803CBBDC  4B FF FE 1D */	bl mNpc_GetOldPlayerAnimalMemoryIdx
/* 803CBBE0  7C 7C 1B 78 */	mr r28, r3
/* 803CBBE4  2C 1C FF FF */	cmpwi r28, -1
/* 803CBBE8  40 82 00 08 */	bne lbl_803CBBF0
/* 803CBBEC  3B 80 00 00 */	li r28, 0
lbl_803CBBF0:
/* 803CBBF0  1C 1C 01 38 */	mulli r0, r28, 0x138
/* 803CBBF4  7F BE 02 14 */	add r29, r30, r0
lbl_803CBBF8:
/* 803CBBF8  28 1D 00 00 */	cmplwi r29, 0
/* 803CBBFC  41 82 00 30 */	beq lbl_803CBC2C
/* 803CBC00  7F E3 FB 78 */	mr r3, r31
/* 803CBC04  48 00 A0 A5 */	bl mNpc_CheckIslandAnimalID
/* 803CBC08  2C 03 00 00 */	cmpwi r3, 0
/* 803CBC0C  40 82 00 14 */	bne lbl_803CBC20
/* 803CBC10  7F A3 EB 78 */	mr r3, r29
/* 803CBC14  38 80 00 01 */	li r4, 1
/* 803CBC18  4B FF FA 9D */	bl mNpc_ClearAnimalMemory
/* 803CBC1C  48 00 00 10 */	b lbl_803CBC2C
lbl_803CBC20:
/* 803CBC20  7F A3 EB 78 */	mr r3, r29
/* 803CBC24  38 80 00 01 */	li r4, 1
/* 803CBC28  4B FF FB 49 */	bl mNpc_ClearIslandAnimalMemory
lbl_803CBC2C:
/* 803CBC2C  7F 83 E3 78 */	mr r3, r28
/* 803CBC30  39 61 00 30 */	addi r11, r1, 0x30
/* 803CBC34  4B CC F2 DD */	bl func_8009AF10
/* 803CBC38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CBC3C  7C 08 03 A6 */	mtlr r0
/* 803CBC40  38 21 00 30 */	addi r1, r1, 0x30
/* 803CBC44  4E 80 00 20 */	blr 
