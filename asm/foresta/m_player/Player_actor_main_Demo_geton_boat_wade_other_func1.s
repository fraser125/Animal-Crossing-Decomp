lbl_804DFF40:
/* 804DFF40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFF44  7C 08 02 A6 */	mflr r0
/* 804DFF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFF4C  C0 23 0D 34 */	lfs f1, 0xd34(r3)
/* 804DFF50  4B FF FF 0D */	bl Player_actor_ChangeFace_for_Wade
/* 804DFF54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFF58  7C 08 03 A6 */	mtlr r0
/* 804DFF5C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFF60  4E 80 00 20 */	blr 
