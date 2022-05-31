lbl_804E92F4:
/* 804E92F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E92F8  7C 08 02 A6 */	mflr r0
/* 804E92FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9300  4B EB 0F A1 */	bl mDemo_End
/* 804E9304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9308  7C 08 03 A6 */	mtlr r0
/* 804E930C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9310  4E 80 00 20 */	blr 
