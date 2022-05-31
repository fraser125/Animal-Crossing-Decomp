lbl_80634EDC:
/* 80634EDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80634EE0  7C 08 02 A6 */	mflr r0
/* 80634EE4  38 80 00 20 */	li r4, 0x20
/* 80634EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80634EEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80634EF0  7C 7F 1B 78 */	mr r31, r3
/* 80634EF4  38 60 00 20 */	li r3, 0x20
/* 80634EF8  4B D8 75 31 */	bl func_803BC428
/* 80634EFC  90 7F 08 50 */	stw r3, 0x850(r31)
/* 80634F00  3C 60 80 6E */	lis r3, int_nog_uranai_off_pal@ha /* 0x806D8800@ha */
/* 80634F04  3C A0 80 6E */	lis r5, int_nog_uranai_on_pal@ha /* 0x806D8820@ha */
/* 80634F08  7F E6 FB 78 */	mr r6, r31
/* 80634F0C  38 83 88 00 */	addi r4, r3, int_nog_uranai_off_pal@l /* 0x806D8800@l */
/* 80634F10  80 7F 08 50 */	lwz r3, 0x850(r31)
/* 80634F14  38 A5 88 20 */	addi r5, r5, int_nog_uranai_on_pal@l /* 0x806D8820@l */
/* 80634F18  4B FF 9B A5 */	bl fFTR_MorphHousepaletteCt
/* 80634F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80634F20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80634F24  7C 08 03 A6 */	mtlr r0
/* 80634F28  38 21 00 10 */	addi r1, r1, 0x10
/* 80634F2C  4E 80 00 20 */	blr 
