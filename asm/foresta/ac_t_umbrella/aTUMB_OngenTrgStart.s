lbl_804A9E8C:
/* 804A9E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A9E90  7C 08 02 A6 */	mflr r0
/* 804A9E94  2C 04 00 02 */	cmpwi r4, 2
/* 804A9E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A9E9C  41 82 00 20 */	beq lbl_804A9EBC
/* 804A9EA0  40 80 00 24 */	bge lbl_804A9EC4
/* 804A9EA4  2C 04 00 01 */	cmpwi r4, 1
/* 804A9EA8  40 80 00 08 */	bge lbl_804A9EB0
/* 804A9EAC  48 00 00 18 */	b lbl_804A9EC4
lbl_804A9EB0:
/* 804A9EB0  38 80 01 39 */	li r4, 0x139
/* 804A9EB4  4B FF FF AD */	bl aTUMB_OngenTrgStart_sub
/* 804A9EB8  48 00 00 0C */	b lbl_804A9EC4
lbl_804A9EBC:
/* 804A9EBC  38 80 01 0E */	li r4, 0x10e
/* 804A9EC0  4B FF FF A1 */	bl aTUMB_OngenTrgStart_sub
lbl_804A9EC4:
/* 804A9EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A9EC8  7C 08 03 A6 */	mtlr r0
/* 804A9ECC  38 21 00 10 */	addi r1, r1, 0x10
/* 804A9ED0  4E 80 00 20 */	blr 
