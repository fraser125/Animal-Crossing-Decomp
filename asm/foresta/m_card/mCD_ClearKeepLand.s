lbl_803FA52C:
/* 803FA52C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FA530  7C 08 02 A6 */	mflr r0
/* 803FA534  3C 60 81 17 */	lis r3, l_keepSave@ha /* 0x81171638@ha */
/* 803FA538  3C 80 00 02 */	lis r4, 0x0002 /* 0x00026000@ha */
/* 803FA53C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FA540  38 63 16 38 */	addi r3, r3, l_keepSave@l /* 0x81171638@l */
/* 803FA544  38 84 60 00 */	addi r4, r4, 0x6000 /* 0x00026000@l */
/* 803FA548  4B C6 2B 21 */	bl bzero
/* 803FA54C  3C 60 81 17 */	lis r3, l_keepSave_set@ha /* 0x81171610@ha */
/* 803FA550  38 00 00 00 */	li r0, 0
/* 803FA554  90 03 16 10 */	stw r0, l_keepSave_set@l(r3)  /* 0x81171610@l */
/* 803FA558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FA55C  7C 08 03 A6 */	mtlr r0
/* 803FA560  38 21 00 10 */	addi r1, r1, 0x10
/* 803FA564  4E 80 00 20 */	blr 
