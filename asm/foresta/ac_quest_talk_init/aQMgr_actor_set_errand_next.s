lbl_80489C88:
/* 80489C88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80489C8C  7C 08 02 A6 */	mflr r0
/* 80489C90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80489C94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80489C98  7C BF 2B 78 */	mr r31, r5
/* 80489C9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80489CA0  7C 7E 1B 78 */	mr r30, r3
/* 80489CA4  7C 83 23 78 */	mr r3, r4
/* 80489CA8  4B FF FF 99 */	bl aQMgr_actor_get_errand_next_idx
/* 80489CAC  2C 03 00 00 */	cmpwi r3, 0
/* 80489CB0  41 80 00 10 */	blt lbl_80489CC0
/* 80489CB4  2C 03 00 05 */	cmpwi r3, 5
/* 80489CB8  40 80 00 08 */	bge lbl_80489CC0
/* 80489CBC  7F FE 19 AE */	stbx r31, r30, r3
lbl_80489CC0:
/* 80489CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80489CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80489CC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80489CCC  7C 08 03 A6 */	mtlr r0
/* 80489CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80489CD4  4E 80 00 20 */	blr 
