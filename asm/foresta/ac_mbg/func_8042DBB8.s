lbl_8042DBB8:
/* 8042DBB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042DBBC  7C 08 02 A6 */	mflr r0
/* 8042DBC0  3C 80 80 64 */	lis r4, lit_423@ha /* 0x80644130@ha */
/* 8042DBC4  39 80 00 00 */	li r12, 0
/* 8042DBC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042DBCC  38 A4 41 30 */	addi r5, r4, lit_423@l /* 0x80644130@l */
/* 8042DBD0  39 60 2A AA */	li r11, 0x2aaa
/* 8042DBD4  C0 25 00 00 */	lfs f1, 0(r5)
/* 8042DBD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042DBDC  7C 7F 1B 78 */	mr r31, r3
/* 8042DBE0  38 BF 00 3C */	addi r5, r31, 0x3c
/* 8042DBE4  39 20 00 00 */	li r9, 0
/* 8042DBE8  91 83 01 9C */	stw r12, 0x19c(r3)
/* 8042DBEC  3C 60 80 64 */	lis r3, data_8064412C@ha /* 0x8064412C@ha */
/* 8042DBF0  38 C3 41 2C */	addi r6, r3, data_8064412C@l /* 0x8064412C@l */
/* 8042DBF4  39 40 00 00 */	li r10, 0
/* 8042DBF8  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8042DBFC  3C 60 80 64 */	lis r3, lit_424@ha /* 0x80644134@ha */
/* 8042DC00  80 FF 00 2C */	lwz r7, 0x2c(r31)
/* 8042DC04  38 83 41 34 */	addi r4, r3, lit_424@l /* 0x80644134@l */
/* 8042DC08  C0 06 00 00 */	lfs f0, 0(r6)
/* 8042DC0C  38 7F 01 74 */	addi r3, r31, 0x174
/* 8042DC10  90 1F 01 A0 */	stw r0, 0x1a0(r31)
/* 8042DC14  38 00 00 07 */	li r0, 7
/* 8042DC18  C0 44 00 00 */	lfs f2, 0(r4)
/* 8042DC1C  38 9F 00 28 */	addi r4, r31, 0x28
/* 8042DC20  90 FF 01 A4 */	stw r7, 0x1a4(r31)
/* 8042DC24  38 DF 00 DE */	addi r6, r31, 0xde
/* 8042DC28  38 E0 00 00 */	li r7, 0
/* 8042DC2C  81 1F 00 30 */	lwz r8, 0x30(r31)
/* 8042DC30  91 1F 01 A8 */	stw r8, 0x1a8(r31)
/* 8042DC34  39 00 00 00 */	li r8, 0
/* 8042DC38  D0 1F 01 AC */	stfs f0, 0x1ac(r31)
/* 8042DC3C  B1 7F 00 DE */	sth r11, 0xde(r31)
/* 8042DC40  91 81 00 08 */	stw r12, 8(r1)
/* 8042DC44  90 01 00 0C */	stw r0, 0xc(r1)
/* 8042DC48  4B F5 F1 5D */	bl mCoBG_RegistMoveBg
/* 8042DC4C  90 7F 01 9C */	stw r3, 0x19c(r31)
/* 8042DC50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042DC54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8042DC58  7C 08 03 A6 */	mtlr r0
/* 8042DC5C  38 21 00 20 */	addi r1, r1, 0x20
/* 8042DC60  4E 80 00 20 */	blr 
