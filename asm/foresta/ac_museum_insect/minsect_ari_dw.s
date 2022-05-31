lbl_8045B8C4:
/* 8045B8C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045B8C8  7C 08 02 A6 */	mflr r0
/* 8045B8CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045B8D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8045B8D4  4B C3 F6 01 */	bl func_8009AED4
/* 8045B8D8  3C 60 81 1D */	lis r3, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8045B8DC  7C 9D 23 78 */	mr r29, r4
/* 8045B8E0  38 63 DF D0 */	addi r3, r3, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8045B8E4  3B C0 00 00 */	li r30, 0
/* 8045B8E8  80 63 00 00 */	lwz r3, 0(r3)
/* 8045B8EC  3B E3 1C 0C */	addi r31, r3, 0x1c0c
lbl_8045B8F0:
/* 8045B8F0  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8045B8F4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8045B8F8  41 82 00 10 */	beq lbl_8045B908
/* 8045B8FC  7F E3 FB 78 */	mr r3, r31
/* 8045B900  7F A4 EB 78 */	mr r4, r29
/* 8045B904  4B FF FD B5 */	bl ari_alone_draw
lbl_8045B908:
/* 8045B908  3B DE 00 01 */	addi r30, r30, 1
/* 8045B90C  3B FF 00 94 */	addi r31, r31, 0x94
/* 8045B910  2C 1E 00 0F */	cmpwi r30, 0xf
/* 8045B914  41 80 FF DC */	blt lbl_8045B8F0
/* 8045B918  39 61 00 20 */	addi r11, r1, 0x20
/* 8045B91C  4B C3 F6 05 */	bl func_8009AF20
/* 8045B920  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045B924  7C 08 03 A6 */	mtlr r0
/* 8045B928  38 21 00 20 */	addi r1, r1, 0x20
/* 8045B92C  4E 80 00 20 */	blr 
