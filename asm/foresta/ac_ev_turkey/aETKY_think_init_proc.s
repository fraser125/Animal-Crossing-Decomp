lbl_80593364:
/* 80593364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593368  7C 08 02 A6 */	mflr r0
/* 8059336C  3C 80 80 59 */	lis r4, aETKY_act_proc@ha /* 0x80593314@ha */
/* 80593370  90 01 00 14 */	stw r0, 0x14(r1)
/* 80593374  38 00 00 00 */	li r0, 0
/* 80593378  90 03 07 D8 */	stw r0, 0x7d8(r3)
/* 8059337C  38 04 33 14 */	addi r0, r4, aETKY_act_proc@l /* 0x80593314@l */
/* 80593380  90 03 08 04 */	stw r0, 0x804(r3)
/* 80593384  4B FF FF C5 */	bl aETKY_set_request_act
/* 80593388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059338C  7C 08 03 A6 */	mtlr r0
/* 80593390  38 21 00 10 */	addi r1, r1, 0x10
/* 80593394  4E 80 00 20 */	blr 
