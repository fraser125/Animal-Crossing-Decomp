lbl_80504CFC:
/* 80504CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504D00  7C 08 02 A6 */	mflr r0
/* 80504D04  3C 80 80 64 */	lis r4, lit_1011@ha /* 0x806469F0@ha */
/* 80504D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504D0C  C0 24 69 F0 */	lfs f1, lit_1011@l(r4)  /* 0x806469F0@l */
/* 80504D10  4B FD 0C 2D */	bl Player_actor_Movement_Base_Braking_common
/* 80504D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80504D18  7C 08 03 A6 */	mtlr r0
/* 80504D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80504D20  4E 80 00 20 */	blr 
