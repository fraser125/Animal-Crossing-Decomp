lbl_804EC7E4:
/* 804EC7E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EC7E8  7C 08 02 A6 */	mflr r0
/* 804EC7EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EC7F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EC7F4  7C 9F 23 78 */	mr r31, r4
/* 804EC7F8  93 C1 00 08 */	stw r30, 8(r1)
/* 804EC7FC  7C 7E 1B 78 */	mr r30, r3
/* 804EC800  4B FF FD 7D */	bl Player_actor_Movement_Wait_bed
/* 804EC804  7F C3 F3 78 */	mr r3, r30
/* 804EC808  7F E4 FB 78 */	mr r4, r31
/* 804EC80C  4B FE B6 F1 */	bl Player_actor_Reinput_force_position_angle
/* 804EC810  7F C3 F3 78 */	mr r3, r30
/* 804EC814  4B FF FD 8D */	bl Player_actor_CulcAnimation_Wait_bed
/* 804EC818  7F C3 F3 78 */	mr r3, r30
/* 804EC81C  7F E4 FB 78 */	mr r4, r31
/* 804EC820  4B FF 74 D9 */	bl Player_actor_Item_main
/* 804EC824  7F C3 F3 78 */	mr r3, r30
/* 804EC828  7F E4 FB 78 */	mr r4, r31
/* 804EC82C  4B FF FD 99 */	bl Player_actor_request_proc_index_fromWait_bed
/* 804EC830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EC834  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EC838  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EC83C  7C 08 03 A6 */	mtlr r0
/* 804EC840  38 21 00 10 */	addi r1, r1, 0x10
/* 804EC844  4E 80 00 20 */	blr 
