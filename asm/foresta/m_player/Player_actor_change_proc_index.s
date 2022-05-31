lbl_804D4378:
/* 804D4378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D437C  7C 08 02 A6 */	mflr r0
/* 804D4380  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D4388  7C 7F 1B 78 */	mr r31, r3
/* 804D438C  4B FF FE C9 */	bl Player_actor_change_main_index
/* 804D4390  90 7F 0D 00 */	stw r3, 0xd00(r31)
/* 804D4394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D439C  7C 08 03 A6 */	mtlr r0
/* 804D43A0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D43A4  4E 80 00 20 */	blr 
