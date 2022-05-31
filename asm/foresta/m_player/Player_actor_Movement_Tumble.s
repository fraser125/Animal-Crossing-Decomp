lbl_804E7D4C:
/* 804E7D4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E7D50  7C 08 02 A6 */	mflr r0
/* 804E7D54  3C 80 80 65 */	lis r4, lit_8192@ha /* 0x80648434@ha */
/* 804E7D58  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E7D5C  C0 24 84 34 */	lfs f1, lit_8192@l(r4)  /* 0x80648434@l */
/* 804E7D60  4B FE DB DD */	bl Player_actor_Movement_Base_Braking_common
/* 804E7D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E7D68  7C 08 03 A6 */	mtlr r0
/* 804E7D6C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E7D70  4E 80 00 20 */	blr 
