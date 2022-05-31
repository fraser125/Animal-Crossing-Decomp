lbl_803FA664:
/* 803FA664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FA668  7C 08 02 A6 */	mflr r0
/* 803FA66C  38 80 40 00 */	li r4, 0x4000
/* 803FA670  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FA674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FA678  7C 7F 1B 78 */	mr r31, r3
/* 803FA67C  4B C6 29 ED */	bl bzero
/* 803FA680  38 00 00 00 */	li r0, 0
/* 803FA684  38 7F 00 20 */	addi r3, r31, 0x20
/* 803FA688  B0 1F 00 00 */	sth r0, 0(r31)
/* 803FA68C  4B FE 5B 8D */	bl mPr_ClearPrivateInfo
/* 803FA690  38 7F 24 60 */	addi r3, r31, 0x2460
/* 803FA694  4B FD 1D A9 */	bl mNpc_ClearAnimalInfo
/* 803FA698  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 803FA69C  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 803FA6A0  B0 1F 2D E8 */	sth r0, 0x2de8(r31)
/* 803FA6A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FA6A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FA6AC  7C 08 03 A6 */	mtlr r0
/* 803FA6B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803FA6B4  4E 80 00 20 */	blr 
