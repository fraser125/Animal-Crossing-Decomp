lbl_8050651C:
/* 8050651C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80506520  7C 08 02 A6 */	mflr r0
/* 80506524  3C 80 80 64 */	lis r4, lit_1011@ha /* 0x806469F0@ha */
/* 80506528  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050652C  C0 24 69 F0 */	lfs f1, lit_1011@l(r4)  /* 0x806469F0@l */
/* 80506530  4B FC F4 0D */	bl Player_actor_Movement_Base_Braking_common
/* 80506534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80506538  7C 08 03 A6 */	mtlr r0
/* 8050653C  38 21 00 10 */	addi r1, r1, 0x10
/* 80506540  4E 80 00 20 */	blr 
