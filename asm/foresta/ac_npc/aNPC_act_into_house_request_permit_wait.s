lbl_805336BC:
/* 805336BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805336C0  7C 08 02 A6 */	mflr r0
/* 805336C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805336C8  4B FF FE 25 */	bl aNPC_act_into_house_chg_into_step
/* 805336CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805336D0  7C 08 03 A6 */	mtlr r0
/* 805336D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805336D8  4E 80 00 20 */	blr 
