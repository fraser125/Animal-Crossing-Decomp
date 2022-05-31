lbl_80585BA0:
/* 80585BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585BA4  7C 08 02 A6 */	mflr r0
/* 80585BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585BAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80585BB0  7C 7F 1B 78 */	mr r31, r3
/* 80585BB4  4B FF FE D5 */	bl aNSC_sell_answer0_init
/* 80585BB8  38 00 00 00 */	li r0, 0
/* 80585BBC  B0 1F 09 B4 */	sth r0, 0x9b4(r31)
/* 80585BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585BC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80585BC8  7C 08 03 A6 */	mtlr r0
/* 80585BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80585BD0  4E 80 00 20 */	blr 
