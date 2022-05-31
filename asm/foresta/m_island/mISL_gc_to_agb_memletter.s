lbl_803B4D48:
/* 803B4D48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B4D4C  7C 08 02 A6 */	mflr r0
/* 803B4D50  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B4D54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B4D58  7C 9F 23 78 */	mr r31, r4
/* 803B4D5C  38 80 00 04 */	li r4, 4
/* 803B4D60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B4D64  7C 7E 1B 78 */	mr r30, r3
/* 803B4D68  38 61 00 08 */	addi r3, r1, 8
/* 803B4D6C  4B CA 82 FD */	bl bzero
/* 803B4D70  88 FF 00 00 */	lbz r7, 0(r31)
/* 803B4D74  7F C3 F3 78 */	mr r3, r30
/* 803B4D78  88 01 00 08 */	lbz r0, 8(r1)
/* 803B4D7C  38 81 00 08 */	addi r4, r1, 8
/* 803B4D80  50 E0 06 30 */	rlwimi r0, r7, 0, 0x18, 0x18
/* 803B4D84  38 A0 00 01 */	li r5, 1
/* 803B4D88  98 01 00 08 */	stb r0, 8(r1)
/* 803B4D8C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803B4D90  50 E0 06 72 */	rlwimi r0, r7, 0, 0x19, 0x19
/* 803B4D94  98 01 00 08 */	stb r0, 8(r1)
/* 803B4D98  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803B4D9C  50 E0 06 B4 */	rlwimi r0, r7, 0, 0x1a, 0x1a
/* 803B4DA0  98 01 00 08 */	stb r0, 8(r1)
/* 803B4DA4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803B4DA8  50 E0 06 F6 */	rlwimi r0, r7, 0, 0x1b, 0x1b
/* 803B4DAC  98 01 00 08 */	stb r0, 8(r1)
/* 803B4DB0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803B4DB4  50 E0 07 38 */	rlwimi r0, r7, 0, 0x1c, 0x1c
/* 803B4DB8  98 01 00 08 */	stb r0, 8(r1)
/* 803B4DBC  4B FF F3 3D */	bl mISL_int
/* 803B4DC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B4DC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B4DC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B4DCC  7C 08 03 A6 */	mtlr r0
/* 803B4DD0  38 21 00 20 */	addi r1, r1, 0x20
/* 803B4DD4  4E 80 00 20 */	blr 
