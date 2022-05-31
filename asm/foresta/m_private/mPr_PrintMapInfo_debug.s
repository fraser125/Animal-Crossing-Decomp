lbl_803E2780:
/* 803E2780  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E2784  7C 08 02 A6 */	mflr r0
/* 803E2788  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E278C  39 61 00 20 */	addi r11, r1, 0x20
/* 803E2790  4B CB 87 45 */	bl func_8009AED4
/* 803E2794  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E2798  7C 7D 1B 78 */	mr r29, r3
/* 803E279C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E27A0  3C 84 00 02 */	addis r4, r4, 2
/* 803E27A4  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 803E27A8  28 04 00 00 */	cmplwi r4, 0
/* 803E27AC  41 82 00 E4 */	beq lbl_803E2890
/* 803E27B0  3B E4 11 DC */	addi r31, r4, 0x11dc
/* 803E27B4  38 80 00 1E */	li r4, 0x1e
/* 803E27B8  38 A0 00 64 */	li r5, 0x64
/* 803E27BC  38 C0 00 64 */	li r6, 0x64
/* 803E27C0  38 E0 00 FF */	li r7, 0xff
/* 803E27C4  4B C7 89 DD */	bl gfxprint_color
/* 803E27C8  7F A3 EB 78 */	mr r3, r29
/* 803E27CC  38 80 00 03 */	li r4, 3
/* 803E27D0  38 A0 00 15 */	li r5, 0x15
/* 803E27D4  4B C7 8A 3D */	bl gfxprint_locate8x8
/* 803E27D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E27DC  3C C0 80 66 */	lis r6, lit_1534@ha /* 0x8065BF1C@ha */
/* 803E27E0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803E27E4  3C A4 00 01 */	addis r5, r4, 1
/* 803E27E8  7F A3 EB 78 */	mr r3, r29
/* 803E27EC  A0 A5 91 2A */	lhz r5, -0x6ed6(r5)
/* 803E27F0  38 86 BF 1C */	addi r4, r6, lit_1534@l /* 0x8065BF1C@l */
/* 803E27F4  4C C6 31 82 */	crclr 6
/* 803E27F8  4B C7 91 25 */	bl gfxprint_printf
/* 803E27FC  7F A3 EB 78 */	mr r3, r29
/* 803E2800  38 80 00 03 */	li r4, 3
/* 803E2804  38 A0 00 16 */	li r5, 0x16
/* 803E2808  4B C7 8A 09 */	bl gfxprint_locate8x8
/* 803E280C  7F A3 EB 78 */	mr r3, r29
/* 803E2810  38 80 00 1E */	li r4, 0x1e
/* 803E2814  38 A0 00 C8 */	li r5, 0xc8
/* 803E2818  38 C0 00 46 */	li r6, 0x46
/* 803E281C  38 E0 00 FF */	li r7, 0xff
/* 803E2820  4B C7 89 81 */	bl gfxprint_color
/* 803E2824  3B C0 00 00 */	li r30, 0
lbl_803E2828:
/* 803E2828  2C 1E 00 04 */	cmpwi r30, 4
/* 803E282C  40 82 00 14 */	bne lbl_803E2840
/* 803E2830  7F A3 EB 78 */	mr r3, r29
/* 803E2834  38 80 00 03 */	li r4, 3
/* 803E2838  38 A0 00 17 */	li r5, 0x17
/* 803E283C  4B C7 89 D5 */	bl gfxprint_locate8x8
lbl_803E2840:
/* 803E2840  A0 7F 00 08 */	lhz r3, 8(r31)
/* 803E2844  4B FD 0F B1 */	bl mLd_CheckId
/* 803E2848  2C 03 00 01 */	cmpwi r3, 1
/* 803E284C  40 82 00 20 */	bne lbl_803E286C
/* 803E2850  3C 60 80 66 */	lis r3, lit_1534@ha /* 0x8065BF1C@ha */
/* 803E2854  A0 BF 00 08 */	lhz r5, 8(r31)
/* 803E2858  38 83 BF 1C */	addi r4, r3, lit_1534@l /* 0x8065BF1C@l */
/* 803E285C  7F A3 EB 78 */	mr r3, r29
/* 803E2860  4C C6 31 82 */	crclr 6
/* 803E2864  4B C7 90 B9 */	bl gfxprint_printf
/* 803E2868  48 00 00 18 */	b lbl_803E2880
lbl_803E286C:
/* 803E286C  3C 80 80 66 */	lis r4, lit_1535@ha /* 0x8065BF24@ha */
/* 803E2870  7F A3 EB 78 */	mr r3, r29
/* 803E2874  38 84 BF 24 */	addi r4, r4, lit_1535@l /* 0x8065BF24@l */
/* 803E2878  4C C6 31 82 */	crclr 6
/* 803E287C  4B C7 90 A1 */	bl gfxprint_printf
lbl_803E2880:
/* 803E2880  3B DE 00 01 */	addi r30, r30, 1
/* 803E2884  3B FF 00 0A */	addi r31, r31, 0xa
/* 803E2888  2C 1E 00 08 */	cmpwi r30, 8
/* 803E288C  41 80 FF 9C */	blt lbl_803E2828
lbl_803E2890:
/* 803E2890  39 61 00 20 */	addi r11, r1, 0x20
/* 803E2894  4B CB 86 8D */	bl func_8009AF20
/* 803E2898  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E289C  7C 08 03 A6 */	mtlr r0
/* 803E28A0  38 21 00 20 */	addi r1, r1, 0x20
/* 803E28A4  4E 80 00 20 */	blr 
