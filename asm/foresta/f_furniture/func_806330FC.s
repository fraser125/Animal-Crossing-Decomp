lbl_806330FC:
/* 806330FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80633100  7C 08 02 A6 */	mflr r0
/* 80633104  38 80 00 20 */	li r4, 0x20
/* 80633108  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063310C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80633110  7C 7F 1B 78 */	mr r31, r3
/* 80633114  38 60 00 20 */	li r3, 0x20
/* 80633118  4B D8 93 11 */	bl func_803BC428
/* 8063311C  90 7F 08 50 */	stw r3, 0x850(r31)
/* 80633120  3C 60 80 6D */	lis r3, int_nog_kamakura_off_pal@ha /* 0x806D78C0@ha */
/* 80633124  3C A0 80 6D */	lis r5, int_nog_kamakura_on_pal@ha /* 0x806D78E0@ha */
/* 80633128  7F E6 FB 78 */	mr r6, r31
/* 8063312C  38 83 78 C0 */	addi r4, r3, int_nog_kamakura_off_pal@l /* 0x806D78C0@l */
/* 80633130  80 7F 08 50 */	lwz r3, 0x850(r31)
/* 80633134  38 A5 78 E0 */	addi r5, r5, int_nog_kamakura_on_pal@l /* 0x806D78E0@l */
/* 80633138  4B FF B9 85 */	bl fFTR_MorphHousepaletteCt
/* 8063313C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80633140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80633144  7C 08 03 A6 */	mtlr r0
/* 80633148  38 21 00 10 */	addi r1, r1, 0x10
/* 8063314C  4E 80 00 20 */	blr 
