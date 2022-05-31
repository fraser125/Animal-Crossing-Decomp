lbl_803B4DD8:
/* 803B4DD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B4DDC  7C 08 02 A6 */	mflr r0
/* 803B4DE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B4DE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B4DE8  7C 9F 23 78 */	mr r31, r4
/* 803B4DEC  38 80 00 04 */	li r4, 4
/* 803B4DF0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B4DF4  7C 7E 1B 78 */	mr r30, r3
/* 803B4DF8  38 61 00 08 */	addi r3, r1, 8
/* 803B4DFC  4B CA 82 6D */	bl bzero
/* 803B4E00  7F E4 FB 78 */	mr r4, r31
/* 803B4E04  38 61 00 08 */	addi r3, r1, 8
/* 803B4E08  38 A0 00 01 */	li r5, 1
/* 803B4E0C  4B FF F2 ED */	bl mISL_int
/* 803B4E10  88 61 00 08 */	lbz r3, 8(r1)
/* 803B4E14  88 1E 00 00 */	lbz r0, 0(r30)
/* 803B4E18  50 60 06 30 */	rlwimi r0, r3, 0, 0x18, 0x18
/* 803B4E1C  98 1E 00 00 */	stb r0, 0(r30)
/* 803B4E20  88 61 00 08 */	lbz r3, 8(r1)
/* 803B4E24  88 1E 00 00 */	lbz r0, 0(r30)
/* 803B4E28  50 60 06 72 */	rlwimi r0, r3, 0, 0x19, 0x19
/* 803B4E2C  98 1E 00 00 */	stb r0, 0(r30)
/* 803B4E30  88 61 00 08 */	lbz r3, 8(r1)
/* 803B4E34  88 1E 00 00 */	lbz r0, 0(r30)
/* 803B4E38  50 60 06 B4 */	rlwimi r0, r3, 0, 0x1a, 0x1a
/* 803B4E3C  98 1E 00 00 */	stb r0, 0(r30)
/* 803B4E40  88 61 00 08 */	lbz r3, 8(r1)
/* 803B4E44  88 1E 00 00 */	lbz r0, 0(r30)
/* 803B4E48  50 60 06 F6 */	rlwimi r0, r3, 0, 0x1b, 0x1b
/* 803B4E4C  98 1E 00 00 */	stb r0, 0(r30)
/* 803B4E50  88 61 00 08 */	lbz r3, 8(r1)
/* 803B4E54  88 1E 00 00 */	lbz r0, 0(r30)
/* 803B4E58  50 60 07 38 */	rlwimi r0, r3, 0, 0x1c, 0x1c
/* 803B4E5C  98 1E 00 00 */	stb r0, 0(r30)
/* 803B4E60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B4E64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B4E68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B4E6C  7C 08 03 A6 */	mtlr r0
/* 803B4E70  38 21 00 20 */	addi r1, r1, 0x20
/* 803B4E74  4E 80 00 20 */	blr 
