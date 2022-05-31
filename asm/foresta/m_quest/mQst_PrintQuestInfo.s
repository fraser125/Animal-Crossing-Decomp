lbl_803E47FC:
/* 803E47FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E4800  7C 08 02 A6 */	mflr r0
/* 803E4804  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E4808  39 61 00 30 */	addi r11, r1, 0x30
/* 803E480C  4B CB 66 B9 */	bl func_8009AEC4
/* 803E4810  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E4814  7C 7D 1B 78 */	mr r29, r3
/* 803E4818  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E481C  3C 64 00 02 */	addis r3, r4, 2
/* 803E4820  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803E4824  3F C4 00 01 */	addis r30, r4, 1
/* 803E4828  3B DE 74 38 */	addi r30, r30, 0x7438
/* 803E482C  28 03 00 00 */	cmplwi r3, 0
/* 803E4830  41 82 00 10 */	beq lbl_803E4840
/* 803E4834  3B 23 00 94 */	addi r25, r3, 0x94
/* 803E4838  3B E3 02 EC */	addi r31, r3, 0x2ec
/* 803E483C  48 00 00 0C */	b lbl_803E4848
lbl_803E4840:
/* 803E4840  3B 24 00 B4 */	addi r25, r4, 0xb4
/* 803E4844  3B E4 03 0C */	addi r31, r4, 0x30c
lbl_803E4848:
/* 803E4848  7F A3 EB 78 */	mr r3, r29
/* 803E484C  38 80 00 DC */	li r4, 0xdc
/* 803E4850  38 A0 00 32 */	li r5, 0x32
/* 803E4854  38 C0 00 32 */	li r6, 0x32
/* 803E4858  38 E0 00 FF */	li r7, 0xff
/* 803E485C  4B C7 69 45 */	bl gfxprint_color
/* 803E4860  7F A3 EB 78 */	mr r3, r29
/* 803E4864  38 80 00 03 */	li r4, 3
/* 803E4868  38 A0 00 04 */	li r5, 4
/* 803E486C  4B C7 69 A5 */	bl gfxprint_locate8x8
/* 803E4870  3B 40 00 00 */	li r26, 0
/* 803E4874  3B 80 00 00 */	li r28, 0
lbl_803E4878:
/* 803E4878  2C 1A 00 05 */	cmpwi r26, 5
/* 803E487C  41 80 00 0C */	blt lbl_803E4888
/* 803E4880  2C 1A 00 0A */	cmpwi r26, 0xa
/* 803E4884  41 80 00 20 */	blt lbl_803E48A4
lbl_803E4888:
/* 803E4888  7F A3 EB 78 */	mr r3, r29
/* 803E488C  38 80 00 DC */	li r4, 0xdc
/* 803E4890  38 A0 00 32 */	li r5, 0x32
/* 803E4894  38 C0 00 32 */	li r6, 0x32
/* 803E4898  38 E0 00 FF */	li r7, 0xff
/* 803E489C  4B C7 69 05 */	bl gfxprint_color
/* 803E48A0  48 00 00 1C */	b lbl_803E48BC
lbl_803E48A4:
/* 803E48A4  7F A3 EB 78 */	mr r3, r29
/* 803E48A8  38 80 00 32 */	li r4, 0x32
/* 803E48AC  38 A0 00 32 */	li r5, 0x32
/* 803E48B0  38 C0 00 DC */	li r6, 0xdc
/* 803E48B4  38 E0 00 FF */	li r7, 0xff
/* 803E48B8  4B C7 68 E9 */	bl gfxprint_color
lbl_803E48BC:
/* 803E48BC  7C B9 E0 AE */	lbzx r5, r25, r28
/* 803E48C0  54 A0 D7 BF */	rlwinm. r0, r5, 0x1a, 0x1e, 0x1f
/* 803E48C4  40 82 00 20 */	bne lbl_803E48E4
/* 803E48C8  3C 80 80 66 */	lis r4, lit_1063@ha /* 0x8065BF90@ha */
/* 803E48CC  7F A3 EB 78 */	mr r3, r29
/* 803E48D0  38 84 BF 90 */	addi r4, r4, lit_1063@l /* 0x8065BF90@l */
/* 803E48D4  54 A5 06 BE */	clrlwi r5, r5, 0x1a
/* 803E48D8  4C C6 31 82 */	crclr 6
/* 803E48DC  4B C7 70 41 */	bl gfxprint_printf
/* 803E48E0  48 00 00 18 */	b lbl_803E48F8
lbl_803E48E4:
/* 803E48E4  3C 80 80 66 */	lis r4, lit_1064@ha /* 0x8065BF94@ha */
/* 803E48E8  7F A3 EB 78 */	mr r3, r29
/* 803E48EC  38 84 BF 94 */	addi r4, r4, lit_1064@l /* 0x8065BF94@l */
/* 803E48F0  4C C6 31 82 */	crclr 6
/* 803E48F4  4B C7 70 29 */	bl gfxprint_printf
lbl_803E48F8:
/* 803E48F8  3B 5A 00 01 */	addi r26, r26, 1
/* 803E48FC  3B 9C 00 28 */	addi r28, r28, 0x28
/* 803E4900  2C 1A 00 0F */	cmpwi r26, 0xf
/* 803E4904  41 80 FF 74 */	blt lbl_803E4878
/* 803E4908  7F A3 EB 78 */	mr r3, r29
/* 803E490C  38 80 00 32 */	li r4, 0x32
/* 803E4910  38 A0 00 32 */	li r5, 0x32
/* 803E4914  38 C0 00 DC */	li r6, 0xdc
/* 803E4918  38 E0 00 FF */	li r7, 0xff
/* 803E491C  4B C7 68 85 */	bl gfxprint_color
/* 803E4920  3C 60 80 66 */	lis r3, lit_1064@ha /* 0x8065BF94@ha */
/* 803E4924  3C 80 80 66 */	lis r4, lit_1063@ha /* 0x8065BF90@ha */
/* 803E4928  3B 63 BF 94 */	addi r27, r3, lit_1064@l /* 0x8065BF94@l */
/* 803E492C  3B 20 00 00 */	li r25, 0
/* 803E4930  3B 44 BF 90 */	addi r26, r4, lit_1063@l /* 0x8065BF90@l */
/* 803E4934  3B 80 00 00 */	li r28, 0
lbl_803E4938:
/* 803E4938  7C BF E0 AE */	lbzx r5, r31, r28
/* 803E493C  54 A0 D7 BE */	rlwinm r0, r5, 0x1a, 0x1e, 0x1f
/* 803E4940  28 00 00 01 */	cmplwi r0, 1
/* 803E4944  40 82 00 1C */	bne lbl_803E4960
/* 803E4948  7F A3 EB 78 */	mr r3, r29
/* 803E494C  7F 44 D3 78 */	mr r4, r26
/* 803E4950  54 A5 06 BE */	clrlwi r5, r5, 0x1a
/* 803E4954  4C C6 31 82 */	crclr 6
/* 803E4958  4B C7 6F C5 */	bl gfxprint_printf
/* 803E495C  48 00 00 14 */	b lbl_803E4970
lbl_803E4960:
/* 803E4960  7F A3 EB 78 */	mr r3, r29
/* 803E4964  7F 64 DB 78 */	mr r4, r27
/* 803E4968  4C C6 31 82 */	crclr 6
/* 803E496C  4B C7 6F B1 */	bl gfxprint_printf
lbl_803E4970:
/* 803E4970  3B 39 00 01 */	addi r25, r25, 1
/* 803E4974  3B 9C 00 58 */	addi r28, r28, 0x58
/* 803E4978  2C 19 00 05 */	cmpwi r25, 5
/* 803E497C  41 80 FF BC */	blt lbl_803E4938
/* 803E4980  3B 40 00 00 */	li r26, 0
/* 803E4984  3B E0 00 00 */	li r31, 0
lbl_803E4988:
/* 803E4988  2C 1A 00 05 */	cmpwi r26, 5
/* 803E498C  41 80 00 0C */	blt lbl_803E4998
/* 803E4990  2C 1A 00 0A */	cmpwi r26, 0xa
/* 803E4994  41 80 00 20 */	blt lbl_803E49B4
lbl_803E4998:
/* 803E4998  7F A3 EB 78 */	mr r3, r29
/* 803E499C  38 80 00 DC */	li r4, 0xdc
/* 803E49A0  38 A0 00 32 */	li r5, 0x32
/* 803E49A4  38 C0 00 32 */	li r6, 0x32
/* 803E49A8  38 E0 00 FF */	li r7, 0xff
/* 803E49AC  4B C7 67 F5 */	bl gfxprint_color
/* 803E49B0  48 00 00 1C */	b lbl_803E49CC
lbl_803E49B4:
/* 803E49B4  7F A3 EB 78 */	mr r3, r29
/* 803E49B8  38 80 00 32 */	li r4, 0x32
/* 803E49BC  38 A0 00 32 */	li r5, 0x32
/* 803E49C0  38 C0 00 DC */	li r6, 0xdc
/* 803E49C4  38 E0 00 FF */	li r7, 0xff
/* 803E49C8  4B C7 67 D9 */	bl gfxprint_color
lbl_803E49CC:
/* 803E49CC  38 1F 08 A8 */	addi r0, r31, 0x8a8
/* 803E49D0  7C BE 00 AE */	lbzx r5, r30, r0
/* 803E49D4  54 A0 D7 BE */	rlwinm r0, r5, 0x1a, 0x1e, 0x1f
/* 803E49D8  28 00 00 02 */	cmplwi r0, 2
/* 803E49DC  40 82 00 20 */	bne lbl_803E49FC
/* 803E49E0  3C 80 80 66 */	lis r4, lit_1063@ha /* 0x8065BF90@ha */
/* 803E49E4  7F A3 EB 78 */	mr r3, r29
/* 803E49E8  38 84 BF 90 */	addi r4, r4, lit_1063@l /* 0x8065BF90@l */
/* 803E49EC  54 A5 06 BE */	clrlwi r5, r5, 0x1a
/* 803E49F0  4C C6 31 82 */	crclr 6
/* 803E49F4  4B C7 6F 29 */	bl gfxprint_printf
/* 803E49F8  48 00 00 18 */	b lbl_803E4A10
lbl_803E49FC:
/* 803E49FC  3C 80 80 66 */	lis r4, lit_1064@ha /* 0x8065BF94@ha */
/* 803E4A00  7F A3 EB 78 */	mr r3, r29
/* 803E4A04  38 84 BF 94 */	addi r4, r4, lit_1064@l /* 0x8065BF94@l */
/* 803E4A08  4C C6 31 82 */	crclr 6
/* 803E4A0C  4B C7 6F 11 */	bl gfxprint_printf
lbl_803E4A10:
/* 803E4A10  3B 5A 00 01 */	addi r26, r26, 1
/* 803E4A14  3B FF 09 88 */	addi r31, r31, 0x988
/* 803E4A18  2C 1A 00 0F */	cmpwi r26, 0xf
/* 803E4A1C  41 80 FF 6C */	blt lbl_803E4988
/* 803E4A20  39 61 00 30 */	addi r11, r1, 0x30
/* 803E4A24  4B CB 64 ED */	bl func_8009AF10
/* 803E4A28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E4A2C  7C 08 03 A6 */	mtlr r0
/* 803E4A30  38 21 00 30 */	addi r1, r1, 0x30
/* 803E4A34  4E 80 00 20 */	blr 
