lbl_80617024:
/* 80617024  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80617028  7C 08 02 A6 */	mflr r0
/* 8061702C  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 80617030  90 01 00 34 */	stw r0, 0x34(r1)
/* 80617034  39 6A 85 38 */	addi r11, r10, common_data@l /* 0x81138538@l */
/* 80617038  7D 0A 43 78 */	mr r10, r8
/* 8061703C  7C E8 3B 78 */	mr r8, r7
/* 80617040  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80617044  3D 6B 00 02 */	addis r11, r11, 2
/* 80617048  38 E1 00 10 */	addi r7, r1, 0x10
/* 8061704C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80617050  7C 9E 23 78 */	mr r30, r4
/* 80617054  38 81 00 14 */	addi r4, r1, 0x14
/* 80617058  83 E3 00 00 */	lwz r31, 0(r3)
/* 8061705C  81 83 00 04 */	lwz r12, 4(r3)
/* 80617060  80 03 00 08 */	lwz r0, 8(r3)
/* 80617064  38 60 00 3B */	li r3, 0x3b
/* 80617068  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 8061706C  38 A0 00 00 */	li r5, 0
/* 80617070  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80617074  91 81 00 18 */	stw r12, 0x18(r1)
/* 80617078  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8061707C  91 21 00 08 */	stw r9, 8(r1)
/* 80617080  7F C9 F3 78 */	mr r9, r30
/* 80617084  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 80617088  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8061708C  7D 89 03 A6 */	mtctr r12
/* 80617090  4E 80 04 21 */	bctrl 
/* 80617094  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80617098  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8061709C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806170A0  7C 08 03 A6 */	mtlr r0
/* 806170A4  38 21 00 30 */	addi r1, r1, 0x30
/* 806170A8  4E 80 00 20 */	blr 
