lbl_804E5DD8:
/* 804E5DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5DDC  7C 08 02 A6 */	mflr r0
/* 804E5DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E5DE8  7C 7F 1B 78 */	mr r31, r3
/* 804E5DEC  80 A3 0D 18 */	lwz r5, 0xd18(r3)
/* 804E5DF0  4B FF 8F 75 */	bl Player_actor_Set_RadioExerciseCommand
/* 804E5DF4  38 00 00 00 */	li r0, 0
/* 804E5DF8  90 1F 0D 18 */	stw r0, 0xd18(r31)
/* 804E5DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5E00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E5E04  7C 08 03 A6 */	mtlr r0
/* 804E5E08  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5E0C  4E 80 00 20 */	blr 
