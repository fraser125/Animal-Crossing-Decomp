lbl_8061B854:
/* 8061B854  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8061B858  7C 08 02 A6 */	mflr r0
/* 8061B85C  3D 40 80 65 */	lis r10, lit_378@ha /* 0x8064CA88@ha */
/* 8061B860  3D 60 80 65 */	lis r11, data_8064CA84@ha /* 0x8064CA84@ha */
/* 8061B864  90 01 00 54 */	stw r0, 0x54(r1)
/* 8061B868  3D 20 80 65 */	lis r9, lit_379@ha /* 0x8064CA8C@ha */
/* 8061B86C  C0 6A CA 88 */	lfs f3, lit_378@l(r10)  /* 0x8064CA88@l */
/* 8061B870  39 49 CA 8C */	addi r10, r9, lit_379@l /* 0x8064CA8C@l */
/* 8061B874  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8061B878  3D 00 80 65 */	lis r8, lit_380@ha /* 0x8064CA90@ha */
/* 8061B87C  39 28 CA 90 */	addi r9, r8, lit_380@l /* 0x8064CA90@l */
/* 8061B880  3C A0 80 65 */	lis r5, lit_381@ha /* 0x8064CA94@ha */
/* 8061B884  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8061B888  39 05 CA 94 */	addi r8, r5, lit_381@l /* 0x8064CA94@l */
/* 8061B88C  C0 8B CA 84 */	lfs f4, data_8064CA84@l(r11)  /* 0x8064CA84@l */
/* 8061B890  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8061B894  C0 4A 00 00 */	lfs f2, 0(r10)
/* 8061B898  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8061B89C  C0 29 00 00 */	lfs f1, 0(r9)
/* 8061B8A0  3D 65 00 02 */	addis r11, r5, 2
/* 8061B8A4  C0 08 00 00 */	lfs f0, 0(r8)
/* 8061B8A8  7C E8 3B 78 */	mr r8, r7
/* 8061B8AC  83 C3 00 00 */	lwz r30, 0(r3)
/* 8061B8B0  38 00 00 00 */	li r0, 0
/* 8061B8B4  83 E3 00 04 */	lwz r31, 4(r3)
/* 8061B8B8  7C 89 23 78 */	mr r9, r4
/* 8061B8BC  81 83 00 08 */	lwz r12, 8(r3)
/* 8061B8C0  38 81 00 10 */	addi r4, r1, 0x10
/* 8061B8C4  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 8061B8C8  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8061B8CC  38 E1 00 28 */	addi r7, r1, 0x28
/* 8061B8D0  38 60 00 00 */	li r3, 0
/* 8061B8D4  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8061B8D8  39 40 00 00 */	li r10, 0
/* 8061B8DC  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8061B8E0  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 8061B8E4  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8061B8E8  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8061B8EC  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8061B8F0  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8061B8F4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8061B8F8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8061B8FC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8061B900  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8061B904  91 81 00 18 */	stw r12, 0x18(r1)
/* 8061B908  90 01 00 08 */	stw r0, 8(r1)
/* 8061B90C  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 8061B910  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8061B914  7D 89 03 A6 */	mtctr r12
/* 8061B918  4E 80 04 21 */	bctrl 
/* 8061B91C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8061B920  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8061B924  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8061B928  7C 08 03 A6 */	mtlr r0
/* 8061B92C  38 21 00 50 */	addi r1, r1, 0x50
/* 8061B930  4E 80 00 20 */	blr 
