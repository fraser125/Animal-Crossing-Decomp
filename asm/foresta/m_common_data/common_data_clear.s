lbl_80395AE0:
/* 80395AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80395AE4  7C 08 02 A6 */	mflr r0
/* 80395AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80395AEC  4B FE F8 31 */	bl clip_clear
/* 80395AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80395AF4  7C 08 03 A6 */	mtlr r0
/* 80395AF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80395AFC  4E 80 00 20 */	blr 
