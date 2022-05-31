lbl_805B6964:
/* 805B6964  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805B6968  7C 08 02 A6 */	mflr r0
/* 805B696C  90 01 00 54 */	stw r0, 0x54(r1)
/* 805B6970  39 61 00 50 */	addi r11, r1, 0x50
/* 805B6974  4B AE 45 4D */	bl func_8009AEC0
/* 805B6978  3C A0 80 6C */	lis r5, data_806C6038@ha /* 0x806C6038@ha */
/* 805B697C  54 80 10 3A */	slwi r0, r4, 2
/* 805B6980  3B 65 60 38 */	addi r27, r5, data_806C6038@l /* 0x806C6038@l */
/* 805B6984  7C 7F 1B 78 */	mr r31, r3
/* 805B6988  38 7B 01 04 */	addi r3, r27, 0x104
/* 805B698C  3B 20 00 00 */	li r25, 0
/* 805B6990  7F 43 00 2E */	lwzx r26, r3, r0
/* 805B6994  3B 9B 01 1C */	addi r28, r27, 0x11c
/* 805B6998  3B C0 00 00 */	li r30, 0
lbl_805B699C:
/* 805B699C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805B69A0  3B 00 00 00 */	li r24, 0
/* 805B69A4  7C 1C F4 2E */	lfsx f0, r28, r30
/* 805B69A8  3B A0 00 00 */	li r29, 0
/* 805B69AC  EC 01 00 2A */	fadds f0, f1, f0
/* 805B69B0  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_805B69B4:
/* 805B69B4  7C 18 F2 15 */	add. r0, r24, r30
/* 805B69B8  41 82 00 74 */	beq lbl_805B6A2C
/* 805B69BC  2C 00 00 03 */	cmpwi r0, 3
/* 805B69C0  41 82 00 6C */	beq lbl_805B6A2C
/* 805B69C4  2C 00 00 0C */	cmpwi r0, 0xc
/* 805B69C8  41 82 00 64 */	beq lbl_805B6A2C
/* 805B69CC  2C 00 00 0F */	cmpwi r0, 0xf
/* 805B69D0  41 82 00 5C */	beq lbl_805B6A2C
/* 805B69D4  38 9B 01 0C */	addi r4, r27, 0x10c
/* 805B69D8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 805B69DC  80 1A 00 00 */	lwz r0, 0(r26)
/* 805B69E0  38 61 00 10 */	addi r3, r1, 0x10
/* 805B69E4  7C 04 EC 2E */	lfsx f0, r4, r29
/* 805B69E8  38 81 00 08 */	addi r4, r1, 8
/* 805B69EC  90 01 00 08 */	stw r0, 8(r1)
/* 805B69F0  38 BB 01 2C */	addi r5, r27, 0x12c
/* 805B69F4  EC 01 00 2A */	fadds f0, f1, f0
/* 805B69F8  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 805B69FC  A1 1A 00 04 */	lhz r8, 4(r26)
/* 805B6A00  38 C0 01 3B */	li r6, 0x13b
/* 805B6A04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B6A08  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805B6A0C  B1 01 00 0C */	sth r8, 0xc(r1)
/* 805B6A10  81 01 00 1C */	lwz r8, 0x1c(r1)
/* 805B6A14  89 3A 00 06 */	lbz r9, 6(r26)
/* 805B6A18  99 21 00 0E */	stb r9, 0xe(r1)
/* 805B6A1C  91 01 00 10 */	stw r8, 0x10(r1)
/* 805B6A20  90 E1 00 14 */	stw r7, 0x14(r1)
/* 805B6A24  90 01 00 18 */	stw r0, 0x18(r1)
/* 805B6A28  4B DD B3 51 */	bl mCoBG_SetPluss5PointOffset_file
lbl_805B6A2C:
/* 805B6A2C  3B 18 00 01 */	addi r24, r24, 1
/* 805B6A30  3B BD 00 04 */	addi r29, r29, 4
/* 805B6A34  2C 18 00 04 */	cmpwi r24, 4
/* 805B6A38  3B 5A 00 07 */	addi r26, r26, 7
/* 805B6A3C  41 80 FF 78 */	blt lbl_805B69B4
/* 805B6A40  3B 39 00 01 */	addi r25, r25, 1
/* 805B6A44  3B DE 00 04 */	addi r30, r30, 4
/* 805B6A48  2C 19 00 04 */	cmpwi r25, 4
/* 805B6A4C  41 80 FF 50 */	blt lbl_805B699C
/* 805B6A50  39 61 00 50 */	addi r11, r1, 0x50
/* 805B6A54  4B AE 44 B9 */	bl func_8009AF0C
/* 805B6A58  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805B6A5C  7C 08 03 A6 */	mtlr r0
/* 805B6A60  38 21 00 50 */	addi r1, r1, 0x50
/* 805B6A64  4E 80 00 20 */	blr 
