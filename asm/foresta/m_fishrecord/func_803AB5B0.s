lbl_803AB5B0:
/* 803AB5B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AB5B4  7C 08 02 A6 */	mflr r0
/* 803AB5B8  38 80 00 20 */	li r4, 0x20
/* 803AB5BC  38 A0 00 00 */	li r5, 0
/* 803AB5C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AB5C4  48 00 F4 85 */	bl mem_clear
/* 803AB5C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AB5CC  7C 08 03 A6 */	mtlr r0
/* 803AB5D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803AB5D4  4E 80 00 20 */	blr 
