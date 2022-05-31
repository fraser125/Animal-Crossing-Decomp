lbl_804F438C:
/* 804F438C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F4390  7C 08 02 A6 */	mflr r0
/* 804F4394  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4398  4B FE 39 01 */	bl Player_actor_BGcheck_common_type1
/* 804F439C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F43A0  7C 08 03 A6 */	mtlr r0
/* 804F43A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F43A8  4E 80 00 20 */	blr 
