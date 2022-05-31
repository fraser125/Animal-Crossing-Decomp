lbl_80480B54:
/* 80480B54  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80480B58  7C 08 02 A6 */	mflr r0
/* 80480B5C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80480B60  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80480B64  4B C1 A3 61 */	bl func_8009AEC4
/* 80480B68  80 03 00 00 */	lwz r0, 0(r3)
/* 80480B6C  7C 99 23 78 */	mr r25, r4
/* 80480B70  2C 00 00 01 */	cmpwi r0, 1
/* 80480B74  40 82 02 7C */	bne lbl_80480DF0
/* 80480B78  80 C3 00 04 */	lwz r6, 4(r3)
/* 80480B7C  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80480B80  38 A3 DF E8 */	addi r5, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80480B84  38 60 00 00 */	li r3, 0
/* 80480B88  80 85 00 04 */	lwz r4, 4(r5)
/* 80480B8C  1C 06 08 58 */	mulli r0, r6, 0x858
/* 80480B90  80 A5 00 00 */	lwz r5, 0(r5)
/* 80480B94  7F A4 30 AE */	lbzx r29, r4, r6
/* 80480B98  7F C5 02 14 */	add r30, r5, r0
/* 80480B9C  4B FE F8 55 */	bl aMR_GetLayerTopFg
/* 80480BA0  7C 7F 1B 78 */	mr r31, r3
/* 80480BA4  7F C5 F3 78 */	mr r5, r30
/* 80480BA8  7F A6 EB 78 */	mr r6, r29
/* 80480BAC  38 61 00 48 */	addi r3, r1, 0x48
/* 80480BB0  38 81 00 3C */	addi r4, r1, 0x3c
/* 80480BB4  4B FF FC 85 */	bl aMR_GetPillowSidePos
/* 80480BB8  2C 03 00 00 */	cmpwi r3, 0
/* 80480BBC  41 82 02 34 */	beq lbl_80480DF0
/* 80480BC0  3C 60 80 64 */	lis r3, lit_885@ha /* 0x806449F4@ha */
/* 80480BC4  C0 39 00 28 */	lfs f1, 0x28(r25)
/* 80480BC8  C0 C3 49 F4 */	lfs f6, lit_885@l(r3)  /* 0x806449F4@l */
/* 80480BCC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80480BD0  EC A1 30 24 */	fdivs f5, f1, f6
/* 80480BD4  C0 99 00 30 */	lfs f4, 0x30(r25)
/* 80480BD8  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 80480BDC  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80480BE0  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80480BE4  EC 00 30 24 */	fdivs f0, f0, f6
/* 80480BE8  EC 84 30 24 */	fdivs f4, f4, f6
/* 80480BEC  EC 63 30 24 */	fdivs f3, f3, f6
/* 80480BF0  EC 42 30 24 */	fdivs f2, f2, f6
/* 80480BF4  FC A0 28 1E */	fctiwz f5, f5
/* 80480BF8  FC 00 00 1E */	fctiwz f0, f0
/* 80480BFC  FC 80 20 1E */	fctiwz f4, f4
/* 80480C00  D8 A1 00 58 */	stfd f5, 0x58(r1)
/* 80480C04  FC 60 18 1E */	fctiwz f3, f3
/* 80480C08  FC 40 10 1E */	fctiwz f2, f2
/* 80480C0C  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80480C10  EC 21 30 24 */	fdivs f1, f1, f6
/* 80480C14  83 81 00 5C */	lwz r28, 0x5c(r1)
/* 80480C18  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80480C1C  D8 81 00 60 */	stfd f4, 0x60(r1)
/* 80480C20  7C 1C 00 00 */	cmpw r28, r0
/* 80480C24  D8 61 00 68 */	stfd f3, 0x68(r1)
/* 80480C28  FC 00 08 1E */	fctiwz f0, f1
/* 80480C2C  D8 41 00 70 */	stfd f2, 0x70(r1)
/* 80480C30  83 61 00 64 */	lwz r27, 0x64(r1)
/* 80480C34  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80480C38  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80480C3C  83 41 00 74 */	lwz r26, 0x74(r1)
/* 80480C40  83 21 00 7C */	lwz r25, 0x7c(r1)
/* 80480C44  40 82 00 D4 */	bne lbl_80480D18
/* 80480C48  7C 1B 00 00 */	cmpw r27, r0
/* 80480C4C  40 82 00 CC */	bne lbl_80480D18
/* 80480C50  7F C5 F3 78 */	mr r5, r30
/* 80480C54  7F A6 EB 78 */	mr r6, r29
/* 80480C58  38 61 00 30 */	addi r3, r1, 0x30
/* 80480C5C  38 81 00 24 */	addi r4, r1, 0x24
/* 80480C60  4B FF F8 C1 */	bl aMR_GetUnderfootSidePos
/* 80480C64  2C 03 00 00 */	cmpwi r3, 0
/* 80480C68  41 82 00 B0 */	beq lbl_80480D18
/* 80480C6C  80 C1 00 30 */	lwz r6, 0x30(r1)
/* 80480C70  38 61 00 18 */	addi r3, r1, 0x18
/* 80480C74  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 80480C78  38 81 00 08 */	addi r4, r1, 8
/* 80480C7C  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80480C80  38 A1 00 0A */	addi r5, r1, 0xa
/* 80480C84  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80480C88  38 C0 00 00 */	li r6, 0
/* 80480C8C  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 80480C90  90 01 00 20 */	stw r0, 0x20(r1)
/* 80480C94  4B FF F7 89 */	bl aMR_Wpos2FtrInfo
/* 80480C98  28 03 00 00 */	cmplwi r3, 0
/* 80480C9C  41 82 00 18 */	beq lbl_80480CB4
/* 80480CA0  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 80480CA4  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80480CA8  40 82 00 70 */	bne lbl_80480D18
/* 80480CAC  38 60 00 01 */	li r3, 1
/* 80480CB0  48 00 01 44 */	b lbl_80480DF4
lbl_80480CB4:
/* 80480CB4  3C 60 80 64 */	lis r3, lit_885@ha /* 0x806449F4@ha */
/* 80480CB8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80480CBC  C0 23 49 F4 */	lfs f1, lit_885@l(r3)  /* 0x806449F4@l */
/* 80480CC0  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80480CC4  EC 00 08 24 */	fdivs f0, f0, f1
/* 80480CC8  EC 22 08 24 */	fdivs f1, f2, f1
/* 80480CCC  FC 00 00 1E */	fctiwz f0, f0
/* 80480CD0  FC 20 08 1E */	fctiwz f1, f1
/* 80480CD4  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80480CD8  D8 21 00 80 */	stfd f1, 0x80(r1)
/* 80480CDC  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80480CE0  80 61 00 84 */	lwz r3, 0x84(r1)
/* 80480CE4  54 00 20 36 */	slwi r0, r0, 4
/* 80480CE8  7C 03 02 14 */	add r0, r3, r0
/* 80480CEC  54 00 08 3C */	slwi r0, r0, 1
/* 80480CF0  7C 1F 02 2E */	lhzx r0, r31, r0
/* 80480CF4  28 00 FF FE */	cmplwi r0, 0xfffe
/* 80480CF8  41 82 00 18 */	beq lbl_80480D10
/* 80480CFC  28 00 FE 1C */	cmplwi r0, 0xfe1c
/* 80480D00  41 82 00 10 */	beq lbl_80480D10
/* 80480D04  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80480D08  2C 00 00 04 */	cmpwi r0, 4
/* 80480D0C  40 82 00 0C */	bne lbl_80480D18
lbl_80480D10:
/* 80480D10  38 60 00 01 */	li r3, 1
/* 80480D14  48 00 00 E0 */	b lbl_80480DF4
lbl_80480D18:
/* 80480D18  7C 1C D0 00 */	cmpw r28, r26
/* 80480D1C  40 82 00 D4 */	bne lbl_80480DF0
/* 80480D20  7C 1B C8 00 */	cmpw r27, r25
/* 80480D24  40 82 00 CC */	bne lbl_80480DF0
/* 80480D28  7F C5 F3 78 */	mr r5, r30
/* 80480D2C  7F A6 EB 78 */	mr r6, r29
/* 80480D30  38 61 00 30 */	addi r3, r1, 0x30
/* 80480D34  38 81 00 24 */	addi r4, r1, 0x24
/* 80480D38  4B FF F7 E9 */	bl aMR_GetUnderfootSidePos
/* 80480D3C  2C 03 00 00 */	cmpwi r3, 0
/* 80480D40  41 82 00 B0 */	beq lbl_80480DF0
/* 80480D44  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 80480D48  38 61 00 0C */	addi r3, r1, 0xc
/* 80480D4C  80 E1 00 28 */	lwz r7, 0x28(r1)
/* 80480D50  38 81 00 08 */	addi r4, r1, 8
/* 80480D54  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80480D58  38 A1 00 0A */	addi r5, r1, 0xa
/* 80480D5C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80480D60  38 C0 00 00 */	li r6, 0
/* 80480D64  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80480D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80480D6C  4B FF F6 B1 */	bl aMR_Wpos2FtrInfo
/* 80480D70  28 03 00 00 */	cmplwi r3, 0
/* 80480D74  41 82 00 18 */	beq lbl_80480D8C
/* 80480D78  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 80480D7C  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80480D80  40 82 00 70 */	bne lbl_80480DF0
/* 80480D84  38 60 00 01 */	li r3, 1
/* 80480D88  48 00 00 6C */	b lbl_80480DF4
lbl_80480D8C:
/* 80480D8C  3C 60 80 64 */	lis r3, lit_885@ha /* 0x806449F4@ha */
/* 80480D90  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80480D94  C0 23 49 F4 */	lfs f1, lit_885@l(r3)  /* 0x806449F4@l */
/* 80480D98  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80480D9C  EC 00 08 24 */	fdivs f0, f0, f1
/* 80480DA0  EC 22 08 24 */	fdivs f1, f2, f1
/* 80480DA4  FC 00 00 1E */	fctiwz f0, f0
/* 80480DA8  FC 20 08 1E */	fctiwz f1, f1
/* 80480DAC  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80480DB0  D8 21 00 80 */	stfd f1, 0x80(r1)
/* 80480DB4  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80480DB8  80 61 00 84 */	lwz r3, 0x84(r1)
/* 80480DBC  54 00 20 36 */	slwi r0, r0, 4
/* 80480DC0  7C 03 02 14 */	add r0, r3, r0
/* 80480DC4  54 00 08 3C */	slwi r0, r0, 1
/* 80480DC8  7C 1F 02 2E */	lhzx r0, r31, r0
/* 80480DCC  28 00 FF FE */	cmplwi r0, 0xfffe
/* 80480DD0  41 82 00 18 */	beq lbl_80480DE8
/* 80480DD4  28 00 FE 1C */	cmplwi r0, 0xfe1c
/* 80480DD8  41 82 00 10 */	beq lbl_80480DE8
/* 80480DDC  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80480DE0  2C 00 00 04 */	cmpwi r0, 4
/* 80480DE4  40 82 00 0C */	bne lbl_80480DF0
lbl_80480DE8:
/* 80480DE8  38 60 00 01 */	li r3, 1
/* 80480DEC  48 00 00 08 */	b lbl_80480DF4
lbl_80480DF0:
/* 80480DF0  38 60 00 00 */	li r3, 0
lbl_80480DF4:
/* 80480DF4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80480DF8  4B C1 A1 19 */	bl func_8009AF10
/* 80480DFC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80480E00  7C 08 03 A6 */	mtlr r0
/* 80480E04  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80480E08  4E 80 00 20 */	blr 
