lbl_804FDE44:
/* 804FDE44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FDE48  7C 08 02 A6 */	mflr r0
/* 804FDE4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FDE50  38 81 00 08 */	addi r4, r1, 8
/* 804FDE54  4B FD 87 35 */	bl Player_actor_CulcAnimation_Base2
/* 804FDE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FDE5C  7C 08 03 A6 */	mtlr r0
/* 804FDE60  38 21 00 10 */	addi r1, r1, 0x10
/* 804FDE64  4E 80 00 20 */	blr 
