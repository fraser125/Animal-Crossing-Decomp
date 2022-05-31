lbl_803E5998:
/* 803E5998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E599C  7C 08 02 A6 */	mflr r0
/* 803E59A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E59A4  4B FF FF 61 */	bl fade_rgba8888_draw
/* 803E59A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E59AC  7C 08 03 A6 */	mtlr r0
/* 803E59B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803E59B4  4E 80 00 20 */	blr 
