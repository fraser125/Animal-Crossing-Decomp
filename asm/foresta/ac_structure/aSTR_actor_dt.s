lbl_805BC960:
/* 805BC960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BC964  7C 08 02 A6 */	mflr r0
/* 805BC968  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BC96C  48 00 05 8D */	bl aSTR_free_clip_area
/* 805BC970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BC974  7C 08 03 A6 */	mtlr r0
/* 805BC978  38 21 00 10 */	addi r1, r1, 0x10
/* 805BC97C  4E 80 00 20 */	blr 
