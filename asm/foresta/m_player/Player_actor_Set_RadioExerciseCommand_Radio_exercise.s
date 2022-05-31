lbl_80506C64:
/* 80506C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80506C68  7C 08 02 A6 */	mflr r0
/* 80506C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80506C70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80506C74  7C 7F 1B 78 */	mr r31, r3
/* 80506C78  80 A3 0D 1C */	lwz r5, 0xd1c(r3)
/* 80506C7C  4B FD 80 E9 */	bl Player_actor_Set_RadioExerciseCommand
/* 80506C80  38 00 00 00 */	li r0, 0
/* 80506C84  90 1F 0D 1C */	stw r0, 0xd1c(r31)
/* 80506C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80506C8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80506C90  7C 08 03 A6 */	mtlr r0
/* 80506C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80506C98  4E 80 00 20 */	blr 
