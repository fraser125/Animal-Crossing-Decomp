lbl_803E3FE8:
/* 803E3FE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E3FEC  7C 08 02 A6 */	mflr r0
/* 803E3FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E3FF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E3FF8  7C 9F 23 78 */	mr r31, r4
/* 803E3FFC  93 C1 00 08 */	stw r30, 8(r1)
/* 803E4000  7C 7E 1B 79 */	or. r30, r3, r3
/* 803E4004  41 82 00 84 */	beq lbl_803E4088
/* 803E4008  88 1E 00 00 */	lbz r0, 0(r30)
/* 803E400C  38 60 00 01 */	li r3, 1
/* 803E4010  50 60 36 32 */	rlwimi r0, r3, 6, 0x18, 0x19
/* 803E4014  54 A7 06 3E */	clrlwi r7, r5, 0x18
/* 803E4018  98 1E 00 00 */	stb r0, 0(r30)
/* 803E401C  38 C0 00 00 */	li r6, 0
/* 803E4020  38 A0 00 02 */	li r5, 2
/* 803E4024  38 7E 00 0C */	addi r3, r30, 0xc
/* 803E4028  88 1E 00 00 */	lbz r0, 0(r30)
/* 803E402C  50 E0 06 BE */	rlwimi r0, r7, 0, 0x1a, 0x1f
/* 803E4030  98 1E 00 00 */	stb r0, 0(r30)
/* 803E4034  88 1E 00 01 */	lbz r0, 1(r30)
/* 803E4038  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 803E403C  98 1E 00 01 */	stb r0, 1(r30)
/* 803E4040  88 1E 00 01 */	lbz r0, 1(r30)
/* 803E4044  50 A0 1E 78 */	rlwimi r0, r5, 3, 0x19, 0x1c
/* 803E4048  98 1E 00 01 */	stb r0, 1(r30)
/* 803E404C  88 1E 00 01 */	lbz r0, 1(r30)
/* 803E4050  50 C0 17 7A */	rlwimi r0, r6, 2, 0x1d, 0x1d
/* 803E4054  98 1E 00 01 */	stb r0, 1(r30)
/* 803E4058  4B FE 73 B9 */	bl mNpc_CopyAnimalPersonalID
/* 803E405C  88 1E 00 2A */	lbz r0, 0x2a(r30)
/* 803E4060  38 60 00 02 */	li r3, 2
/* 803E4064  50 60 07 7E */	rlwimi r0, r3, 0, 0x1d, 0x1f
/* 803E4068  7F E4 FB 78 */	mr r4, r31
/* 803E406C  98 1E 00 2A */	stb r0, 0x2a(r30)
/* 803E4070  38 7E 00 3A */	addi r3, r30, 0x3a
/* 803E4074  4B FE 73 9D */	bl mNpc_CopyAnimalPersonalID
/* 803E4078  88 1E 00 48 */	lbz r0, 0x48(r30)
/* 803E407C  38 60 00 02 */	li r3, 2
/* 803E4080  50 60 0E 3C */	rlwimi r0, r3, 1, 0x18, 0x1e
/* 803E4084  98 1E 00 48 */	stb r0, 0x48(r30)
lbl_803E4088:
/* 803E4088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E408C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E4090  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E4094  7C 08 03 A6 */	mtlr r0
/* 803E4098  38 21 00 10 */	addi r1, r1, 0x10
/* 803E409C  4E 80 00 20 */	blr 
