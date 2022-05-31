lbl_80633698:
/* 80633698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063369C  7C 08 02 A6 */	mflr r0
/* 806336A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806336A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806336A8  93 C1 00 08 */	stw r30, 8(r1)
/* 806336AC  7C 7E 1B 78 */	mr r30, r3
/* 806336B0  4B FF FF 25 */	bl func_806335D4
/* 806336B4  7C 7F 1B 78 */	mr r31, r3
/* 806336B8  38 60 00 20 */	li r3, 0x20
/* 806336BC  38 80 00 20 */	li r4, 0x20
/* 806336C0  4B D8 8D 69 */	bl func_803BC428
/* 806336C4  90 7E 08 50 */	stw r3, 0x850(r30)
/* 806336C8  3C 60 80 6D */	lis r3, data_806D4C40@ha /* 0x806D4C40@ha */
/* 806336CC  3C 80 80 6D */	lis r4, fFTR_myhome_on_pal_table@ha /* 0x806D4DC0@ha */
/* 806336D0  57 E7 28 34 */	slwi r7, r31, 5
/* 806336D4  38 A3 4C 40 */	addi r5, r3, data_806D4C40@l /* 0x806D4C40@l */
/* 806336D8  80 7E 08 50 */	lwz r3, 0x850(r30)
/* 806336DC  38 04 4D C0 */	addi r0, r4, fFTR_myhome_on_pal_table@l /* 0x806D4DC0@l */
/* 806336E0  7F C6 F3 78 */	mr r6, r30
/* 806336E4  7C 85 3A 14 */	add r4, r5, r7
/* 806336E8  7C A0 3A 14 */	add r5, r0, r7
/* 806336EC  4B FF B3 D1 */	bl fFTR_MorphHousepaletteCt
/* 806336F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806336F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806336F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 806336FC  7C 08 03 A6 */	mtlr r0
/* 80633700  38 21 00 10 */	addi r1, r1, 0x10
/* 80633704  4E 80 00 20 */	blr 
