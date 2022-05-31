lbl_8055BA14:
/* 8055BA14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055BA18  7C 08 02 A6 */	mflr r0
/* 8055BA1C  38 A0 00 02 */	li r5, 2
/* 8055BA20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055BA24  48 00 33 AD */	bl aNSC_setupAction
/* 8055BA28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055BA2C  7C 08 03 A6 */	mtlr r0
/* 8055BA30  38 21 00 10 */	addi r1, r1, 0x10
/* 8055BA34  4E 80 00 20 */	blr 
