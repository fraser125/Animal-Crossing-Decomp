lbl_803BC998:
/* 803BC998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC99C  7C 08 02 A6 */	mflr r0
/* 803BC9A0  38 80 00 18 */	li r4, 0x18
/* 803BC9A4  38 A0 00 20 */	li r5, 0x20
/* 803BC9A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC9AC  38 00 FF FF */	li r0, -1
/* 803BC9B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BC9B4  7C 7F 1B 78 */	mr r31, r3
/* 803BC9B8  98 03 00 00 */	stb r0, 0(r3)
/* 803BC9BC  38 00 00 00 */	li r0, 0
/* 803BC9C0  38 7F 00 02 */	addi r3, r31, 2
/* 803BC9C4  98 1F 00 01 */	stb r0, 1(r31)
/* 803BC9C8  4B FF E0 81 */	bl mem_clear
/* 803BC9CC  38 7F 00 1A */	addi r3, r31, 0x1a
/* 803BC9D0  38 80 00 20 */	li r4, 0x20
/* 803BC9D4  38 A0 00 20 */	li r5, 0x20
/* 803BC9D8  4B FF E0 71 */	bl mem_clear
/* 803BC9DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC9E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BC9E4  7C 08 03 A6 */	mtlr r0
/* 803BC9E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC9EC  4E 80 00 20 */	blr 
