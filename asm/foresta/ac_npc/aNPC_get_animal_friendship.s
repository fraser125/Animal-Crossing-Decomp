lbl_80531F64:
/* 80531F64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80531F68  7C 08 02 A6 */	mflr r0
/* 80531F6C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80531F70  38 A0 00 07 */	li r5, 7
/* 80531F74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80531F78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80531F7C  3B E0 00 00 */	li r31, 0
/* 80531F80  93 C1 00 08 */	stw r30, 8(r1)
/* 80531F84  7C 7E 1B 78 */	mr r30, r3
/* 80531F88  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80531F8C  80 9E 01 7C */	lwz r4, 0x17c(r30)
/* 80531F90  3C 63 00 02 */	addis r3, r3, 2
/* 80531F94  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80531F98  38 84 00 10 */	addi r4, r4, 0x10
/* 80531F9C  4B E9 9D DD */	bl mNpc_GetAnimalMemoryIdx
/* 80531FA0  2C 03 FF FF */	cmpwi r3, -1
/* 80531FA4  41 82 00 14 */	beq lbl_80531FB8
/* 80531FA8  1C 03 01 38 */	mulli r0, r3, 0x138
/* 80531FAC  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 80531FB0  7C 63 02 14 */	add r3, r3, r0
/* 80531FB4  8B E3 00 40 */	lbz r31, 0x40(r3)
lbl_80531FB8:
/* 80531FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80531FBC  7F E3 FB 78 */	mr r3, r31
/* 80531FC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80531FC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80531FC8  7C 08 03 A6 */	mtlr r0
/* 80531FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80531FD0  4E 80 00 20 */	blr 
