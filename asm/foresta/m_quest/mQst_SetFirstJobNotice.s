lbl_803E4340:
/* 803E4340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E4344  7C 08 02 A6 */	mflr r0
/* 803E4348  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E434C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E4350  7C 7F 1B 79 */	or. r31, r3, r3
/* 803E4354  41 82 00 68 */	beq lbl_803E43BC
/* 803E4358  88 1F 00 00 */	lbz r0, 0(r31)
/* 803E435C  38 60 00 01 */	li r3, 1
/* 803E4360  50 60 36 32 */	rlwimi r0, r3, 6, 0x18, 0x19
/* 803E4364  38 C0 00 09 */	li r6, 9
/* 803E4368  98 1F 00 00 */	stb r0, 0(r31)
/* 803E436C  38 A0 00 00 */	li r5, 0
/* 803E4370  38 80 00 02 */	li r4, 2
/* 803E4374  38 7F 00 0C */	addi r3, r31, 0xc
/* 803E4378  88 1F 00 00 */	lbz r0, 0(r31)
/* 803E437C  50 C0 06 BE */	rlwimi r0, r6, 0, 0x1a, 0x1f
/* 803E4380  98 1F 00 00 */	stb r0, 0(r31)
/* 803E4384  88 1F 00 01 */	lbz r0, 1(r31)
/* 803E4388  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 803E438C  98 1F 00 01 */	stb r0, 1(r31)
/* 803E4390  88 1F 00 01 */	lbz r0, 1(r31)
/* 803E4394  50 80 1E 78 */	rlwimi r0, r4, 3, 0x19, 0x1c
/* 803E4398  98 1F 00 01 */	stb r0, 1(r31)
/* 803E439C  88 1F 00 01 */	lbz r0, 1(r31)
/* 803E43A0  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 803E43A4  98 1F 00 01 */	stb r0, 1(r31)
/* 803E43A8  4B FE 6F DD */	bl mNpc_ClearAnimalPersonalID
/* 803E43AC  88 1F 00 2A */	lbz r0, 0x2a(r31)
/* 803E43B0  38 60 00 02 */	li r3, 2
/* 803E43B4  50 60 07 7E */	rlwimi r0, r3, 0, 0x1d, 0x1f
/* 803E43B8  98 1F 00 2A */	stb r0, 0x2a(r31)
lbl_803E43BC:
/* 803E43BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E43C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E43C4  7C 08 03 A6 */	mtlr r0
/* 803E43C8  38 21 00 10 */	addi r1, r1, 0x10
/* 803E43CC  4E 80 00 20 */	blr 