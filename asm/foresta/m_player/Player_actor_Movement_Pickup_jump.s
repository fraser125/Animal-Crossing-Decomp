lbl_804EDCFC:
/* 804EDCFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EDD00  7C 08 02 A6 */	mflr r0
/* 804EDD04  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EDD08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EDD0C  7C 7F 1B 78 */	mr r31, r3
/* 804EDD10  38 9F 0D 18 */	addi r4, r31, 0xd18
/* 804EDD14  4B FF FE F1 */	bl Player_actor_Movement_Pickup_jump_common
/* 804EDD18  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804EDD1C  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804EDD20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EDD24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EDD28  7C 08 03 A6 */	mtlr r0
/* 804EDD2C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EDD30  4E 80 00 20 */	blr 
