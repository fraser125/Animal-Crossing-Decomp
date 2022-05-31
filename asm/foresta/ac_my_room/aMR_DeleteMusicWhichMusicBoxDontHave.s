lbl_80472D94:
/* 80472D94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80472D98  7C 08 02 A6 */	mflr r0
/* 80472D9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80472DA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80472DA4  4B C2 81 25 */	bl func_8009AEC8
/* 80472DA8  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80472DAC  87 83 DF E8 */	lwzu r28, data_811CDFE8@l(r3)  /* 0x811CDFE8@l */
/* 80472DB0  83 63 00 04 */	lwz r27, 4(r3)
/* 80472DB4  4B F3 1F 19 */	bl mFI_GetFieldId
/* 80472DB8  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 80472DBC  2C 00 60 00 */	cmpwi r0, 0x6000
/* 80472DC0  40 82 00 FC */	bne lbl_80472EBC
/* 80472DC4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80472DC8  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80472DCC  3B C4 85 38 */	addi r30, r4, common_data@l /* 0x81138538@l */
/* 80472DD0  3B 40 00 00 */	li r26, 0
/* 80472DD4  3F BE 00 02 */	addis r29, r30, 2
/* 80472DD8  3B E3 DF E8 */	addi r31, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80472DDC  3B BD 32 14 */	addi r29, r29, 0x3214
/* 80472DE0  48 00 00 D0 */	b lbl_80472EB0
lbl_80472DE4:
/* 80472DE4  88 1B 00 00 */	lbz r0, 0(r27)
/* 80472DE8  28 00 00 01 */	cmplwi r0, 1
/* 80472DEC  40 82 00 B8 */	bne lbl_80472EA4
/* 80472DF0  A0 7C 00 00 */	lhz r3, 0(r28)
/* 80472DF4  4B FF D3 AD */	bl func_804701A0
/* 80472DF8  28 03 00 00 */	cmplwi r3, 0
/* 80472DFC  41 82 00 A8 */	beq lbl_80472EA4
/* 80472E00  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 80472E04  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80472E08  41 82 00 9C */	beq lbl_80472EA4
/* 80472E0C  A0 1C 08 44 */	lhz r0, 0x844(r28)
/* 80472E10  28 00 2A 00 */	cmplwi r0, 0x2a00
/* 80472E14  41 80 00 90 */	blt lbl_80472EA4
/* 80472E18  28 00 2A 37 */	cmplwi r0, 0x2a37
/* 80472E1C  40 80 00 88 */	bge lbl_80472EA4
/* 80472E20  4B F3 1E AD */	bl mFI_GetFieldId
/* 80472E24  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80472E28  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 80472E2C  A0 7C 08 44 */	lhz r3, 0x844(r28)
/* 80472E30  38 84 A0 00 */	addi r4, r4, -24576
/* 80472E34  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80472E38  38 03 D6 00 */	addi r0, r3, -10752
/* 80472E3C  54 83 07 BE */	clrlwi r3, r4, 0x1e
/* 80472E40  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80472E44  40 82 00 0C */	bne lbl_80472E50
/* 80472E48  7F A4 EB 78 */	mr r4, r29
/* 80472E4C  48 00 00 1C */	b lbl_80472E68
lbl_80472E50:
/* 80472E50  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 80472E54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80472E58  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80472E5C  7C 60 22 14 */	add r3, r0, r4
/* 80472E60  3C 83 00 01 */	addis r4, r3, 1
/* 80472E64  38 84 C3 6C */	addi r4, r4, -15508
lbl_80472E68:
/* 80472E68  7C A3 2E 70 */	srawi r3, r5, 5
/* 80472E6C  54 A0 06 FE */	clrlwi r0, r5, 0x1b
/* 80472E70  7C 63 01 94 */	addze r3, r3
/* 80472E74  54 63 17 7A */	rlwinm r3, r3, 2, 0x1d, 0x1d
/* 80472E78  7C 64 18 2E */	lwzx r3, r4, r3
/* 80472E7C  7C 60 04 30 */	srw r0, r3, r0
/* 80472E80  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80472E84  40 82 00 20 */	bne lbl_80472EA4
/* 80472E88  38 60 00 00 */	li r3, 0
/* 80472E8C  B0 7C 08 44 */	sth r3, 0x844(r28)
/* 80472E90  88 1C 01 2C */	lbz r0, 0x12c(r28)
/* 80472E94  28 00 00 01 */	cmplwi r0, 1
/* 80472E98  40 82 00 0C */	bne lbl_80472EA4
/* 80472E9C  98 7C 01 2C */	stb r3, 0x12c(r28)
/* 80472EA0  B0 7C 01 30 */	sth r3, 0x130(r28)
lbl_80472EA4:
/* 80472EA4  3B 9C 08 58 */	addi r28, r28, 0x858
/* 80472EA8  3B 7B 00 01 */	addi r27, r27, 1
/* 80472EAC  3B 5A 00 01 */	addi r26, r26, 1
lbl_80472EB0:
/* 80472EB0  80 1F 00 08 */	lwz r0, 8(r31)
/* 80472EB4  7C 1A 00 00 */	cmpw r26, r0
/* 80472EB8  41 80 FF 2C */	blt lbl_80472DE4
lbl_80472EBC:
/* 80472EBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80472EC0  4B C2 80 55 */	bl func_8009AF14
/* 80472EC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80472EC8  7C 08 03 A6 */	mtlr r0
/* 80472ECC  38 21 00 20 */	addi r1, r1, 0x20
/* 80472ED0  4E 80 00 20 */	blr 
