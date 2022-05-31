lbl_8055C004:
/* 8055C004  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055C008  7C 08 02 A6 */	mflr r0
/* 8055C00C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8055C010  39 61 00 30 */	addi r11, r1, 0x30
/* 8055C014  4B B3 EE AD */	bl func_8009AEC0
/* 8055C018  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8055C01C  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 8055C020  38 C4 E0 00 */	addi r6, r4, -8192
/* 8055C024  3C 80 00 02 */	lis r4, 0x0002 /* 0x0001869F@ha */
/* 8055C028  54 C0 D0 0A */	slwi r0, r6, 0x1a
/* 8055C02C  39 27 85 38 */	addi r9, r7, common_data@l /* 0x81138538@l */
/* 8055C030  54 C8 0F FE */	srwi r8, r6, 0x1f
/* 8055C034  80 C3 00 00 */	lwz r6, 0(r3)
/* 8055C038  7C E8 00 50 */	subf r7, r8, r0
/* 8055C03C  38 04 86 9F */	addi r0, r4, 0x869F /* 0x0001869F@l */
/* 8055C040  54 E4 30 3E */	rotlwi r4, r7, 6
/* 8055C044  3F C9 00 02 */	addis r30, r9, 2
/* 8055C048  7F 84 42 14 */	add r28, r4, r8
/* 8055C04C  7C 06 00 40 */	cmplw r6, r0
/* 8055C050  38 1C 1F C0 */	addi r0, r28, 0x1fc0
/* 8055C054  83 BE 61 3C */	lwz r29, 0x613c(r30)
/* 8055C058  7C BF 2B 78 */	mr r31, r5
/* 8055C05C  3B 60 00 00 */	li r27, 0
/* 8055C060  54 18 04 3E */	clrlwi r24, r0, 0x10
/* 8055C064  3B 20 00 01 */	li r25, 1
/* 8055C068  41 80 00 18 */	blt lbl_8055C080
/* 8055C06C  38 06 8A D0 */	addi r0, r6, -30000
/* 8055C070  3B 40 00 00 */	li r26, 0
/* 8055C074  90 03 00 00 */	stw r0, 0(r3)
/* 8055C078  3B 20 00 00 */	li r25, 0
/* 8055C07C  48 00 00 74 */	b lbl_8055C0F0
lbl_8055C080:
/* 8055C080  3B 40 00 01 */	li r26, 1
/* 8055C084  48 00 00 6C */	b lbl_8055C0F0
lbl_8055C088:
/* 8055C088  7F A3 EB 78 */	mr r3, r29
/* 8055C08C  7F 04 C3 78 */	mr r4, r24
/* 8055C090  38 A0 00 00 */	li r5, 0
/* 8055C094  4B E8 46 DD */	bl mPr_GetPossessionItemIdxWithCond
/* 8055C098  7C 64 1B 78 */	mr r4, r3
/* 8055C09C  3C 04 00 01 */	addis r0, r4, 1
/* 8055C0A0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8055C0A4  41 82 00 2C */	beq lbl_8055C0D0
/* 8055C0A8  3C 60 80 6B */	lis r3, aNSC_exchange_itemNo@ha /* 0x806A9E30@ha */
/* 8055C0AC  57 40 08 3C */	slwi r0, r26, 1
/* 8055C0B0  38 A3 9E 30 */	addi r5, r3, aNSC_exchange_itemNo@l /* 0x806A9E30@l */
/* 8055C0B4  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 8055C0B8  7C A5 02 2E */	lhzx r5, r5, r0
/* 8055C0BC  38 C0 00 00 */	li r6, 0
/* 8055C0C0  4B E8 4D 69 */	bl mPr_SetPossessionItem
/* 8055C0C4  7F FB F8 50 */	subf r31, r27, r31
/* 8055C0C8  3B 40 00 01 */	li r26, 1
/* 8055C0CC  48 00 00 24 */	b lbl_8055C0F0
lbl_8055C0D0:
/* 8055C0D0  3B 7B 00 01 */	addi r27, r27, 1
/* 8055C0D4  2C 1B 00 04 */	cmpwi r27, 4
/* 8055C0D8  41 81 00 20 */	bgt lbl_8055C0F8
/* 8055C0DC  38 1B FF FF */	addi r0, r27, -1
/* 8055C0E0  54 00 30 32 */	slwi r0, r0, 6
/* 8055C0E4  7C 7C 02 14 */	add r3, r28, r0
/* 8055C0E8  38 03 20 00 */	addi r0, r3, 0x2000
/* 8055C0EC  54 18 04 3E */	clrlwi r24, r0, 0x10
lbl_8055C0F0:
/* 8055C0F0  2C 1F 00 00 */	cmpwi r31, 0
/* 8055C0F4  40 82 FF 94 */	bne lbl_8055C088
lbl_8055C0F8:
/* 8055C0F8  7F 23 CB 78 */	mr r3, r25
/* 8055C0FC  39 61 00 30 */	addi r11, r1, 0x30
/* 8055C100  4B B3 EE 0D */	bl func_8009AF0C
/* 8055C104  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8055C108  7C 08 03 A6 */	mtlr r0
/* 8055C10C  38 21 00 30 */	addi r1, r1, 0x30
/* 8055C110  4E 80 00 20 */	blr 
