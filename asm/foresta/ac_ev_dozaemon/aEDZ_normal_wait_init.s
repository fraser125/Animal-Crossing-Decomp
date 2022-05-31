lbl_8051EC9C:
/* 8051EC9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051ECA0  7C 08 02 A6 */	mflr r0
/* 8051ECA4  38 80 00 04 */	li r4, 4
/* 8051ECA8  38 A0 00 00 */	li r5, 0
/* 8051ECAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051ECB0  38 C0 00 00 */	li r6, 0
/* 8051ECB4  38 E0 00 00 */	li r7, 0
/* 8051ECB8  39 00 00 00 */	li r8, 0
/* 8051ECBC  39 20 00 00 */	li r9, 0
/* 8051ECC0  4B FF F6 ED */	bl aEDZ_set_request_act
/* 8051ECC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051ECC8  7C 08 03 A6 */	mtlr r0
/* 8051ECCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8051ECD0  4E 80 00 20 */	blr 
