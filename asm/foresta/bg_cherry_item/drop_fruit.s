lbl_804B2224:
/* 804B2224  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804B2228  7C 08 02 A6 */	mflr r0
/* 804B222C  90 01 00 54 */	stw r0, 0x54(r1)
/* 804B2230  39 61 00 50 */	addi r11, r1, 0x50
/* 804B2234  4B BE 8C 99 */	bl func_8009AECC
/* 804B2238  3D 00 80 69 */	lis r8, fg_ytable@ha /* 0x8069289C@ha */
/* 804B223C  38 00 00 15 */	li r0, 0x15
/* 804B2240  7C 9C 23 78 */	mr r28, r4
/* 804B2244  7C BD 2B 78 */	mr r29, r5
/* 804B2248  7C DE 33 78 */	mr r30, r6
/* 804B224C  7C FF 3B 78 */	mr r31, r7
/* 804B2250  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 804B2254  38 68 28 9C */	addi r3, r8, fg_ytable@l /* 0x8069289C@l */
/* 804B2258  3B 60 00 00 */	li r27, 0
/* 804B225C  7C 09 03 A6 */	mtctr r0
lbl_804B2260:
/* 804B2260  7C 03 DA 2E */	lhzx r0, r3, r27
/* 804B2264  7C 04 00 40 */	cmplw r4, r0
/* 804B2268  40 82 01 8C */	bne lbl_804B23F4
/* 804B226C  3C 60 80 69 */	lis r3, fg_ytable@ha /* 0x8069289C@ha */
/* 804B2270  38 03 28 9C */	addi r0, r3, fg_ytable@l /* 0x8069289C@l */
/* 804B2274  7C 60 DA 14 */	add r3, r0, r27
/* 804B2278  A0 03 00 02 */	lhz r0, 2(r3)
/* 804B227C  28 00 10 88 */	cmplwi r0, 0x1088
/* 804B2280  40 82 00 98 */	bne lbl_804B2318
/* 804B2284  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B2288  39 20 00 08 */	li r9, 8
/* 804B228C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B2290  3C 63 00 02 */	addis r3, r3, 2
/* 804B2294  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804B2298  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804B229C  28 00 00 05 */	cmplwi r0, 5
/* 804B22A0  40 82 00 28 */	bne lbl_804B22C8
/* 804B22A4  4B BA AA 51 */	bl fqrand
/* 804B22A8  3C 60 80 64 */	lis r3, lit_1004@ha /* 0x8064602C@ha */
/* 804B22AC  C0 03 60 2C */	lfs f0, lit_1004@l(r3)  /* 0x8064602C@l */
/* 804B22B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B22B4  4C 41 13 82 */	cror 2, 1, 2
/* 804B22B8  40 82 00 0C */	bne lbl_804B22C4
/* 804B22BC  39 20 00 03 */	li r9, 3
/* 804B22C0  48 00 00 08 */	b lbl_804B22C8
lbl_804B22C4:
/* 804B22C4  39 20 00 05 */	li r9, 5
lbl_804B22C8:
/* 804B22C8  38 81 00 08 */	addi r4, r1, 8
/* 804B22CC  38 60 00 00 */	li r3, 0
/* 804B22D0  38 A0 00 01 */	li r5, 1
/* 804B22D4  38 C0 00 00 */	li r6, 0
/* 804B22D8  38 E0 00 00 */	li r7, 0
/* 804B22DC  39 00 00 00 */	li r8, 0
/* 804B22E0  39 40 00 00 */	li r10, 0
/* 804B22E4  4B F3 60 F9 */	bl mSP_SelectRandomItem_New
/* 804B22E8  3C 80 80 69 */	lis r4, fg_ytable@ha /* 0x8069289C@ha */
/* 804B22EC  A0 61 00 08 */	lhz r3, 8(r1)
/* 804B22F0  38 04 28 9C */	addi r0, r4, fg_ytable@l /* 0x8069289C@l */
/* 804B22F4  7F 84 E3 78 */	mr r4, r28
/* 804B22F8  7C C0 DA 14 */	add r6, r0, r27
/* 804B22FC  7F A5 EB 78 */	mr r5, r29
/* 804B2300  A8 C6 00 06 */	lha r6, 6(r6)
/* 804B2304  7F C8 F3 78 */	mr r8, r30
/* 804B2308  7F E9 FB 78 */	mr r9, r31
/* 804B230C  38 E0 00 00 */	li r7, 0
/* 804B2310  4B FF F8 E1 */	bl fruit_set
/* 804B2314  48 00 00 68 */	b lbl_804B237C
lbl_804B2318:
/* 804B2318  28 04 00 69 */	cmplwi r4, 0x69
/* 804B231C  7C 03 03 78 */	mr r3, r0
/* 804B2320  41 82 00 14 */	beq lbl_804B2334
/* 804B2324  28 04 00 78 */	cmplwi r4, 0x78
/* 804B2328  41 82 00 0C */	beq lbl_804B2334
/* 804B232C  28 04 00 7F */	cmplwi r4, 0x7f
/* 804B2330  40 82 00 24 */	bne lbl_804B2354
lbl_804B2334:
/* 804B2334  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804B2338  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804B233C  3C 84 00 02 */	addis r4, r4, 2
/* 804B2340  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 804B2344  88 04 10 A2 */	lbz r0, 0x10a2(r4)
/* 804B2348  28 00 00 04 */	cmplwi r0, 4
/* 804B234C  40 82 00 08 */	bne lbl_804B2354
/* 804B2350  38 60 21 00 */	li r3, 0x2100
lbl_804B2354:
/* 804B2354  3C 80 80 69 */	lis r4, fg_ytable@ha /* 0x8069289C@ha */
/* 804B2358  7F A5 EB 78 */	mr r5, r29
/* 804B235C  38 04 28 9C */	addi r0, r4, fg_ytable@l /* 0x8069289C@l */
/* 804B2360  7F C8 F3 78 */	mr r8, r30
/* 804B2364  7C C0 DA 14 */	add r6, r0, r27
/* 804B2368  7F 84 E3 78 */	mr r4, r28
/* 804B236C  A8 C6 00 06 */	lha r6, 6(r6)
/* 804B2370  7F E9 FB 78 */	mr r9, r31
/* 804B2374  38 E0 00 00 */	li r7, 0
/* 804B2378  4B FF F8 79 */	bl fruit_set
lbl_804B237C:
/* 804B237C  7F 84 E3 78 */	mr r4, r28
/* 804B2380  7F A5 EB 78 */	mr r5, r29
/* 804B2384  38 61 00 24 */	addi r3, r1, 0x24
/* 804B2388  4B EF 30 F5 */	bl mFI_UtNum2CenterWpos
/* 804B238C  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 804B2390  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80645FF4@ha */
/* 804B2394  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 804B2398  38 83 5F F4 */	addi r4, r3, lit_664@l /* 0x80645FF4@l */
/* 804B239C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804B23A0  38 61 00 18 */	addi r3, r1, 0x18
/* 804B23A4  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804B23A8  C0 24 00 00 */	lfs f1, 0(r4)
/* 804B23AC  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 804B23B0  90 01 00 20 */	stw r0, 0x20(r1)
/* 804B23B4  4B ED D5 E5 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B23B8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804B23BC  3C 60 80 69 */	lis r3, fg_ytable@ha /* 0x8069289C@ha */
/* 804B23C0  38 03 28 9C */	addi r0, r3, fg_ytable@l /* 0x8069289C@l */
/* 804B23C4  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804B23C8  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 804B23CC  7C 60 DA 14 */	add r3, r0, r27
/* 804B23D0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804B23D4  38 81 00 0C */	addi r4, r1, 0xc
/* 804B23D8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804B23DC  38 A0 00 01 */	li r5, 1
/* 804B23E0  A0 63 00 04 */	lhz r3, 4(r3)
/* 804B23E4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804B23E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B23EC  4B EF 54 45 */	bl mFI_SetFG_common
/* 804B23F0  48 00 00 0C */	b lbl_804B23FC
lbl_804B23F4:
/* 804B23F4  3B 7B 00 08 */	addi r27, r27, 8
/* 804B23F8  42 00 FE 68 */	bdnz lbl_804B2260
lbl_804B23FC:
/* 804B23FC  39 61 00 50 */	addi r11, r1, 0x50
/* 804B2400  4B BE 8B 19 */	bl func_8009AF18
/* 804B2404  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804B2408  7C 08 03 A6 */	mtlr r0
/* 804B240C  38 21 00 50 */	addi r1, r1, 0x50
/* 804B2410  4E 80 00 20 */	blr 
