lbl_803A1A00:
/* 803A1A00  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 803A1A04  7C 08 02 A6 */	mflr r0
/* 803A1A08  90 01 00 94 */	stw r0, 0x94(r1)
/* 803A1A0C  39 61 00 90 */	addi r11, r1, 0x90
/* 803A1A10  4B CF 94 89 */	bl __save_gpr
/* 803A1A14  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 803A1A18  3B C0 00 00 */	li r30, 0
/* 803A1A1C  38 E7 85 38 */	addi r7, r7, common_data@l /* 0x81138538@l */
/* 803A1A20  3D 00 80 65 */	lis r8, data_806534A0@ha /* 0x806534A0@ha */
/* 803A1A24  3F A7 00 01 */	addis r29, r7, 1
/* 803A1A28  93 C1 00 14 */	stw r30, 0x14(r1)
/* 803A1A2C  7C 6F 1B 78 */	mr r15, r3
/* 803A1A30  7C 90 23 78 */	mr r16, r4
/* 803A1A34  93 C1 00 10 */	stw r30, 0x10(r1)
/* 803A1A38  7C B1 2B 78 */	mr r17, r5
/* 803A1A3C  3B E8 34 A0 */	addi r31, r8, data_806534A0@l /* 0x806534A0@l */
/* 803A1A40  3B 40 00 00 */	li r26, 0
/* 803A1A44  90 C1 00 08 */	stw r6, 8(r1)
/* 803A1A48  3B 20 00 00 */	li r25, 0
/* 803A1A4C  39 C0 00 00 */	li r14, 0
/* 803A1A50  3A C0 00 00 */	li r22, 0
/* 803A1A54  93 C1 00 0C */	stw r30, 0xc(r1)
/* 803A1A58  3A A0 00 00 */	li r21, 0
/* 803A1A5C  3A 80 00 00 */	li r20, 0
/* 803A1A60  3A 60 00 00 */	li r19, 0
/* 803A1A64  93 C1 00 30 */	stw r30, 0x30(r1)
/* 803A1A68  3A 40 00 00 */	li r18, 0
/* 803A1A6C  3B BD 37 A8 */	addi r29, r29, 0x37a8
/* 803A1A70  48 00 32 21 */	bl mFI_CheckFieldData
/* 803A1A74  2C 03 00 00 */	cmpwi r3, 0
/* 803A1A78  41 82 00 0C */	beq lbl_803A1A84
/* 803A1A7C  38 61 00 20 */	addi r3, r1, 0x20
/* 803A1A80  48 17 26 71 */	bl mAGrw_SearchDump
lbl_803A1A84:
/* 803A1A84  3A E0 00 00 */	li r23, 0
lbl_803A1A88:
/* 803A1A88  38 A0 00 05 */	li r5, 5
/* 803A1A8C  38 60 00 00 */	li r3, 0
/* 803A1A90  7C 97 2B D6 */	divw r4, r23, r5
/* 803A1A94  80 01 00 30 */	lwz r0, 0x30(r1)
/* 803A1A98  90 61 00 18 */	stw r3, 0x18(r1)
/* 803A1A9C  28 00 00 00 */	cmplwi r0, 0
/* 803A1AA0  90 61 00 14 */	stw r3, 0x14(r1)
/* 803A1AA4  90 61 00 0C */	stw r3, 0xc(r1)
/* 803A1AA8  7C 04 29 D6 */	mullw r0, r4, r5
/* 803A1AAC  90 61 00 10 */	stw r3, 0x10(r1)
/* 803A1AB0  3B 64 00 01 */	addi r27, r4, 1
/* 803A1AB4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 803A1AB8  7C 60 B8 50 */	subf r3, r0, r23
/* 803A1ABC  3B 83 00 01 */	addi r28, r3, 1
/* 803A1AC0  41 82 00 24 */	beq lbl_803A1AE4
/* 803A1AC4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 803A1AC8  7C 00 E0 00 */	cmpw r0, r28
/* 803A1ACC  40 82 00 18 */	bne lbl_803A1AE4
/* 803A1AD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A1AD4  7C 00 D8 00 */	cmpw r0, r27
/* 803A1AD8  40 82 00 0C */	bne lbl_803A1AE4
/* 803A1ADC  39 01 00 20 */	addi r8, r1, 0x20
/* 803A1AE0  48 00 00 08 */	b lbl_803A1AE8
lbl_803A1AE4:
/* 803A1AE4  39 00 00 00 */	li r8, 0
lbl_803A1AE8:
/* 803A1AE8  7F A9 EB 78 */	mr r9, r29
/* 803A1AEC  38 61 00 14 */	addi r3, r1, 0x14
/* 803A1AF0  38 81 00 1C */	addi r4, r1, 0x1c
/* 803A1AF4  38 A1 00 0C */	addi r5, r1, 0xc
/* 803A1AF8  38 C1 00 10 */	addi r6, r1, 0x10
/* 803A1AFC  38 E1 00 18 */	addi r7, r1, 0x18
/* 803A1B00  39 40 01 00 */	li r10, 0x100
/* 803A1B04  4B FF FB 11 */	bl mFAs_GetBlockTreeNum2
/* 803A1B08  80 01 00 18 */	lwz r0, 0x18(r1)
/* 803A1B0C  28 0F 00 00 */	cmplwi r15, 0
/* 803A1B10  90 61 00 40 */	stw r3, 0x40(r1)
/* 803A1B14  7D CE 02 14 */	add r14, r14, r0
/* 803A1B18  41 82 00 90 */	beq lbl_803A1BA8
/* 803A1B1C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803A1B20  7D E3 7B 78 */	mr r3, r15
/* 803A1B24  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803A1B28  4B FF FD F5 */	bl mFAs_CheckCondition
/* 803A1B2C  7C 78 1B 78 */	mr r24, r3
/* 803A1B30  2C 18 FF FF */	cmpwi r24, -1
/* 803A1B34  41 82 00 74 */	beq lbl_803A1BA8
/* 803A1B38  80 61 00 08 */	lwz r3, 8(r1)
/* 803A1B3C  7F 84 E3 78 */	mr r4, r28
/* 803A1B40  7F 65 DB 78 */	mr r5, r27
/* 803A1B44  7F 06 C3 78 */	mr r6, r24
/* 803A1B48  4B FF FE 5D */	bl mFAs_CheckBlockNum
/* 803A1B4C  2C 03 00 01 */	cmpwi r3, 1
/* 803A1B50  40 82 00 58 */	bne lbl_803A1BA8
/* 803A1B54  80 0F 00 00 */	lwz r0, 0(r15)
/* 803A1B58  7C 18 00 00 */	cmpw r24, r0
/* 803A1B5C  41 82 00 10 */	beq lbl_803A1B6C
/* 803A1B60  93 0F 00 00 */	stw r24, 0(r15)
/* 803A1B64  38 00 00 01 */	li r0, 1
/* 803A1B68  48 00 00 20 */	b lbl_803A1B88
lbl_803A1B6C:
/* 803A1B6C  4B CB B1 89 */	bl fqrand
/* 803A1B70  3C 60 80 64 */	lis r3, data_80641EEC@ha /* 0x80641EEC@ha */
/* 803A1B74  C0 03 1E EC */	lfs f0, data_80641EEC@l(r3)  /* 0x80641EEC@l */
/* 803A1B78  EC 00 00 72 */	fmuls f0, f0, f1
/* 803A1B7C  FC 00 00 1E */	fctiwz f0, f0
/* 803A1B80  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 803A1B84  80 01 00 3C */	lwz r0, 0x3c(r1)
lbl_803A1B88:
/* 803A1B88  2C 00 00 01 */	cmpwi r0, 1
/* 803A1B8C  40 82 00 1C */	bne lbl_803A1BA8
/* 803A1B90  28 10 00 00 */	cmplwi r16, 0
/* 803A1B94  41 82 00 14 */	beq lbl_803A1BA8
/* 803A1B98  28 11 00 00 */	cmplwi r17, 0
/* 803A1B9C  41 82 00 0C */	beq lbl_803A1BA8
/* 803A1BA0  93 90 00 00 */	stw r28, 0(r16)
/* 803A1BA4  93 71 00 00 */	stw r27, 0(r17)
lbl_803A1BA8:
/* 803A1BA8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 803A1BAC  2C 00 00 00 */	cmpwi r0, 0
/* 803A1BB0  41 82 00 50 */	beq lbl_803A1C00
/* 803A1BB4  2C 1E 00 00 */	cmpwi r30, 0
/* 803A1BB8  40 82 00 10 */	bne lbl_803A1BC8
/* 803A1BBC  7F 96 E3 78 */	mr r22, r28
/* 803A1BC0  7F 75 DB 78 */	mr r21, r27
/* 803A1BC4  48 00 00 34 */	b lbl_803A1BF8
lbl_803A1BC8:
/* 803A1BC8  4B CB B1 2D */	bl fqrand
/* 803A1BCC  3C 60 80 64 */	lis r3, data_80641EEC@ha /* 0x80641EEC@ha */
/* 803A1BD0  C0 03 1E EC */	lfs f0, data_80641EEC@l(r3)  /* 0x80641EEC@l */
/* 803A1BD4  EC 00 00 72 */	fmuls f0, f0, f1
/* 803A1BD8  FC 00 00 1E */	fctiwz f0, f0
/* 803A1BDC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 803A1BE0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 803A1BE4  2C 00 00 01 */	cmpwi r0, 1
/* 803A1BE8  40 82 00 0C */	bne lbl_803A1BF4
/* 803A1BEC  7F 96 E3 78 */	mr r22, r28
/* 803A1BF0  7F 75 DB 78 */	mr r21, r27
lbl_803A1BF4:
/* 803A1BF4  3B C0 00 01 */	li r30, 1
lbl_803A1BF8:
/* 803A1BF8  38 00 00 00 */	li r0, 0
/* 803A1BFC  48 00 00 34 */	b lbl_803A1C30
lbl_803A1C00:
/* 803A1C00  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803A1C04  2C 00 00 03 */	cmpwi r0, 3
/* 803A1C08  41 80 00 0C */	blt lbl_803A1C14
/* 803A1C0C  38 00 00 00 */	li r0, 0
/* 803A1C10  48 00 00 20 */	b lbl_803A1C30
lbl_803A1C14:
/* 803A1C14  80 01 00 40 */	lwz r0, 0x40(r1)
/* 803A1C18  38 7F 00 00 */	addi r3, r31, 0
/* 803A1C1C  38 A0 00 05 */	li r5, 5
/* 803A1C20  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 803A1C24  4B FF F9 85 */	bl mFAs_GetIdx
/* 803A1C28  38 9F 00 08 */	addi r4, r31, 8
/* 803A1C2C  7C 04 18 AE */	lbzx r0, r4, r3
lbl_803A1C30:
/* 803A1C30  2C 00 00 02 */	cmpwi r0, 2
/* 803A1C34  40 82 00 0C */	bne lbl_803A1C40
/* 803A1C38  3B 5A 00 01 */	addi r26, r26, 1
/* 803A1C3C  48 00 00 10 */	b lbl_803A1C4C
lbl_803A1C40:
/* 803A1C40  2C 00 00 01 */	cmpwi r0, 1
/* 803A1C44  40 82 00 08 */	bne lbl_803A1C4C
/* 803A1C48  3B 39 00 01 */	addi r25, r25, 1
lbl_803A1C4C:
/* 803A1C4C  3A F7 00 01 */	addi r23, r23, 1
/* 803A1C50  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803A1C54  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803A1C58  2C 17 00 1E */	cmpwi r23, 0x1e
/* 803A1C5C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803A1C60  7E 94 22 14 */	add r20, r20, r4
/* 803A1C64  7E 73 1A 14 */	add r19, r19, r3
/* 803A1C68  3B BD 02 00 */	addi r29, r29, 0x200
/* 803A1C6C  7E 52 02 14 */	add r18, r18, r0
/* 803A1C70  41 80 FE 18 */	blt lbl_803A1A88
/* 803A1C74  7C 19 D2 14 */	add r0, r25, r26
/* 803A1C78  38 7F 00 18 */	addi r3, r31, 0x18
/* 803A1C7C  20 80 00 1E */	subfic r4, r0, 0x1e
/* 803A1C80  2C 0E 00 05 */	cmpwi r14, 5
/* 803A1C84  7F 20 0E 70 */	srawi r0, r25, 1
/* 803A1C88  93 3F 00 18 */	stw r25, 0x18(r31)
/* 803A1C8C  7C 00 01 94 */	addze r0, r0
/* 803A1C90  90 83 00 04 */	stw r4, 4(r3)
/* 803A1C94  7F 5A 02 14 */	add r26, r26, r0
/* 803A1C98  92 83 00 08 */	stw r20, 8(r3)
/* 803A1C9C  92 63 00 0C */	stw r19, 0xc(r3)
/* 803A1CA0  92 43 00 10 */	stw r18, 0x10(r3)
/* 803A1CA4  41 80 00 44 */	blt lbl_803A1CE8
/* 803A1CA8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A1CAC  28 0F 00 00 */	cmplwi r15, 0
/* 803A1CB0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A1CB4  38 00 00 01 */	li r0, 1
/* 803A1CB8  3C 63 00 02 */	addis r3, r3, 2
/* 803A1CBC  3B 40 00 00 */	li r26, 0
/* 803A1CC0  98 03 13 94 */	stb r0, 0x1394(r3)
/* 803A1CC4  41 82 00 0C */	beq lbl_803A1CD0
/* 803A1CC8  38 00 00 00 */	li r0, 0
/* 803A1CCC  90 0F 00 00 */	stw r0, 0(r15)
lbl_803A1CD0:
/* 803A1CD0  28 10 00 00 */	cmplwi r16, 0
/* 803A1CD4  41 82 00 14 */	beq lbl_803A1CE8
/* 803A1CD8  28 11 00 00 */	cmplwi r17, 0
/* 803A1CDC  41 82 00 0C */	beq lbl_803A1CE8
/* 803A1CE0  92 D0 00 00 */	stw r22, 0(r16)
/* 803A1CE4  92 B1 00 00 */	stw r21, 0(r17)
lbl_803A1CE8:
/* 803A1CE8  28 0F 00 00 */	cmplwi r15, 0
/* 803A1CEC  41 82 00 14 */	beq lbl_803A1D00
/* 803A1CF0  80 0F 00 00 */	lwz r0, 0(r15)
/* 803A1CF4  2C 00 00 04 */	cmpwi r0, 4
/* 803A1CF8  41 82 00 08 */	beq lbl_803A1D00
/* 803A1CFC  4B FF F7 61 */	bl mFAs_ClearGoodField
lbl_803A1D00:
/* 803A1D00  7F 43 D3 78 */	mr r3, r26
/* 803A1D04  39 61 00 90 */	addi r11, r1, 0x90
/* 803A1D08  4B CF 91 DD */	bl __restore_gpr
/* 803A1D0C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 803A1D10  7C 08 03 A6 */	mtlr r0
/* 803A1D14  38 21 00 90 */	addi r1, r1, 0x90
/* 803A1D18  4E 80 00 20 */	blr 
