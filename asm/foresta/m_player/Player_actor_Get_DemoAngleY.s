lbl_804D80EC:
/* 804D80EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D80F0  7C 08 02 A6 */	mflr r0
/* 804D80F4  38 60 00 00 */	li r3, 0
/* 804D80F8  38 80 00 06 */	li r4, 6
/* 804D80FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D8100  4B EC 03 7D */	bl mDemo_Get_OrderValue
/* 804D8104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D8108  7C 63 07 34 */	extsh r3, r3
/* 804D810C  7C 08 03 A6 */	mtlr r0
/* 804D8110  38 21 00 10 */	addi r1, r1, 0x10
/* 804D8114  4E 80 00 20 */	blr 
