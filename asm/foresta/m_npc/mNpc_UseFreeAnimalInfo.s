lbl_803CC660:
/* 803CC660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CC664  7C 08 02 A6 */	mflr r0
/* 803CC668  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CC66C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CC670  93 C1 00 08 */	stw r30, 8(r1)
/* 803CC674  7C 7E 1B 78 */	mr r30, r3
/* 803CC678  4B FF FF 7D */	bl mNpc_GetFreeAnimalInfo
/* 803CC67C  7C 7F 1B 78 */	mr r31, r3
/* 803CC680  2C 1F FF FF */	cmpwi r31, -1
/* 803CC684  41 82 00 18 */	beq lbl_803CC69C
/* 803CC688  1C 1F 09 88 */	mulli r0, r31, 0x988
/* 803CC68C  7C 7E 02 14 */	add r3, r30, r0
/* 803CC690  4B FF FD AD */	bl mNpc_ClearAnimalInfo
/* 803CC694  7F E3 FB 78 */	mr r3, r31
/* 803CC698  4B FF F5 B1 */	bl mNpc_ResetAnimalRelation
lbl_803CC69C:
/* 803CC69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CC6A0  7F E3 FB 78 */	mr r3, r31
/* 803CC6A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CC6A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803CC6AC  7C 08 03 A6 */	mtlr r0
/* 803CC6B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803CC6B4  4E 80 00 20 */	blr 
