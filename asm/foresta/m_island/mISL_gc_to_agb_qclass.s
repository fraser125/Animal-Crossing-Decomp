lbl_803B4F68:
/* 803B4F68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B4F6C  7C 08 02 A6 */	mflr r0
/* 803B4F70  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B4F74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B4F78  7C 9F 23 78 */	mr r31, r4
/* 803B4F7C  38 80 00 0C */	li r4, 0xc
/* 803B4F80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B4F84  7C 7E 1B 78 */	mr r30, r3
/* 803B4F88  38 61 00 08 */	addi r3, r1, 8
/* 803B4F8C  4B CA 80 DD */	bl bzero
/* 803B4F90  88 BF 00 00 */	lbz r5, 0(r31)
/* 803B4F94  7F C3 F3 78 */	mr r3, r30
/* 803B4F98  88 C1 00 08 */	lbz r6, 8(r1)
/* 803B4F9C  38 81 00 08 */	addi r4, r1, 8
/* 803B4FA0  50 A6 06 32 */	rlwimi r6, r5, 0, 0x18, 0x19
/* 803B4FA4  88 01 00 09 */	lbz r0, 9(r1)
/* 803B4FA8  98 C1 00 08 */	stb r6, 8(r1)
/* 803B4FAC  54 C6 06 3E */	clrlwi r6, r6, 0x18
/* 803B4FB0  50 A6 06 BE */	rlwimi r6, r5, 0, 0x1a, 0x1f
/* 803B4FB4  38 A0 00 01 */	li r5, 1
/* 803B4FB8  98 C1 00 08 */	stb r6, 8(r1)
/* 803B4FBC  89 1F 00 01 */	lbz r8, 1(r31)
/* 803B4FC0  51 00 06 30 */	rlwimi r0, r8, 0, 0x18, 0x18
/* 803B4FC4  98 01 00 09 */	stb r0, 9(r1)
/* 803B4FC8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803B4FCC  51 00 06 78 */	rlwimi r0, r8, 0, 0x19, 0x1c
/* 803B4FD0  98 01 00 09 */	stb r0, 9(r1)
/* 803B4FD4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803B4FD8  51 00 07 7A */	rlwimi r0, r8, 0, 0x1d, 0x1d
/* 803B4FDC  98 01 00 09 */	stb r0, 9(r1)
/* 803B4FE0  4B FF F1 19 */	bl mISL_int
/* 803B4FE4  38 7E 00 04 */	addi r3, r30, 4
/* 803B4FE8  38 9F 00 02 */	addi r4, r31, 2
/* 803B4FEC  4B FF F8 AD */	bl mISL_gc_to_agb_time
/* 803B4FF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B4FF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B4FF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B4FFC  7C 08 03 A6 */	mtlr r0
/* 803B5000  38 21 00 20 */	addi r1, r1, 0x20
/* 803B5004  4E 80 00 20 */	blr 
