lbl_80394AF0:
/* 80394AF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80394AF4  7C 08 02 A6 */	mflr r0
/* 80394AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80394AFC  38 00 00 00 */	li r0, 0
/* 80394B00  B0 04 00 00 */	sth r0, 0(r4)
/* 80394B04  48 00 00 19 */	bl CollisionCheck_clear
/* 80394B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80394B0C  7C 08 03 A6 */	mtlr r0
/* 80394B10  38 21 00 10 */	addi r1, r1, 0x10
/* 80394B14  4E 80 00 20 */	blr 
