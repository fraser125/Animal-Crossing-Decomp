lbl_803A2100:
/* 803A2100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A2104  7C 08 02 A6 */	mflr r0
/* 803A2108  3C 80 80 65 */	lis r4, data_806534A0@ha /* 0x806534A0@ha */
/* 803A210C  38 A0 00 32 */	li r5, 0x32
/* 803A2110  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A2114  38 C0 00 96 */	li r6, 0x96
/* 803A2118  38 E0 00 FF */	li r7, 0xff
/* 803A211C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A2120  3B E4 34 A0 */	addi r31, r4, data_806534A0@l /* 0x806534A0@l */
/* 803A2124  38 80 00 F0 */	li r4, 0xf0
/* 803A2128  93 C1 00 08 */	stw r30, 8(r1)
/* 803A212C  7C 7E 1B 78 */	mr r30, r3
/* 803A2130  4B CB 90 71 */	bl gfxprint_color
/* 803A2134  7F C3 F3 78 */	mr r3, r30
/* 803A2138  38 80 00 03 */	li r4, 3
/* 803A213C  38 A0 00 0E */	li r5, 0xe
/* 803A2140  4B CB 90 D1 */	bl gfxprint_locate8x8
/* 803A2144  38 FF 00 18 */	addi r7, r31, 0x18
/* 803A2148  7F C3 F3 78 */	mr r3, r30
/* 803A214C  80 A7 00 08 */	lwz r5, 8(r7)
/* 803A2150  38 9F 00 54 */	addi r4, r31, 0x54
/* 803A2154  80 C7 00 0C */	lwz r6, 0xc(r7)
/* 803A2158  80 E7 00 10 */	lwz r7, 0x10(r7)
/* 803A215C  4C C6 31 82 */	crclr 6
/* 803A2160  4B CB 97 BD */	bl gfxprint_printf
/* 803A2164  7F C3 F3 78 */	mr r3, r30
/* 803A2168  38 80 00 03 */	li r4, 3
/* 803A216C  38 A0 00 0F */	li r5, 0xf
/* 803A2170  4B CB 90 A1 */	bl gfxprint_locate8x8
/* 803A2174  3C 60 81 16 */	lis r3, data_811678C8@ha /* 0x811678C8@ha */
/* 803A2178  38 9F 00 18 */	addi r4, r31, 0x18
/* 803A217C  80 A3 78 C8 */	lwz r5, data_811678C8@l(r3)  /* 0x811678C8@l */
/* 803A2180  7F C3 F3 78 */	mr r3, r30
/* 803A2184  80 E4 00 04 */	lwz r7, 4(r4)
/* 803A2188  38 9F 00 64 */	addi r4, r31, 0x64
/* 803A218C  80 DF 00 18 */	lwz r6, 0x18(r31)
/* 803A2190  4C C6 31 82 */	crclr 6
/* 803A2194  4B CB 97 89 */	bl gfxprint_printf
/* 803A2198  7F C3 F3 78 */	mr r3, r30
/* 803A219C  38 80 00 03 */	li r4, 3
/* 803A21A0  38 A0 00 10 */	li r5, 0x10
/* 803A21A4  4B CB 90 6D */	bl gfxprint_locate8x8
/* 803A21A8  3C 80 81 16 */	lis r4, l_field_assessment_rank@ha /* 0x811678CC@ha */
/* 803A21AC  7F C3 F3 78 */	mr r3, r30
/* 803A21B0  38 A4 78 CC */	addi r5, r4, l_field_assessment_rank@l /* 0x811678CC@l */
/* 803A21B4  38 9F 00 74 */	addi r4, r31, 0x74
/* 803A21B8  80 A5 00 00 */	lwz r5, 0(r5)
/* 803A21BC  4C C6 31 82 */	crclr 6
/* 803A21C0  4B CB 97 5D */	bl gfxprint_printf
/* 803A21C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A21C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A21CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A21D0  7C 08 03 A6 */	mtlr r0
/* 803A21D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803A21D8  4E 80 00 20 */	blr 
