lbl_803AC6CC:
/* 803AC6CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AC6D0  7C 08 02 A6 */	mflr r0
/* 803AC6D4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803AC6D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AC6DC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803AC6E0  3C 84 00 02 */	addis r4, r4, 2
/* 803AC6E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AC6E8  7C 7F 1B 78 */	mr r31, r3
/* 803AC6EC  88 04 13 8E */	lbz r0, 0x138e(r4)
/* 803AC6F0  28 00 00 01 */	cmplwi r0, 1
/* 803AC6F4  40 82 00 3C */	bne lbl_803AC730
/* 803AC6F8  38 80 00 32 */	li r4, 0x32
/* 803AC6FC  38 A0 00 FA */	li r5, 0xfa
/* 803AC700  38 C0 00 64 */	li r6, 0x64
/* 803AC704  38 E0 00 FF */	li r7, 0xff
/* 803AC708  4B CA EA 99 */	bl gfxprint_color
/* 803AC70C  7F E3 FB 78 */	mr r3, r31
/* 803AC710  38 80 00 1D */	li r4, 0x1d
/* 803AC714  38 A0 00 03 */	li r5, 3
/* 803AC718  4B CA EA F9 */	bl gfxprint_locate8x8
/* 803AC71C  3C 80 80 65 */	lis r4, lit_509@ha /* 0x806540B8@ha */
/* 803AC720  7F E3 FB 78 */	mr r3, r31
/* 803AC724  38 84 40 B8 */	addi r4, r4, lit_509@l /* 0x806540B8@l */
/* 803AC728  4C C6 31 82 */	crclr 6
/* 803AC72C  4B CA F1 F1 */	bl gfxprint_printf
lbl_803AC730:
/* 803AC730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AC734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AC738  7C 08 03 A6 */	mtlr r0
/* 803AC73C  38 21 00 10 */	addi r1, r1, 0x10
/* 803AC740  4E 80 00 20 */	blr 
