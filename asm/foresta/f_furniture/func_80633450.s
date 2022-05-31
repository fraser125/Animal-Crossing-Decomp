lbl_80633450:
/* 80633450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80633454  7C 08 02 A6 */	mflr r0
/* 80633458  38 80 00 20 */	li r4, 0x20
/* 8063345C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80633460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80633464  7C 7F 1B 78 */	mr r31, r3
/* 80633468  38 60 00 20 */	li r3, 0x20
/* 8063346C  4B D8 8F BD */	bl func_803BC428
/* 80633470  90 7F 08 50 */	stw r3, 0x850(r31)
/* 80633474  3C 60 80 6D */	lis r3, int_nog_museum_off_pal@ha /* 0x806D7C80@ha */
/* 80633478  3C A0 80 6D */	lis r5, int_nog_museum_on_pal@ha /* 0x806D7CA0@ha */
/* 8063347C  7F E6 FB 78 */	mr r6, r31
/* 80633480  38 83 7C 80 */	addi r4, r3, int_nog_museum_off_pal@l /* 0x806D7C80@l */
/* 80633484  80 7F 08 50 */	lwz r3, 0x850(r31)
/* 80633488  38 A5 7C A0 */	addi r5, r5, int_nog_museum_on_pal@l /* 0x806D7CA0@l */
/* 8063348C  4B FF B6 31 */	bl fFTR_MorphHousepaletteCt
/* 80633490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80633494  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80633498  7C 08 03 A6 */	mtlr r0
/* 8063349C  38 21 00 10 */	addi r1, r1, 0x10
/* 806334A0  4E 80 00 20 */	blr 
