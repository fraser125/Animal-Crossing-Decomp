lbl_805E5D48:
/* 805E5D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E5D4C  7C 08 02 A6 */	mflr r0
/* 805E5D50  38 80 00 14 */	li r4, 0x14
/* 805E5D54  38 A0 00 00 */	li r5, 0
/* 805E5D58  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E5D5C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E5D60  80 63 09 98 */	lwz r3, 0x998(r3)
/* 805E5D64  4B DD 4C E5 */	bl mem_clear
/* 805E5D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E5D6C  7C 08 03 A6 */	mtlr r0
/* 805E5D70  38 21 00 10 */	addi r1, r1, 0x10
/* 805E5D74  4E 80 00 20 */	blr 
