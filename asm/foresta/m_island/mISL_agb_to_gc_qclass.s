lbl_803B5008:
/* 803B5008  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B500C  7C 08 02 A6 */	mflr r0
/* 803B5010  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B5014  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B5018  7C 9F 23 78 */	mr r31, r4
/* 803B501C  38 80 00 0C */	li r4, 0xc
/* 803B5020  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B5024  7C 7E 1B 78 */	mr r30, r3
/* 803B5028  38 61 00 08 */	addi r3, r1, 8
/* 803B502C  4B CA 80 3D */	bl bzero
/* 803B5030  7F E4 FB 78 */	mr r4, r31
/* 803B5034  38 61 00 08 */	addi r3, r1, 8
/* 803B5038  38 A0 00 01 */	li r5, 1
/* 803B503C  4B FF F0 BD */	bl mISL_int
/* 803B5040  88 A1 00 08 */	lbz r5, 8(r1)
/* 803B5044  38 7E 00 02 */	addi r3, r30, 2
/* 803B5048  88 1E 00 00 */	lbz r0, 0(r30)
/* 803B504C  38 9F 00 04 */	addi r4, r31, 4
/* 803B5050  50 A0 06 32 */	rlwimi r0, r5, 0, 0x18, 0x19
/* 803B5054  98 1E 00 00 */	stb r0, 0(r30)
/* 803B5058  88 A1 00 08 */	lbz r5, 8(r1)
/* 803B505C  88 1E 00 00 */	lbz r0, 0(r30)
/* 803B5060  50 A0 06 BE */	rlwimi r0, r5, 0, 0x1a, 0x1f
/* 803B5064  98 1E 00 00 */	stb r0, 0(r30)
/* 803B5068  88 A1 00 09 */	lbz r5, 9(r1)
/* 803B506C  88 1E 00 01 */	lbz r0, 1(r30)
/* 803B5070  50 A0 06 30 */	rlwimi r0, r5, 0, 0x18, 0x18
/* 803B5074  98 1E 00 01 */	stb r0, 1(r30)
/* 803B5078  88 A1 00 09 */	lbz r5, 9(r1)
/* 803B507C  88 1E 00 01 */	lbz r0, 1(r30)
/* 803B5080  50 A0 06 78 */	rlwimi r0, r5, 0, 0x19, 0x1c
/* 803B5084  98 1E 00 01 */	stb r0, 1(r30)
/* 803B5088  88 A1 00 09 */	lbz r5, 9(r1)
/* 803B508C  88 1E 00 01 */	lbz r0, 1(r30)
/* 803B5090  50 A0 07 7A */	rlwimi r0, r5, 0, 0x1d, 0x1d
/* 803B5094  98 1E 00 01 */	stb r0, 1(r30)
/* 803B5098  4B FF F8 01 */	bl mISL_gc_to_agb_time
/* 803B509C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B50A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B50A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B50A8  7C 08 03 A6 */	mtlr r0
/* 803B50AC  38 21 00 20 */	addi r1, r1, 0x20
/* 803B50B0  4E 80 00 20 */	blr 
