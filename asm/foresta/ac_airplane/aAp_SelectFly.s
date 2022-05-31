lbl_8040FA5C:
/* 8040FA5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040FA60  7C 08 02 A6 */	mflr r0
/* 8040FA64  90 01 00 24 */	stw r0, 0x24(r1)
/* 8040FA68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8040FA6C  7C 9F 23 78 */	mr r31, r4
/* 8040FA70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8040FA74  7C 7E 1B 78 */	mr r30, r3
/* 8040FA78  4B C4 D2 7D */	bl fqrand
/* 8040FA7C  3C 60 80 64 */	lis r3, lit_534@ha /* 0x806437E4@ha */
/* 8040FA80  2C 1F 00 43 */	cmpwi r31, 0x43
/* 8040FA84  C0 03 37 E4 */	lfs f0, lit_534@l(r3)  /* 0x806437E4@l */
/* 8040FA88  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040FA8C  FC 00 00 1E */	fctiwz f0, f0
/* 8040FA90  D8 01 00 08 */	stfd f0, 8(r1)
/* 8040FA94  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8040FA98  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8040FA9C  40 81 00 2C */	ble lbl_8040FAC8
/* 8040FAA0  2C 00 00 00 */	cmpwi r0, 0
/* 8040FAA4  41 82 00 10 */	beq lbl_8040FAB4
/* 8040FAA8  38 00 00 02 */	li r0, 2
/* 8040FAAC  B0 1E 01 74 */	sth r0, 0x174(r30)
/* 8040FAB0  48 00 00 20 */	b lbl_8040FAD0
lbl_8040FAB4:
/* 8040FAB4  38 60 00 03 */	li r3, 3
/* 8040FAB8  38 00 00 00 */	li r0, 0
/* 8040FABC  B0 7E 01 74 */	sth r3, 0x174(r30)
/* 8040FAC0  B0 1E 01 76 */	sth r0, 0x176(r30)
/* 8040FAC4  48 00 00 0C */	b lbl_8040FAD0
lbl_8040FAC8:
/* 8040FAC8  38 00 00 00 */	li r0, 0
/* 8040FACC  B0 1E 01 74 */	sth r0, 0x174(r30)
lbl_8040FAD0:
/* 8040FAD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8040FAD4  38 60 00 01 */	li r3, 1
/* 8040FAD8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8040FADC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8040FAE0  7C 08 03 A6 */	mtlr r0
/* 8040FAE4  38 21 00 20 */	addi r1, r1, 0x20
/* 8040FAE8  4E 80 00 20 */	blr 
