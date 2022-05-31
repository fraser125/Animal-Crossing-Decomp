lbl_803D72E8:
/* 803D72E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D72EC  7C 08 02 A6 */	mflr r0
/* 803D72F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D72F4  39 61 00 20 */	addi r11, r1, 0x20
/* 803D72F8  4B CC 3B D1 */	bl func_8009AEC8
/* 803D72FC  3C 80 80 66 */	lis r4, data_8065ADE8@ha /* 0x8065ADE8@ha */
/* 803D7300  7C 7A 1B 78 */	mr r26, r3
/* 803D7304  3B E4 AD E8 */	addi r31, r4, data_8065ADE8@l /* 0x8065ADE8@l */
/* 803D7308  3B A0 00 03 */	li r29, 3
/* 803D730C  80 1F 07 18 */	lwz r0, 0x718(r31)
/* 803D7310  3B 80 00 13 */	li r28, 0x13
/* 803D7314  2C 00 00 00 */	cmpwi r0, 0
/* 803D7318  41 80 01 1C */	blt lbl_803D7434
/* 803D731C  2C 00 00 0F */	cmpwi r0, 0xf
/* 803D7320  40 80 01 14 */	bge lbl_803D7434
/* 803D7324  1C A0 09 88 */	mulli r5, r0, 0x988
/* 803D7328  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D732C  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803D7330  7C 80 2A 14 */	add r4, r0, r5
/* 803D7334  3F C4 00 01 */	addis r30, r4, 1
/* 803D7338  37 DE 74 48 */	addic. r30, r30, 0x7448
/* 803D733C  41 82 00 F8 */	beq lbl_803D7434
/* 803D7340  38 80 00 FA */	li r4, 0xfa
/* 803D7344  38 A0 00 64 */	li r5, 0x64
/* 803D7348  38 C0 00 AA */	li r6, 0xaa
/* 803D734C  38 E0 00 FF */	li r7, 0xff
/* 803D7350  4B C8 3E 51 */	bl gfxprint_color
/* 803D7354  7F 43 D3 78 */	mr r3, r26
/* 803D7358  38 80 00 03 */	li r4, 3
/* 803D735C  38 A0 00 12 */	li r5, 0x12
/* 803D7360  4B C8 3E B1 */	bl gfxprint_locate8x8
/* 803D7364  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D7368  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D736C  3C 63 00 02 */	addis r3, r3, 2
/* 803D7370  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803D7374  28 03 00 00 */	cmplwi r3, 0
/* 803D7378  41 82 00 1C */	beq lbl_803D7394
/* 803D737C  A0 A3 00 10 */	lhz r5, 0x10(r3)
/* 803D7380  7F 43 D3 78 */	mr r3, r26
/* 803D7384  38 9F 07 1C */	addi r4, r31, 0x71c
/* 803D7388  4C C6 31 82 */	crclr 6
/* 803D738C  4B C8 45 91 */	bl gfxprint_printf
/* 803D7390  48 00 00 14 */	b lbl_803D73A4
lbl_803D7394:
/* 803D7394  7F 43 D3 78 */	mr r3, r26
/* 803D7398  38 9F 07 24 */	addi r4, r31, 0x724
/* 803D739C  4C C6 31 82 */	crclr 6
/* 803D73A0  4B C8 45 7D */	bl gfxprint_printf
lbl_803D73A4:
/* 803D73A4  7F 43 D3 78 */	mr r3, r26
/* 803D73A8  38 80 00 32 */	li r4, 0x32
/* 803D73AC  38 A0 00 96 */	li r5, 0x96
/* 803D73B0  38 C0 00 32 */	li r6, 0x32
/* 803D73B4  38 E0 00 FF */	li r7, 0xff
/* 803D73B8  4B C8 3D E9 */	bl gfxprint_color
/* 803D73BC  3B 60 00 00 */	li r27, 0
lbl_803D73C0:
/* 803D73C0  2C 1B 00 04 */	cmpwi r27, 4
/* 803D73C4  40 82 00 0C */	bne lbl_803D73D0
/* 803D73C8  3B A0 00 03 */	li r29, 3
/* 803D73CC  3B 9C 00 01 */	addi r28, r28, 1
lbl_803D73D0:
/* 803D73D0  7F 43 D3 78 */	mr r3, r26
/* 803D73D4  7F A4 EB 78 */	mr r4, r29
/* 803D73D8  7F 85 E3 78 */	mr r5, r28
/* 803D73DC  4B C8 3E 35 */	bl gfxprint_locate8x8
/* 803D73E0  7F C3 F3 78 */	mr r3, r30
/* 803D73E4  4B FF 44 8D */	bl mNpc_CheckFreeAnimalMemory
/* 803D73E8  2C 03 00 00 */	cmpwi r3, 0
/* 803D73EC  40 82 00 24 */	bne lbl_803D7410
/* 803D73F0  88 DE 00 30 */	lbz r6, 0x30(r30)
/* 803D73F4  7F 43 D3 78 */	mr r3, r26
/* 803D73F8  A0 BE 00 10 */	lhz r5, 0x10(r30)
/* 803D73FC  38 9F 07 2C */	addi r4, r31, 0x72c
/* 803D7400  7C C6 07 74 */	extsb r6, r6
/* 803D7404  4C C6 31 82 */	crclr 6
/* 803D7408  4B C8 45 15 */	bl gfxprint_printf
/* 803D740C  48 00 00 14 */	b lbl_803D7420
lbl_803D7410:
/* 803D7410  7F 43 D3 78 */	mr r3, r26
/* 803D7414  38 9F 07 38 */	addi r4, r31, 0x738
/* 803D7418  4C C6 31 82 */	crclr 6
/* 803D741C  4B C8 45 01 */	bl gfxprint_printf
lbl_803D7420:
/* 803D7420  3B 7B 00 01 */	addi r27, r27, 1
/* 803D7424  3B BD 00 09 */	addi r29, r29, 9
/* 803D7428  2C 1B 00 07 */	cmpwi r27, 7
/* 803D742C  3B DE 01 38 */	addi r30, r30, 0x138
/* 803D7430  41 80 FF 90 */	blt lbl_803D73C0
lbl_803D7434:
/* 803D7434  39 61 00 20 */	addi r11, r1, 0x20
/* 803D7438  4B CC 3A DD */	bl func_8009AF14
/* 803D743C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D7440  7C 08 03 A6 */	mtlr r0
/* 803D7444  38 21 00 20 */	addi r1, r1, 0x20
/* 803D7448  4E 80 00 20 */	blr 
