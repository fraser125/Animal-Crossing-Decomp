lbl_80635EB4:
/* 80635EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80635EB8  7C 08 02 A6 */	mflr r0
/* 80635EBC  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80635EC0  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80635EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80635EC8  3C C6 00 02 */	addis r6, r6, 2
/* 80635ECC  81 06 60 8C */	lwz r8, 0x608c(r6)
/* 80635ED0  28 08 00 00 */	cmplwi r8, 0
/* 80635ED4  41 82 00 20 */	beq lbl_80635EF4
/* 80635ED8  81 88 00 34 */	lwz r12, 0x34(r8)
/* 80635EDC  3C E0 80 65 */	lis r7, data_8064D274@ha /* 0x8064D274@ha */
/* 80635EE0  3C C0 80 65 */	lis r6, lit_627@ha /* 0x8064D290@ha */
/* 80635EE4  C0 27 D2 74 */	lfs f1, data_8064D274@l(r7)  /* 0x8064D274@l */
/* 80635EE8  C0 46 D2 90 */	lfs f2, lit_627@l(r6)  /* 0x8064D290@l */
/* 80635EEC  7D 89 03 A6 */	mtctr r12
/* 80635EF0  4E 80 04 21 */	bctrl 
lbl_80635EF4:
/* 80635EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80635EF8  7C 08 03 A6 */	mtlr r0
/* 80635EFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80635F00  4E 80 00 20 */	blr 
