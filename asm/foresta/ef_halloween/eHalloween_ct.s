lbl_8060D3EC:
/* 8060D3EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060D3F0  7C 08 02 A6 */	mflr r0
/* 8060D3F4  7C 65 1B 78 */	mr r5, r3
/* 8060D3F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060D3FC  38 00 00 28 */	li r0, 0x28
/* 8060D400  38 85 00 10 */	addi r4, r5, 0x10
/* 8060D404  B0 03 00 00 */	sth r0, 0(r3)
/* 8060D408  38 00 00 00 */	li r0, 0
/* 8060D40C  38 60 01 07 */	li r3, 0x107
/* 8060D410  B0 05 00 4C */	sth r0, 0x4c(r5)
/* 8060D414  48 02 0B 95 */	bl sAdo_OngenTrgStart
/* 8060D418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060D41C  7C 08 03 A6 */	mtlr r0
/* 8060D420  38 21 00 10 */	addi r1, r1, 0x10
/* 8060D424  4E 80 00 20 */	blr 
