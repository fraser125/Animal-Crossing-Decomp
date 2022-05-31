lbl_8056FA7C:
/* 8056FA7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056FA80  7C 08 02 A6 */	mflr r0
/* 8056FA84  3C A0 80 65 */	lis r5, lit_705@ha /* 0x806498EC@ha */
/* 8056FA88  3C 80 80 65 */	lis r4, lit_706@ha /* 0x806498F0@ha */
/* 8056FA8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056FA90  C0 65 98 EC */	lfs f3, lit_705@l(r5)  /* 0x806498EC@l */
/* 8056FA94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056FA98  7C 7F 1B 78 */	mr r31, r3
/* 8056FA9C  C0 44 98 F0 */	lfs f2, lit_706@l(r4)  /* 0x806498F0@l */
/* 8056FAA0  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8056FAA4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8056FAA8  EC 23 08 28 */	fsubs f1, f3, f1
/* 8056FAAC  EC 42 00 28 */	fsubs f2, f2, f0
/* 8056FAB0  4B E9 C5 51 */	bl atans_table
/* 8056FAB4  B0 7F 00 DE */	sth r3, 0xde(r31)
/* 8056FAB8  B0 7F 00 36 */	sth r3, 0x36(r31)
/* 8056FABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056FAC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056FAC4  7C 08 03 A6 */	mtlr r0
/* 8056FAC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8056FACC  4E 80 00 20 */	blr 
