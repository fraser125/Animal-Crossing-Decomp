lbl_804FE65C:
/* 804FE65C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE660  7C 08 02 A6 */	mflr r0
/* 804FE664  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE668  38 81 00 08 */	addi r4, r1, 8
/* 804FE66C  4B FD 7F 1D */	bl Player_actor_CulcAnimation_Base2
/* 804FE670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE674  7C 08 03 A6 */	mtlr r0
/* 804FE678  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE67C  4E 80 00 20 */	blr 
