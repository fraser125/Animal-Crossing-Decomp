lbl_803A2B9C:
/* 803A2B9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A2BA0  7C 08 02 A6 */	mflr r0
/* 803A2BA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A2BA8  39 61 00 30 */	addi r11, r1, 0x30
/* 803A2BAC  4B CF 83 1D */	bl func_8009AEC8
/* 803A2BB0  7C 7A 1B 79 */	or. r26, r3, r3
/* 803A2BB4  7C 9B 23 78 */	mr r27, r4
/* 803A2BB8  7C DF 33 78 */	mr r31, r6
/* 803A2BBC  41 82 01 78 */	beq lbl_803A2D34
/* 803A2BC0  48 00 01 60 */	b lbl_803A2D20
lbl_803A2BC4:
/* 803A2BC4  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 803A2BC8  3B C0 FF FF */	li r30, -1
/* 803A2BCC  8B BF 00 0C */	lbz r29, 0xc(r31)
/* 803A2BD0  28 05 00 00 */	cmplwi r5, 0
/* 803A2BD4  8B 9F 00 0D */	lbz r28, 0xd(r31)
/* 803A2BD8  40 82 00 18 */	bne lbl_803A2BF0
/* 803A2BDC  80 1F 00 08 */	lwz r0, 8(r31)
/* 803A2BE0  80 7F 00 04 */	lwz r3, 4(r31)
/* 803A2BE4  7C 00 D9 D6 */	mullw r0, r0, r27
/* 803A2BE8  7F C3 02 14 */	add r30, r3, r0
/* 803A2BEC  48 00 00 DC */	b lbl_803A2CC8
lbl_803A2BF0:
/* 803A2BF0  38 61 00 0C */	addi r3, r1, 0xc
/* 803A2BF4  38 81 00 08 */	addi r4, r1, 8
/* 803A2BF8  48 00 38 09 */	bl mFI_BlockKind2BkNum
/* 803A2BFC  2C 03 00 01 */	cmpwi r3, 1
/* 803A2C00  40 82 00 C8 */	bne lbl_803A2CC8
/* 803A2C04  80 81 00 08 */	lwz r4, 8(r1)
/* 803A2C08  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D07F@ha */
/* 803A2C0C  A0 DF 00 00 */	lhz r6, 0(r31)
/* 803A2C10  38 05 D0 7F */	addi r0, r5, 0xD07F /* 0x0000D07F@l */
/* 803A2C14  7C E4 D9 D6 */	mullw r7, r4, r27
/* 803A2C18  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A2C1C  7C 06 00 00 */	cmpw r6, r0
/* 803A2C20  7F C3 3A 14 */	add r30, r3, r7
/* 803A2C24  41 82 00 7C */	beq lbl_803A2CA0
/* 803A2C28  40 80 00 A0 */	bge lbl_803A2CC8
/* 803A2C2C  38 05 D0 0D */	addi r0, r5, -12275
/* 803A2C30  7C 06 00 00 */	cmpw r6, r0
/* 803A2C34  41 82 00 08 */	beq lbl_803A2C3C
/* 803A2C38  48 00 00 90 */	b lbl_803A2CC8
lbl_803A2C3C:
/* 803A2C3C  1C BE 06 14 */	mulli r5, r30, 0x614
/* 803A2C40  38 00 01 00 */	li r0, 0x100
/* 803A2C44  38 E0 00 00 */	li r7, 0
/* 803A2C48  38 A5 05 84 */	addi r5, r5, 0x584
/* 803A2C4C  7C BA 28 2E */	lwzx r5, r26, r5
/* 803A2C50  7C 09 03 A6 */	mtctr r0
lbl_803A2C54:
/* 803A2C54  A0 05 00 00 */	lhz r0, 0(r5)
/* 803A2C58  28 00 58 0C */	cmplwi r0, 0x580c
/* 803A2C5C  40 82 00 34 */	bne lbl_803A2C90
/* 803A2C60  54 E0 E0 06 */	slwi r0, r7, 0x1c
/* 803A2C64  54 E6 0F FE */	srwi r6, r7, 0x1f
/* 803A2C68  7C A6 00 50 */	subf r5, r6, r0
/* 803A2C6C  54 A5 20 3E */	rotlwi r5, r5, 4
/* 803A2C70  7C E0 26 70 */	srawi r0, r7, 4
/* 803A2C74  7F A5 32 14 */	add r29, r5, r6
/* 803A2C78  7F 80 01 94 */	addze r28, r0
/* 803A2C7C  3B BD 00 02 */	addi r29, r29, 2
/* 803A2C80  7F A5 EB 78 */	mr r5, r29
/* 803A2C84  7F 86 E3 78 */	mr r6, r28
/* 803A2C88  4B FF FE D5 */	bl mFM_KeepPolicePos
/* 803A2C8C  48 00 00 3C */	b lbl_803A2CC8
lbl_803A2C90:
/* 803A2C90  38 A5 00 02 */	addi r5, r5, 2
/* 803A2C94  38 E7 00 01 */	addi r7, r7, 1
/* 803A2C98  42 00 FF BC */	bdnz lbl_803A2C54
/* 803A2C9C  48 00 00 2C */	b lbl_803A2CC8
lbl_803A2CA0:
/* 803A2CA0  4B FF 7F 95 */	bl mEv_CheckFirstJob
/* 803A2CA4  2C 03 00 00 */	cmpwi r3, 0
/* 803A2CA8  41 82 00 1C */	beq lbl_803A2CC4
/* 803A2CAC  48 04 B1 09 */	bl mSC_check_ArbeitPlayer
/* 803A2CB0  28 03 00 00 */	cmplwi r3, 0
/* 803A2CB4  41 82 00 14 */	beq lbl_803A2CC8
/* 803A2CB8  48 04 B0 71 */	bl mSC_LightHouse_travel_check
/* 803A2CBC  2C 03 00 00 */	cmpwi r3, 0
/* 803A2CC0  41 82 00 08 */	beq lbl_803A2CC8
lbl_803A2CC4:
/* 803A2CC4  3B C0 FF FF */	li r30, -1
lbl_803A2CC8:
/* 803A2CC8  2C 1E FF FF */	cmpwi r30, -1
/* 803A2CCC  41 82 00 50 */	beq lbl_803A2D1C
/* 803A2CD0  1C 7E 06 14 */	mulli r3, r30, 0x614
/* 803A2CD4  38 80 00 10 */	li r4, 0x10
/* 803A2CD8  38 A0 00 00 */	li r5, 0
/* 803A2CDC  3B C3 05 8C */	addi r30, r3, 0x58c
/* 803A2CE0  7F DA F2 14 */	add r30, r26, r30
/* 803A2CE4  7F C3 F3 78 */	mr r3, r30
/* 803A2CE8  48 00 5A 65 */	bl mFI_GetMoveActorListIdx
/* 803A2CEC  2C 03 FF FF */	cmpwi r3, -1
/* 803A2CF0  41 82 00 2C */	beq lbl_803A2D1C
/* 803A2CF4  54 60 18 38 */	slwi r0, r3, 3
/* 803A2CF8  A0 7F 00 00 */	lhz r3, 0(r31)
/* 803A2CFC  7C 9E 02 14 */	add r4, r30, r0
/* 803A2D00  B0 64 00 00 */	sth r3, 0(r4)
/* 803A2D04  9B A4 00 02 */	stb r29, 2(r4)
/* 803A2D08  9B 84 00 03 */	stb r28, 3(r4)
/* 803A2D0C  88 1F 00 0E */	lbz r0, 0xe(r31)
/* 803A2D10  98 04 00 04 */	stb r0, 4(r4)
/* 803A2D14  A8 1F 00 10 */	lha r0, 0x10(r31)
/* 803A2D18  B0 04 00 06 */	sth r0, 6(r4)
lbl_803A2D1C:
/* 803A2D1C  3B FF 00 18 */	addi r31, r31, 0x18
lbl_803A2D20:
/* 803A2D20  28 1F 00 00 */	cmplwi r31, 0
/* 803A2D24  41 82 00 10 */	beq lbl_803A2D34
/* 803A2D28  A0 1F 00 00 */	lhz r0, 0(r31)
/* 803A2D2C  28 00 FF FF */	cmplwi r0, 0xffff
/* 803A2D30  40 82 FE 94 */	bne lbl_803A2BC4
lbl_803A2D34:
/* 803A2D34  39 61 00 30 */	addi r11, r1, 0x30
/* 803A2D38  4B CF 81 DD */	bl func_8009AF14
/* 803A2D3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A2D40  7C 08 03 A6 */	mtlr r0
/* 803A2D44  38 21 00 30 */	addi r1, r1, 0x30
/* 803A2D48  4E 80 00 20 */	blr 
