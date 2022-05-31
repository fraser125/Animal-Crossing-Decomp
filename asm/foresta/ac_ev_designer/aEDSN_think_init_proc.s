lbl_8051DBB4:
/* 8051DBB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051DBB8  7C 08 02 A6 */	mflr r0
/* 8051DBBC  38 A0 00 01 */	li r5, 1
/* 8051DBC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051DBC4  38 00 00 FE */	li r0, 0xfe
/* 8051DBC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051DBCC  7C 7F 1B 78 */	mr r31, r3
/* 8051DBD0  93 C1 00 08 */	stw r30, 8(r1)
/* 8051DBD4  7C 9E 23 78 */	mr r30, r4
/* 8051DBD8  38 80 58 28 */	li r4, 0x5828
/* 8051DBDC  98 03 00 D6 */	stb r0, 0xd6(r3)
/* 8051DBE0  38 00 00 00 */	li r0, 0
/* 8051DBE4  38 7E 1D A8 */	addi r3, r30, 0x1da8
/* 8051DBE8  98 1F 08 31 */	stb r0, 0x831(r31)
/* 8051DBEC  4B E5 81 55 */	bl Actor_info_fgName_search
/* 8051DBF0  28 03 00 00 */	cmplwi r3, 0
/* 8051DBF4  41 82 00 2C */	beq lbl_8051DC20
/* 8051DBF8  3C A0 80 65 */	lis r5, lit_664@ha /* 0x806490D4@ha */
/* 8051DBFC  3C 80 80 65 */	lis r4, lit_714@ha /* 0x806490E8@ha */
/* 8051DC00  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8051DC04  C0 45 90 D4 */	lfs f2, lit_664@l(r5)  /* 0x806490D4@l */
/* 8051DC08  C0 24 90 E8 */	lfs f1, lit_714@l(r4)  /* 0x806490E8@l */
/* 8051DC0C  EC 02 00 2A */	fadds f0, f2, f0
/* 8051DC10  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8051DC14  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8051DC18  EC 01 00 2A */	fadds f0, f1, f0
/* 8051DC1C  D0 1F 00 30 */	stfs f0, 0x30(r31)
lbl_8051DC20:
/* 8051DC20  7F E3 FB 78 */	mr r3, r31
/* 8051DC24  7F C4 F3 78 */	mr r4, r30
/* 8051DC28  38 A0 00 00 */	li r5, 0
/* 8051DC2C  48 00 01 19 */	bl aEDSN_setup_think_proc
/* 8051DC30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051DC34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051DC38  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051DC3C  7C 08 03 A6 */	mtlr r0
/* 8051DC40  38 21 00 10 */	addi r1, r1, 0x10
/* 8051DC44  4E 80 00 20 */	blr 
