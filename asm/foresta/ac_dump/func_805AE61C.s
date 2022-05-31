lbl_805AE61C:
/* 805AE61C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AE620  7C 08 02 A6 */	mflr r0
/* 805AE624  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805AE628  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AE62C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805AE630  3C A5 00 02 */	addis r5, r5, 2
/* 805AE634  38 80 00 01 */	li r4, 1
/* 805AE638  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AE63C  7C 7F 1B 78 */	mr r31, r3
/* 805AE640  80 05 61 10 */	lwz r0, 0x6110(r5)
/* 805AE644  90 03 02 D8 */	stw r0, 0x2d8(r3)
/* 805AE648  48 00 01 11 */	bl aDUM_set_bgOffset
/* 805AE64C  7F E3 FB 78 */	mr r3, r31
/* 805AE650  38 80 00 00 */	li r4, 0
/* 805AE654  48 00 02 E5 */	bl aDUM_setup_action
/* 805AE658  3C 60 80 65 */	lis r3, data_8064A6FC@ha /* 0x8064A6FC@ha */
/* 805AE65C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805AE660  C0 03 A6 FC */	lfs f0, data_8064A6FC@l(r3)  /* 0x8064A6FC@l */
/* 805AE664  EC 01 00 28 */	fsubs f0, f1, f0
/* 805AE668  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805AE66C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AE670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AE674  7C 08 03 A6 */	mtlr r0
/* 805AE678  38 21 00 10 */	addi r1, r1, 0x10
/* 805AE67C  4E 80 00 20 */	blr 
