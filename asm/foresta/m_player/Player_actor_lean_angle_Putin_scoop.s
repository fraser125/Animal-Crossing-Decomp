lbl_804F99C0:
/* 804F99C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F99C4  7C 08 02 A6 */	mflr r0
/* 804F99C8  3C A0 80 65 */	lis r5, lit_13162@ha /* 0x80648554@ha */
/* 804F99CC  38 83 0D 18 */	addi r4, r3, 0xd18
/* 804F99D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F99D4  C0 25 85 54 */	lfs f1, lit_13162@l(r5)  /* 0x80648554@l */
/* 804F99D8  4B FF DF CD */	bl Player_actor_lean_angle_scoop_common
/* 804F99DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F99E0  7C 08 03 A6 */	mtlr r0
/* 804F99E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F99E8  4E 80 00 20 */	blr 
