lbl_8053FD3C:
/* 8053FD3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FD40  7C 08 02 A6 */	mflr r0
/* 8053FD44  38 80 00 11 */	li r4, 0x11
/* 8053FD48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FD4C  38 00 00 00 */	li r0, 0
/* 8053FD50  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 8053FD54  4B FF DF FD */	bl aNPC_setupAction
/* 8053FD58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FD5C  7C 08 03 A6 */	mtlr r0
/* 8053FD60  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FD64  4E 80 00 20 */	blr 
