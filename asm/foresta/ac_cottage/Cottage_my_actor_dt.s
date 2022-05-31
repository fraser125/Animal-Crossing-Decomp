lbl_80416AFC:
/* 80416AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416B00  7C 08 02 A6 */	mflr r0
/* 80416B04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416B08  4B FF FF D1 */	bl Cottage_actor_dt
/* 80416B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416B10  7C 08 03 A6 */	mtlr r0
/* 80416B14  38 21 00 10 */	addi r1, r1, 0x10
/* 80416B18  4E 80 00 20 */	blr 
