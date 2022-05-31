lbl_80531EBC:
/* 80531EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80531EC0  7C 08 02 A6 */	mflr r0
/* 80531EC4  38 80 00 04 */	li r4, 4
/* 80531EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80531ECC  38 00 0E 10 */	li r0, 0xe10
/* 80531ED0  98 83 07 F6 */	stb r4, 0x7f6(r3)
/* 80531ED4  B0 03 07 FA */	sth r0, 0x7fa(r3)
/* 80531ED8  4B FF FD B1 */	bl aNPC_act_chase_insect_chg_step
/* 80531EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80531EE0  7C 08 03 A6 */	mtlr r0
/* 80531EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80531EE8  4E 80 00 20 */	blr 
