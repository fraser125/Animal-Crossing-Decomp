lbl_8053FE1C:
/* 8053FE1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FE20  7C 08 02 A6 */	mflr r0
/* 8053FE24  38 80 00 12 */	li r4, 0x12
/* 8053FE28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FE2C  38 00 00 00 */	li r0, 0
/* 8053FE30  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 8053FE34  98 03 07 51 */	stb r0, 0x751(r3)
/* 8053FE38  4B FF DF 19 */	bl aNPC_setupAction
/* 8053FE3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FE40  7C 08 03 A6 */	mtlr r0
/* 8053FE44  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FE48  4E 80 00 20 */	blr 
