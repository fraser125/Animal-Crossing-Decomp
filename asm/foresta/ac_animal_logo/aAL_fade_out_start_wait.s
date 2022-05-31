lbl_80410A0C:
/* 80410A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80410A10  7C 08 02 A6 */	mflr r0
/* 80410A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80410A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80410A1C  7C 9F 23 78 */	mr r31, r4
/* 80410A20  93 C1 00 08 */	stw r30, 8(r1)
/* 80410A24  7C 7E 1B 78 */	mr r30, r3
/* 80410A28  80 03 05 64 */	lwz r0, 0x564(r3)
/* 80410A2C  2C 00 00 00 */	cmpwi r0, 0
/* 80410A30  41 81 00 18 */	bgt lbl_80410A48
/* 80410A34  4B FF FB 19 */	bl aAL_title_game_data_init_start_select
/* 80410A38  7F C3 F3 78 */	mr r3, r30
/* 80410A3C  7F E4 FB 78 */	mr r4, r31
/* 80410A40  38 A0 00 05 */	li r5, 5
/* 80410A44  48 00 02 2D */	bl aAL_setupAction
lbl_80410A48:
/* 80410A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80410A4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80410A50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80410A54  7C 08 03 A6 */	mtlr r0
/* 80410A58  38 21 00 10 */	addi r1, r1, 0x10
/* 80410A5C  4E 80 00 20 */	blr 
