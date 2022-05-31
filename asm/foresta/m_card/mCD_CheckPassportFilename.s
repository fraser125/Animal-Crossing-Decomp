lbl_803FACDC:
/* 803FACDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FACE0  7C 08 02 A6 */	mflr r0
/* 803FACE4  3C 80 80 66 */	lis r4, l_mCD_player_file_name@ha /* 0x8065E6C8@ha */
/* 803FACE8  38 A0 00 12 */	li r5, 0x12
/* 803FACEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FACF0  38 84 E6 C8 */	addi r4, r4, l_mCD_player_file_name@l /* 0x8065E6C8@l */
/* 803FACF4  4B FF FF 1D */	bl mCD_CheckFilename
/* 803FACF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FACFC  7C 08 03 A6 */	mtlr r0
/* 803FAD00  38 21 00 10 */	addi r1, r1, 0x10
/* 803FAD04  4E 80 00 20 */	blr 
