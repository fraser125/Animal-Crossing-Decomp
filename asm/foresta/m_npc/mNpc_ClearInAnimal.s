lbl_803D0668:
/* 803D0668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D066C  7C 08 02 A6 */	mflr r0
/* 803D0670  3C 60 81 17 */	lis r3, l_mnpc_remove_in_animal@ha /* 0x8116BB30@ha */
/* 803D0674  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D0678  38 63 BB 30 */	addi r3, r3, l_mnpc_remove_in_animal@l /* 0x8116BB30@l */
/* 803D067C  4B FF BD C1 */	bl mNpc_ClearAnimalInfo
/* 803D0680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D0684  7C 08 03 A6 */	mtlr r0
/* 803D0688  38 21 00 10 */	addi r1, r1, 0x10
/* 803D068C  4E 80 00 20 */	blr 
