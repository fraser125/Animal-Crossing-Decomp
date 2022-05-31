lbl_80534F88:
/* 80534F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80534F8C  7C 08 02 A6 */	mflr r0
/* 80534F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80534F94  88 A3 07 F5 */	lbz r5, 0x7f5(r3)
/* 80534F98  88 03 07 F8 */	lbz r0, 0x7f8(r3)
/* 80534F9C  7C 05 00 40 */	cmplw r5, r0
/* 80534FA0  40 82 00 08 */	bne lbl_80534FA8
/* 80534FA4  48 00 00 15 */	bl aNPC_act_react_tool_init_proc
lbl_80534FA8:
/* 80534FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80534FAC  7C 08 03 A6 */	mtlr r0
/* 80534FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80534FB4  4E 80 00 20 */	blr 
