lbl_80489CD8:
/* 80489CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80489CDC  7C 08 02 A6 */	mflr r0
/* 80489CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80489CE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80489CE8  3B E0 00 00 */	li r31, 0
/* 80489CEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80489CF0  7C 9E 23 78 */	mr r30, r4
/* 80489CF4  4B FF FF 4D */	bl aQMgr_actor_get_errand_next_idx
/* 80489CF8  2C 03 00 00 */	cmpwi r3, 0
/* 80489CFC  41 80 00 10 */	blt lbl_80489D0C
/* 80489D00  2C 03 00 05 */	cmpwi r3, 5
/* 80489D04  40 80 00 08 */	bge lbl_80489D0C
/* 80489D08  7F FE 18 AE */	lbzx r31, r30, r3
lbl_80489D0C:
/* 80489D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80489D10  7F E3 FB 78 */	mr r3, r31
/* 80489D14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80489D18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80489D1C  7C 08 03 A6 */	mtlr r0
/* 80489D20  38 21 00 10 */	addi r1, r1, 0x10
/* 80489D24  4E 80 00 20 */	blr 
