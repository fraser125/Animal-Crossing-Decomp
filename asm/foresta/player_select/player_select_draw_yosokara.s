lbl_8062C508:
/* 8062C508  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8062C50C  7C 08 02 A6 */	mflr r0
/* 8062C510  90 01 00 34 */	stw r0, 0x34(r1)
/* 8062C514  39 61 00 30 */	addi r11, r1, 0x30
/* 8062C518  4B A6 E9 BD */	bl func_8009AED4
/* 8062C51C  7C 7D 1B 78 */	mr r29, r3
/* 8062C520  3C 60 80 6D */	lis r3, l_ps_white_color@ha /* 0x806D4A58@ha */
/* 8062C524  80 1D 02 14 */	lwz r0, 0x214(r29)
/* 8062C528  3B E3 4A 58 */	addi r31, r3, l_ps_white_color@l /* 0x806D4A58@l */
/* 8062C52C  3B DD 02 68 */	addi r30, r29, 0x268
/* 8062C530  2C 00 00 04 */	cmpwi r0, 4
/* 8062C534  40 82 00 0C */	bne lbl_8062C540
/* 8062C538  3C 60 80 6D */	lis r3, l_ps_select_color@ha /* 0x806D4A64@ha */
/* 8062C53C  3B E3 4A 64 */	addi r31, r3, l_ps_select_color@l /* 0x806D4A64@l */
lbl_8062C540:
/* 8062C540  80 7D 00 00 */	lwz r3, 0(r29)
/* 8062C544  38 80 00 01 */	li r4, 1
/* 8062C548  4B D8 3B F1 */	bl mFont_SetMatrix
/* 8062C54C  38 C0 00 01 */	li r6, 1
/* 8062C550  3C 60 80 65 */	lis r3, lit_553@ha /* 0x8064D0F8@ha */
/* 8062C554  90 C1 00 08 */	stw r6, 8(r1)
/* 8062C558  38 00 00 00 */	li r0, 0
/* 8062C55C  C0 63 D0 F8 */	lfs f3, lit_553@l(r3)  /* 0x8064D0F8@l */
/* 8062C560  3C A0 80 65 */	lis r5, lit_551@ha /* 0x8064D0F0@ha */
/* 8062C564  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062C568  3C 80 80 65 */	lis r4, lit_563@ha /* 0x8064D104@ha */
/* 8062C56C  C0 25 D0 F0 */	lfs f1, lit_551@l(r5)  /* 0x8064D0F0@l */
/* 8062C570  FC 80 18 90 */	fmr f4, f3
/* 8062C574  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8062C578  7F A3 EB 78 */	mr r3, r29
/* 8062C57C  C0 44 D1 04 */	lfs f2, lit_563@l(r4)  /* 0x8064D104@l */
/* 8062C580  7F C4 F3 78 */	mr r4, r30
/* 8062C584  80 DF 00 00 */	lwz r6, 0(r31)
/* 8062C588  80 FF 00 04 */	lwz r7, 4(r31)
/* 8062C58C  38 A0 00 12 */	li r5, 0x12
/* 8062C590  81 1F 00 08 */	lwz r8, 8(r31)
/* 8062C594  39 20 00 FF */	li r9, 0xff
/* 8062C598  39 40 00 00 */	li r10, 0
/* 8062C59C  4B D8 3A D5 */	bl mFont_SetLineStrings_AndSpace
/* 8062C5A0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8062C5A4  38 80 00 01 */	li r4, 1
/* 8062C5A8  4B D8 3C 91 */	bl mFont_UnSetMatrix
/* 8062C5AC  39 61 00 30 */	addi r11, r1, 0x30
/* 8062C5B0  4B A6 E9 71 */	bl func_8009AF20
/* 8062C5B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8062C5B8  7C 08 03 A6 */	mtlr r0
/* 8062C5BC  38 21 00 30 */	addi r1, r1, 0x30
/* 8062C5C0  4E 80 00 20 */	blr 
