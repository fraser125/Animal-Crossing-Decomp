lbl_803735E8:
/* 803735E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803735EC  7C 08 02 A6 */	mflr r0
/* 803735F0  3C 60 81 13 */	lis r3, data_8112C900@ha /* 0x8112C900@ha */
/* 803735F4  38 80 00 0A */	li r4, 0xa
/* 803735F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803735FC  38 00 00 00 */	li r0, 0
/* 80373600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80373604  3B E3 C9 00 */	addi r31, r3, data_8112C900@l /* 0x8112C900@l */
/* 80373608  38 7F 00 08 */	addi r3, r31, 8
/* 8037360C  90 1F 00 00 */	stw r0, 0(r31)
/* 80373610  90 1F 00 04 */	stw r0, 4(r31)
/* 80373614  4B CE 9A 55 */	bl bzero
/* 80373618  38 7F 00 14 */	addi r3, r31, 0x14
/* 8037361C  38 80 00 06 */	li r4, 6
/* 80373620  4B CE 9A 49 */	bl bzero
/* 80373624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80373628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037362C  7C 08 03 A6 */	mtlr r0
/* 80373630  38 21 00 10 */	addi r1, r1, 0x10
/* 80373634  4E 80 00 20 */	blr 
