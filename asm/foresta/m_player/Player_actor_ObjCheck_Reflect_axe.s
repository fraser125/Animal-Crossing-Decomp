lbl_804F1074:
/* 804F1074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F1078  7C 08 02 A6 */	mflr r0
/* 804F107C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F1080  4B FE 5A B5 */	bl Player_actor_Excute_Corect_forStand
/* 804F1084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F1088  7C 08 03 A6 */	mtlr r0
/* 804F108C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F1090  4E 80 00 20 */	blr 
