lbl_806351E4:
/* 806351E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806351E8  7C 08 02 A6 */	mflr r0
/* 806351EC  38 80 00 20 */	li r4, 0x20
/* 806351F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806351F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806351F8  7C 7F 1B 78 */	mr r31, r3
/* 806351FC  38 60 00 20 */	li r3, 0x20
/* 80635200  4B D8 72 29 */	bl func_803BC428
/* 80635204  90 7F 08 50 */	stw r3, 0x850(r31)
/* 80635208  3C 60 80 6E */	lis r3, int_nog_yubin_off_pal@ha /* 0x806D8960@ha */
/* 8063520C  3C A0 80 6E */	lis r5, int_nog_yubin_on_pal@ha /* 0x806D8940@ha */
/* 80635210  7F E6 FB 78 */	mr r6, r31
/* 80635214  38 83 89 60 */	addi r4, r3, int_nog_yubin_off_pal@l /* 0x806D8960@l */
/* 80635218  80 7F 08 50 */	lwz r3, 0x850(r31)
/* 8063521C  38 A5 89 40 */	addi r5, r5, int_nog_yubin_on_pal@l /* 0x806D8940@l */
/* 80635220  4B FF 98 9D */	bl fFTR_MorphHousepaletteCt
/* 80635224  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80635228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063522C  7C 08 03 A6 */	mtlr r0
/* 80635230  38 21 00 10 */	addi r1, r1, 0x10
/* 80635234  4E 80 00 20 */	blr 
