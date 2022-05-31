lbl_806332CC:
/* 806332CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806332D0  7C 08 02 A6 */	mflr r0
/* 806332D4  38 80 00 20 */	li r4, 0x20
/* 806332D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806332DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806332E0  7C 7F 1B 78 */	mr r31, r3
/* 806332E4  38 60 00 20 */	li r3, 0x20
/* 806332E8  4B D8 91 41 */	bl func_803BC428
/* 806332EC  90 7F 08 50 */	stw r3, 0x850(r31)
/* 806332F0  3C 60 80 6D */	lis r3, int_nog_kouban_off_pal@ha /* 0x806D7AA0@ha */
/* 806332F4  3C A0 80 6D */	lis r5, int_nog_kouban_on_pal@ha /* 0x806D7A80@ha */
/* 806332F8  7F E6 FB 78 */	mr r6, r31
/* 806332FC  38 83 7A A0 */	addi r4, r3, int_nog_kouban_off_pal@l /* 0x806D7AA0@l */
/* 80633300  80 7F 08 50 */	lwz r3, 0x850(r31)
/* 80633304  38 A5 7A 80 */	addi r5, r5, int_nog_kouban_on_pal@l /* 0x806D7A80@l */
/* 80633308  4B FF B7 B5 */	bl fFTR_MorphHousepaletteCt
/* 8063330C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80633310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80633314  7C 08 03 A6 */	mtlr r0
/* 80633318  38 21 00 10 */	addi r1, r1, 0x10
/* 8063331C  4E 80 00 20 */	blr 
