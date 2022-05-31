lbl_804FD004:
/* 804FD004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FD008  7C 08 02 A6 */	mflr r0
/* 804FD00C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FD010  4B FD 95 79 */	bl Player_actor_CulcAnimation_Base2
/* 804FD014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FD018  7C 08 03 A6 */	mtlr r0
/* 804FD01C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FD020  4E 80 00 20 */	blr 
