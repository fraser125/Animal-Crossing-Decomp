lbl_80378CBC:
/* 80378CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80378CC0  7C 08 02 A6 */	mflr r0
/* 80378CC4  38 80 00 0C */	li r4, 0xc
/* 80378CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80378CCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80378CD0  7C 7F 1B 78 */	mr r31, r3
/* 80378CD4  4B CE 43 95 */	bl bzero
/* 80378CD8  7F E3 FB 78 */	mr r3, r31
/* 80378CDC  4B FF FC B9 */	bl mBGMElem_default_set
/* 80378CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80378CE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80378CE8  7C 08 03 A6 */	mtlr r0
/* 80378CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80378CF0  4E 80 00 20 */	blr 
