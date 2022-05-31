lbl_80375CE0:
/* 80375CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80375CE4  7C 08 02 A6 */	mflr r0
/* 80375CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80375CEC  54 A0 18 38 */	slwi r0, r5, 3
/* 80375CF0  7C 63 02 14 */	add r3, r3, r0
/* 80375CF4  80 63 00 08 */	lwz r3, 8(r3)
/* 80375CF8  28 03 00 00 */	cmplwi r3, 0
/* 80375CFC  41 82 00 0C */	beq lbl_80375D08
/* 80375D00  4B FF FF BD */	bl Actor_info_name_search_sub
/* 80375D04  48 00 00 08 */	b lbl_80375D0C
lbl_80375D08:
/* 80375D08  38 60 00 00 */	li r3, 0
lbl_80375D0C:
/* 80375D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80375D10  7C 08 03 A6 */	mtlr r0
/* 80375D14  38 21 00 10 */	addi r1, r1, 0x10
/* 80375D18  4E 80 00 20 */	blr 
