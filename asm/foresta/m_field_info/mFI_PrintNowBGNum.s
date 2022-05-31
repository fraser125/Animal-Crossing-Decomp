lbl_803AAE5C:
/* 803AAE5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AAE60  7C 08 02 A6 */	mflr r0
/* 803AAE64  38 80 00 C8 */	li r4, 0xc8
/* 803AAE68  38 A0 00 C8 */	li r5, 0xc8
/* 803AAE6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AAE70  38 C0 00 FA */	li r6, 0xfa
/* 803AAE74  38 E0 00 FF */	li r7, 0xff
/* 803AAE78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AAE7C  7C 7F 1B 78 */	mr r31, r3
/* 803AAE80  4B CB 03 21 */	bl gfxprint_color
/* 803AAE84  7F E3 FB 78 */	mr r3, r31
/* 803AAE88  38 80 00 03 */	li r4, 3
/* 803AAE8C  38 A0 00 07 */	li r5, 7
/* 803AAE90  4B CB 03 81 */	bl gfxprint_locate8x8
/* 803AAE94  3C 60 81 16 */	lis r3, mFI_now_bg_num@ha /* 0x81167CFC@ha */
/* 803AAE98  3C 80 80 65 */	lis r4, lit_2896@ha /* 0x80654038@ha */
/* 803AAE9C  38 A3 7C FC */	addi r5, r3, mFI_now_bg_num@l /* 0x81167CFC@l */
/* 803AAEA0  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AAEA4  7F E3 FB 78 */	mr r3, r31
/* 803AAEA8  38 84 40 38 */	addi r4, r4, lit_2896@l /* 0x80654038@l */
/* 803AAEAC  4C C6 31 82 */	crclr 6
/* 803AAEB0  4B CB 0A 6D */	bl gfxprint_printf
/* 803AAEB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AAEB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AAEBC  7C 08 03 A6 */	mtlr r0
/* 803AAEC0  38 21 00 10 */	addi r1, r1, 0x10
/* 803AAEC4  4E 80 00 20 */	blr 
