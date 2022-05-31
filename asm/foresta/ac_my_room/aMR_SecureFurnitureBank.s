lbl_804724F8:
/* 804724F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804724FC  7C 08 02 A6 */	mflr r0
/* 80472500  90 01 00 24 */	stw r0, 0x24(r1)
/* 80472504  39 61 00 20 */	addi r11, r1, 0x20
/* 80472508  4B C2 89 CD */	bl func_8009AED4
/* 8047250C  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80472510  7C 7F 1B 78 */	mr r31, r3
/* 80472514  38 A4 DF E8 */	addi r5, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80472518  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 8047251C  38 9F 04 E0 */	addi r4, r31, 0x4e0
/* 80472520  38 A5 00 08 */	addi r5, r5, 8
/* 80472524  4B FF FF 81 */	bl aMR_GetBankSitu
/* 80472528  80 7F 04 DC */	lwz r3, 0x4dc(r31)
/* 8047252C  38 80 00 00 */	li r4, 0
/* 80472530  3C A0 81 1D */	lis r5, l_bank_address_table@ha /* 0x811CE4E8@ha */
/* 80472534  38 00 00 64 */	li r0, 0x64
/* 80472538  7C 86 23 78 */	mr r6, r4
/* 8047253C  54 63 58 28 */	slwi r3, r3, 0xb
/* 80472540  38 A5 E4 E8 */	addi r5, r5, l_bank_address_table@l /* 0x811CE4E8@l */
/* 80472544  7C 09 03 A6 */	mtctr r0
lbl_80472548:
/* 80472548  7C C5 21 2E */	stwx r6, r5, r4
/* 8047254C  38 84 00 04 */	addi r4, r4, 4
/* 80472550  42 00 FF F8 */	bdnz lbl_80472548
/* 80472554  38 80 00 20 */	li r4, 0x20
/* 80472558  4B F4 9E D1 */	bl func_803BC428
/* 8047255C  3C 80 81 1D */	lis r4, l_bank_address_table@ha /* 0x811CE4E8@ha */
/* 80472560  90 7F 05 AC */	stw r3, 0x5ac(r31)
/* 80472564  38 C4 E4 E8 */	addi r6, r4, l_bank_address_table@l /* 0x811CE4E8@l */
/* 80472568  38 E0 00 00 */	li r7, 0
/* 8047256C  38 80 00 00 */	li r4, 0
/* 80472570  38 A0 00 00 */	li r5, 0
/* 80472574  48 00 00 18 */	b lbl_8047258C
lbl_80472578:
/* 80472578  7C 03 2A 14 */	add r0, r3, r5
/* 8047257C  38 A5 08 00 */	addi r5, r5, 0x800
/* 80472580  7C 06 21 2E */	stwx r0, r6, r4
/* 80472584  38 84 00 04 */	addi r4, r4, 4
/* 80472588  38 E7 00 01 */	addi r7, r7, 1
lbl_8047258C:
/* 8047258C  80 1F 04 DC */	lwz r0, 0x4dc(r31)
/* 80472590  7C 07 00 00 */	cmpw r7, r0
/* 80472594  41 80 FF E4 */	blt lbl_80472578
/* 80472598  80 1F 04 E0 */	lwz r0, 0x4e0(r31)
/* 8047259C  2C 00 00 00 */	cmpwi r0, 0
/* 804725A0  40 81 00 44 */	ble lbl_804725E4
/* 804725A4  3C 60 81 1D */	lis r3, l_bank_address_table@ha /* 0x811CE4E8@ha */
/* 804725A8  3B A0 00 00 */	li r29, 0
/* 804725AC  3B C3 E4 E8 */	addi r30, r3, l_bank_address_table@l /* 0x811CE4E8@l */
/* 804725B0  48 00 00 28 */	b lbl_804725D8
lbl_804725B4:
/* 804725B4  38 60 08 00 */	li r3, 0x800
/* 804725B8  4B F4 9E A5 */	bl zelda_malloc
/* 804725BC  80 1F 04 DC */	lwz r0, 0x4dc(r31)
/* 804725C0  28 03 00 00 */	cmplwi r3, 0
/* 804725C4  7C 00 EA 14 */	add r0, r0, r29
/* 804725C8  41 82 00 0C */	beq lbl_804725D4
/* 804725CC  54 00 10 3A */	slwi r0, r0, 2
/* 804725D0  7C 7E 01 2E */	stwx r3, r30, r0
lbl_804725D4:
/* 804725D4  3B BD 00 01 */	addi r29, r29, 1
lbl_804725D8:
/* 804725D8  80 1F 04 E0 */	lwz r0, 0x4e0(r31)
/* 804725DC  7C 1D 00 00 */	cmpw r29, r0
/* 804725E0  41 80 FF D4 */	blt lbl_804725B4
lbl_804725E4:
/* 804725E4  39 61 00 20 */	addi r11, r1, 0x20
/* 804725E8  4B C2 89 39 */	bl func_8009AF20
/* 804725EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804725F0  7C 08 03 A6 */	mtlr r0
/* 804725F4  38 21 00 20 */	addi r1, r1, 0x20
/* 804725F8  4E 80 00 20 */	blr 
