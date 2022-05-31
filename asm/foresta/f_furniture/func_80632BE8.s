lbl_80632BE8:
/* 80632BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80632BEC  7C 08 02 A6 */	mflr r0
/* 80632BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80632BF4  88 03 01 2C */	lbz r0, 0x12c(r3)
/* 80632BF8  28 00 00 00 */	cmplwi r0, 0
/* 80632BFC  41 82 00 14 */	beq lbl_80632C10
/* 80632C00  38 83 00 08 */	addi r4, r3, 8
/* 80632C04  38 60 00 16 */	li r3, 0x16
/* 80632C08  4B FF B3 A1 */	bl sAdo_OngenTrgStart
/* 80632C0C  48 00 00 10 */	b lbl_80632C1C
lbl_80632C10:
/* 80632C10  38 83 00 08 */	addi r4, r3, 8
/* 80632C14  38 60 00 17 */	li r3, 0x17
/* 80632C18  4B FF B3 91 */	bl sAdo_OngenTrgStart
lbl_80632C1C:
/* 80632C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80632C20  7C 08 03 A6 */	mtlr r0
/* 80632C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80632C28  4E 80 00 20 */	blr 
