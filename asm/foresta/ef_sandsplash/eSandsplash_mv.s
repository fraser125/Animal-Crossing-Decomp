lbl_8061B620:
/* 8061B620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061B624  7C 08 02 A6 */	mflr r0
/* 8061B628  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061B62C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061B630  7C 7F 1B 78 */	mr r31, r3
/* 8061B634  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8061B638  7C 65 1B 78 */	mr r5, r3
/* 8061B63C  38 9F 00 28 */	addi r4, r31, 0x28
/* 8061B640  4B D9 F9 05 */	bl xyz_t_add
/* 8061B644  38 7F 00 10 */	addi r3, r31, 0x10
/* 8061B648  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8061B64C  7C 65 1B 78 */	mr r5, r3
/* 8061B650  4B D9 F8 F5 */	bl xyz_t_add
/* 8061B654  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8061B658  A8 7F 00 00 */	lha r3, 0(r31)
/* 8061B65C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8061B660  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8061B664  3C 84 00 02 */	addis r4, r4, 2
/* 8061B668  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 8061B66C  80 C4 60 9C */	lwz r6, 0x609c(r4)
/* 8061B670  38 80 00 00 */	li r4, 0
/* 8061B674  38 A0 00 10 */	li r5, 0x10
/* 8061B678  81 86 00 14 */	lwz r12, 0x14(r6)
/* 8061B67C  7D 89 03 A6 */	mtctr r12
/* 8061B680  4E 80 04 21 */	bctrl 
/* 8061B684  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 8061B688  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8061B68C  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8061B690  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8061B694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061B698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061B69C  7C 08 03 A6 */	mtlr r0
/* 8061B6A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8061B6A4  4E 80 00 20 */	blr 
