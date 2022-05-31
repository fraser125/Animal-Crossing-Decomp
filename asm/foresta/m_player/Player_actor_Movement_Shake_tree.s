lbl_80500C04:
/* 80500C04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80500C08  7C 08 02 A6 */	mflr r0
/* 80500C0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500C10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80500C14  7C 7F 1B 78 */	mr r31, r3
/* 80500C18  38 9F 0D 18 */	addi r4, r31, 0xd18
/* 80500C1C  4B FE EF 41 */	bl Player_actor_Movement_axe_common
/* 80500C20  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80500C24  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80500C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80500C2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80500C30  7C 08 03 A6 */	mtlr r0
/* 80500C34  38 21 00 10 */	addi r1, r1, 0x10
/* 80500C38  4E 80 00 20 */	blr 
