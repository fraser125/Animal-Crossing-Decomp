lbl_80523E90:
/* 80523E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80523E94  7C 08 02 A6 */	mflr r0
/* 80523E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80523E9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80523EA0  3B E0 00 00 */	li r31, 0
/* 80523EA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80523EA8  7C 7E 1B 78 */	mr r30, r3
/* 80523EAC  81 83 09 98 */	lwz r12, 0x998(r3)
/* 80523EB0  7D 89 03 A6 */	mtctr r12
/* 80523EB4  4E 80 04 21 */	bctrl 
/* 80523EB8  7F C4 F3 78 */	mr r4, r30
/* 80523EBC  38 60 00 07 */	li r3, 7
/* 80523EC0  4B E7 63 A5 */	bl mDemo_Check
/* 80523EC4  2C 03 00 00 */	cmpwi r3, 0
/* 80523EC8  40 82 00 08 */	bne lbl_80523ED0
/* 80523ECC  3B E0 00 01 */	li r31, 1
lbl_80523ED0:
/* 80523ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80523ED4  7F E3 FB 78 */	mr r3, r31
/* 80523ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80523EDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80523EE0  7C 08 03 A6 */	mtlr r0
/* 80523EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80523EE8  4E 80 00 20 */	blr 
