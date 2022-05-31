lbl_803D72B8:
/* 803D72B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D72BC  7C 08 02 A6 */	mflr r0
/* 803D72C0  28 03 00 00 */	cmplwi r3, 0
/* 803D72C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D72C8  41 82 00 10 */	beq lbl_803D72D8
/* 803D72CC  4B FF 54 BD */	bl mNpc_SearchAnimalPersonalID
/* 803D72D0  3C 80 80 66 */	lis r4, l_mnpc_animal_idx@ha /* 0x8065B500@ha */
/* 803D72D4  90 64 B5 00 */	stw r3, l_mnpc_animal_idx@l(r4)  /* 0x8065B500@l */
lbl_803D72D8:
/* 803D72D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D72DC  7C 08 03 A6 */	mtlr r0
/* 803D72E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803D72E4  4E 80 00 20 */	blr 
