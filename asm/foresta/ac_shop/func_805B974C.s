lbl_805B974C:
/* 805B974C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805B9750  7C 08 02 A6 */	mflr r0
/* 805B9754  90 01 00 54 */	stw r0, 0x54(r1)
/* 805B9758  39 61 00 50 */	addi r11, r1, 0x50
/* 805B975C  4B AE 17 65 */	bl func_8009AEC0
/* 805B9760  3C A0 80 6C */	lis r5, data_806C65D0@ha /* 0x806C65D0@ha */
/* 805B9764  54 80 10 3A */	slwi r0, r4, 2
/* 805B9768  3B 65 65 D0 */	addi r27, r5, data_806C65D0@l /* 0x806C65D0@l */
/* 805B976C  7C 7F 1B 78 */	mr r31, r3
/* 805B9770  38 7B 00 CC */	addi r3, r27, 0xcc
/* 805B9774  3B 20 00 00 */	li r25, 0
/* 805B9778  7F 43 00 2E */	lwzx r26, r3, r0
/* 805B977C  3B 9B 00 E4 */	addi r28, r27, 0xe4
/* 805B9780  3B C0 00 00 */	li r30, 0
lbl_805B9784:
/* 805B9784  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805B9788  3B 00 00 00 */	li r24, 0
/* 805B978C  7C 1C F4 2E */	lfsx f0, r28, r30
/* 805B9790  3B A0 00 00 */	li r29, 0
/* 805B9794  EC 01 00 2A */	fadds f0, f1, f0
/* 805B9798  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_805B979C:
/* 805B979C  7C 18 F2 15 */	add. r0, r24, r30
/* 805B97A0  41 82 00 74 */	beq lbl_805B9814
/* 805B97A4  2C 00 00 03 */	cmpwi r0, 3
/* 805B97A8  41 82 00 6C */	beq lbl_805B9814
/* 805B97AC  2C 00 00 0C */	cmpwi r0, 0xc
/* 805B97B0  41 82 00 64 */	beq lbl_805B9814
/* 805B97B4  2C 00 00 0F */	cmpwi r0, 0xf
/* 805B97B8  41 82 00 5C */	beq lbl_805B9814
/* 805B97BC  38 9B 00 D4 */	addi r4, r27, 0xd4
/* 805B97C0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 805B97C4  80 1A 00 00 */	lwz r0, 0(r26)
/* 805B97C8  38 61 00 10 */	addi r3, r1, 0x10
/* 805B97CC  7C 04 EC 2E */	lfsx f0, r4, r29
/* 805B97D0  38 81 00 08 */	addi r4, r1, 8
/* 805B97D4  90 01 00 08 */	stw r0, 8(r1)
/* 805B97D8  38 BB 00 F4 */	addi r5, r27, 0xf4
/* 805B97DC  EC 01 00 2A */	fadds f0, f1, f0
/* 805B97E0  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 805B97E4  A1 1A 00 04 */	lhz r8, 4(r26)
/* 805B97E8  38 C0 00 DD */	li r6, 0xdd
/* 805B97EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B97F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805B97F4  B1 01 00 0C */	sth r8, 0xc(r1)
/* 805B97F8  81 01 00 1C */	lwz r8, 0x1c(r1)
/* 805B97FC  89 3A 00 06 */	lbz r9, 6(r26)
/* 805B9800  99 21 00 0E */	stb r9, 0xe(r1)
/* 805B9804  91 01 00 10 */	stw r8, 0x10(r1)
/* 805B9808  90 E1 00 14 */	stw r7, 0x14(r1)
/* 805B980C  90 01 00 18 */	stw r0, 0x18(r1)
/* 805B9810  4B DD 85 69 */	bl mCoBG_SetPluss5PointOffset_file
lbl_805B9814:
/* 805B9814  3B 18 00 01 */	addi r24, r24, 1
/* 805B9818  3B BD 00 04 */	addi r29, r29, 4
/* 805B981C  2C 18 00 04 */	cmpwi r24, 4
/* 805B9820  3B 5A 00 07 */	addi r26, r26, 7
/* 805B9824  41 80 FF 78 */	blt lbl_805B979C
/* 805B9828  3B 39 00 01 */	addi r25, r25, 1
/* 805B982C  3B DE 00 04 */	addi r30, r30, 4
/* 805B9830  2C 19 00 04 */	cmpwi r25, 4
/* 805B9834  41 80 FF 50 */	blt lbl_805B9784
/* 805B9838  39 61 00 50 */	addi r11, r1, 0x50
/* 805B983C  4B AE 16 D1 */	bl func_8009AF0C
/* 805B9840  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805B9844  7C 08 03 A6 */	mtlr r0
/* 805B9848  38 21 00 50 */	addi r1, r1, 0x50
/* 805B984C  4E 80 00 20 */	blr 
