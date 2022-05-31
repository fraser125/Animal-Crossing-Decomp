lbl_803E4194:
/* 803E4194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E4198  7C 08 02 A6 */	mflr r0
/* 803E419C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E41A0  39 61 00 20 */	addi r11, r1, 0x20
/* 803E41A4  4B CB 6D 31 */	bl func_8009AED4
/* 803E41A8  7C 7D 1B 79 */	or. r29, r3, r3
/* 803E41AC  7C BE 2B 78 */	mr r30, r5
/* 803E41B0  7C DF 33 78 */	mr r31, r6
/* 803E41B4  41 82 00 7C */	beq lbl_803E4230
/* 803E41B8  88 1D 00 00 */	lbz r0, 0(r29)
/* 803E41BC  38 60 00 01 */	li r3, 1
/* 803E41C0  50 60 36 32 */	rlwimi r0, r3, 6, 0x18, 0x19
/* 803E41C4  38 E0 00 07 */	li r7, 7
/* 803E41C8  98 1D 00 00 */	stb r0, 0(r29)
/* 803E41CC  38 C0 00 00 */	li r6, 0
/* 803E41D0  38 A0 00 02 */	li r5, 2
/* 803E41D4  38 7D 00 0C */	addi r3, r29, 0xc
/* 803E41D8  88 1D 00 00 */	lbz r0, 0(r29)
/* 803E41DC  50 E0 06 BE */	rlwimi r0, r7, 0, 0x1a, 0x1f
/* 803E41E0  98 1D 00 00 */	stb r0, 0(r29)
/* 803E41E4  88 1D 00 01 */	lbz r0, 1(r29)
/* 803E41E8  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 803E41EC  98 1D 00 01 */	stb r0, 1(r29)
/* 803E41F0  88 1D 00 01 */	lbz r0, 1(r29)
/* 803E41F4  50 A0 1E 78 */	rlwimi r0, r5, 3, 0x19, 0x1c
/* 803E41F8  98 1D 00 01 */	stb r0, 1(r29)
/* 803E41FC  88 1D 00 01 */	lbz r0, 1(r29)
/* 803E4200  50 C0 17 7A */	rlwimi r0, r6, 2, 0x1d, 0x1d
/* 803E4204  98 1D 00 01 */	stb r0, 1(r29)
/* 803E4208  4B FE 72 09 */	bl mNpc_CopyAnimalPersonalID
/* 803E420C  7F E3 07 74 */	extsb r3, r31
/* 803E4210  88 1D 00 2A */	lbz r0, 0x2a(r29)
/* 803E4214  50 60 1E 38 */	rlwimi r0, r3, 3, 0x18, 0x1c
/* 803E4218  38 60 00 02 */	li r3, 2
/* 803E421C  98 1D 00 2A */	stb r0, 0x2a(r29)
/* 803E4220  88 1D 00 2A */	lbz r0, 0x2a(r29)
/* 803E4224  50 60 07 7E */	rlwimi r0, r3, 0, 0x1d, 0x1f
/* 803E4228  98 1D 00 2A */	stb r0, 0x2a(r29)
/* 803E422C  B3 DD 00 28 */	sth r30, 0x28(r29)
lbl_803E4230:
/* 803E4230  39 61 00 20 */	addi r11, r1, 0x20
/* 803E4234  4B CB 6C ED */	bl func_8009AF20
/* 803E4238  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E423C  7C 08 03 A6 */	mtlr r0
/* 803E4240  38 21 00 20 */	addi r1, r1, 0x20
/* 803E4244  4E 80 00 20 */	blr 
