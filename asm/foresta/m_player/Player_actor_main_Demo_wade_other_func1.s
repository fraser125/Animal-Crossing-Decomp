lbl_804DFEF8:
/* 804DFEF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFEFC  7C 08 02 A6 */	mflr r0
/* 804DFF00  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFF04  C0 23 0D 34 */	lfs f1, 0xd34(r3)
/* 804DFF08  4B FF FF 55 */	bl Player_actor_ChangeFace_for_Wade
/* 804DFF0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFF10  7C 08 03 A6 */	mtlr r0
/* 804DFF14  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFF18  4E 80 00 20 */	blr 
