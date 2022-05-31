lbl_8056FA20:
/* 8056FA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056FA24  7C 08 02 A6 */	mflr r0
/* 8056FA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056FA2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056FA30  7C 7F 1B 78 */	mr r31, r3
/* 8056FA34  A8 03 00 24 */	lha r0, 0x24(r3)
/* 8056FA38  2C 00 00 03 */	cmpwi r0, 3
/* 8056FA3C  40 80 00 18 */	bge lbl_8056FA54
/* 8056FA40  2C 00 00 01 */	cmpwi r0, 1
/* 8056FA44  40 80 00 08 */	bge lbl_8056FA4C
/* 8056FA48  48 00 00 0C */	b lbl_8056FA54
lbl_8056FA4C:
/* 8056FA4C  38 A0 00 0B */	li r5, 0xb
/* 8056FA50  48 00 00 08 */	b lbl_8056FA58
lbl_8056FA54:
/* 8056FA54  38 A0 00 00 */	li r5, 0
lbl_8056FA58:
/* 8056FA58  7F E3 FB 78 */	mr r3, r31
/* 8056FA5C  48 00 03 1D */	bl aNRG_setup_think_proc
/* 8056FA60  38 00 00 00 */	li r0, 0
/* 8056FA64  98 1F 08 31 */	stb r0, 0x831(r31)
/* 8056FA68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056FA6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056FA70  7C 08 03 A6 */	mtlr r0
/* 8056FA74  38 21 00 10 */	addi r1, r1, 0x10
/* 8056FA78  4E 80 00 20 */	blr 
