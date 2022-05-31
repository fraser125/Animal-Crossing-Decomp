lbl_80524D80:
/* 80524D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80524D84  7C 08 02 A6 */	mflr r0
/* 80524D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80524D8C  88 03 09 AC */	lbz r0, 0x9ac(r3)
/* 80524D90  28 00 00 00 */	cmplwi r0, 0
/* 80524D94  40 82 00 1C */	bne lbl_80524DB0
/* 80524D98  3C A0 80 52 */	lis r5, aES2_set_norm_talk_info@ha /* 0x80524B70@ha */
/* 80524D9C  7C 64 1B 78 */	mr r4, r3
/* 80524DA0  38 A5 4B 70 */	addi r5, r5, aES2_set_norm_talk_info@l /* 0x80524B70@l */
/* 80524DA4  38 60 00 07 */	li r3, 7
/* 80524DA8  4B E7 53 B5 */	bl mDemo_Request
/* 80524DAC  48 00 00 0C */	b lbl_80524DB8
lbl_80524DB0:
/* 80524DB0  38 00 00 00 */	li r0, 0
/* 80524DB4  98 03 09 AC */	stb r0, 0x9ac(r3)
lbl_80524DB8:
/* 80524DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80524DBC  7C 08 03 A6 */	mtlr r0
/* 80524DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80524DC4  4E 80 00 20 */	blr 
