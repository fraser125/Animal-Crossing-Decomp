lbl_80506C9C:
/* 80506C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80506CA0  7C 08 02 A6 */	mflr r0
/* 80506CA4  3C 80 80 64 */	lis r4, lit_1011@ha /* 0x806469F0@ha */
/* 80506CA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80506CAC  C0 24 69 F0 */	lfs f1, lit_1011@l(r4)  /* 0x806469F0@l */
/* 80506CB0  4B FC EC 8D */	bl Player_actor_Movement_Base_Braking_common
/* 80506CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80506CB8  7C 08 03 A6 */	mtlr r0
/* 80506CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80506CC0  4E 80 00 20 */	blr 
