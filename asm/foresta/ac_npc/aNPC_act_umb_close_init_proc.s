lbl_80533CA0:
/* 80533CA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80533CA4  7C 08 02 A6 */	mflr r0
/* 80533CA8  38 80 00 1F */	li r4, 0x1f
/* 80533CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533CB0  38 00 00 00 */	li r0, 0
/* 80533CB4  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 80533CB8  98 03 07 51 */	stb r0, 0x751(r3)
/* 80533CBC  4B FF C0 71 */	bl aNPC_setupAction
/* 80533CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80533CC4  7C 08 03 A6 */	mtlr r0
/* 80533CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80533CCC  4E 80 00 20 */	blr 
