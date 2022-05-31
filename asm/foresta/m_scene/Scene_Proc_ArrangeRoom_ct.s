lbl_803F1170:
/* 803F1170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F1174  7C 08 02 A6 */	mflr r0
/* 803F1178  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F117C  4B FF 67 89 */	bl mScn_ObtainCarpetBank
/* 803F1180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F1184  7C 08 03 A6 */	mtlr r0
/* 803F1188  38 21 00 10 */	addi r1, r1, 0x10
/* 803F118C  4E 80 00 20 */	blr 
