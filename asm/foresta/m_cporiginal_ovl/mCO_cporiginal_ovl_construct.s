lbl_805CEA98:
/* 805CEA98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CEA9C  7C 08 02 A6 */	mflr r0
/* 805CEAA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CEAA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CEAA8  93 C1 00 08 */	stw r30, 8(r1)
/* 805CEAAC  7C 7E 1B 78 */	mr r30, r3
/* 805CEAB0  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805CEAB4  80 1F 09 DC */	lwz r0, 0x9dc(r31)
/* 805CEAB8  28 00 00 00 */	cmplwi r0, 0
/* 805CEABC  40 82 00 44 */	bne lbl_805CEB00
/* 805CEAC0  3C 60 81 21 */	lis r3, co_ovl_data@ha /* 0x81210F18@ha */
/* 805CEAC4  38 80 00 94 */	li r4, 0x94
/* 805CEAC8  38 63 0F 18 */	addi r3, r3, co_ovl_data@l /* 0x81210F18@l */
/* 805CEACC  38 A0 00 00 */	li r5, 0
/* 805CEAD0  4B DE BF 79 */	bl mem_clear
/* 805CEAD4  3C 80 81 21 */	lis r4, co_ovl_data@ha /* 0x81210F18@ha */
/* 805CEAD8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000CCA0@ha */
/* 805CEADC  38 04 0F 18 */	addi r0, r4, co_ovl_data@l /* 0x81210F18@l */
/* 805CEAE0  38 80 00 20 */	li r4, 0x20
/* 805CEAE4  90 1F 09 DC */	stw r0, 0x9dc(r31)
/* 805CEAE8  38 63 CC A0 */	addi r3, r3, 0xCCA0 /* 0x0000CCA0@l */
/* 805CEAEC  4B DE D9 3D */	bl func_803BC428
/* 805CEAF0  3C 80 81 21 */	lis r4, co_ovl_data@ha /* 0x81210F18@ha */
/* 805CEAF4  90 64 0F 18 */	stw r3, co_ovl_data@l(r4)  /* 0x81210F18@l */
/* 805CEAF8  7F C3 F3 78 */	mr r3, r30
/* 805CEAFC  4B FF E7 99 */	bl mCO_clear_mark_flg
lbl_805CEB00:
/* 805CEB00  7F C3 F3 78 */	mr r3, r30
/* 805CEB04  4B FF FE 9D */	bl mCO_cporiginal_ovl_init
/* 805CEB08  7F C3 F3 78 */	mr r3, r30
/* 805CEB0C  4B FF FE 31 */	bl mCO_cporiginal_ovl_set_proc
/* 805CEB10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CEB14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CEB18  83 C1 00 08 */	lwz r30, 8(r1)
/* 805CEB1C  7C 08 03 A6 */	mtlr r0
/* 805CEB20  38 21 00 10 */	addi r1, r1, 0x10
/* 805CEB24  4E 80 00 20 */	blr 
