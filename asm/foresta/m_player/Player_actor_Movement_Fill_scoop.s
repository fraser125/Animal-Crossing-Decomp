lbl_804F7DE8:
/* 804F7DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F7DEC  7C 08 02 A6 */	mflr r0
/* 804F7DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F7DF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F7DF8  7C 7F 1B 78 */	mr r31, r3
/* 804F7DFC  38 9F 0D 18 */	addi r4, r31, 0xd18
/* 804F7E00  4B FF 7D 5D */	bl Player_actor_Movement_axe_common
/* 804F7E04  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804F7E08  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804F7E0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F7E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F7E14  7C 08 03 A6 */	mtlr r0
/* 804F7E18  38 21 00 10 */	addi r1, r1, 0x10
/* 804F7E1C  4E 80 00 20 */	blr 
