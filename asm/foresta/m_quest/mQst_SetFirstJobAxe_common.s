lbl_803E4248:
/* 803E4248  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E424C  7C 08 02 A6 */	mflr r0
/* 803E4250  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E4254  39 61 00 20 */	addi r11, r1, 0x20
/* 803E4258  4B CB 6C 7D */	bl func_8009AED4
/* 803E425C  7C 7D 1B 79 */	or. r29, r3, r3
/* 803E4260  7C BE 2B 78 */	mr r30, r5
/* 803E4264  7C DF 33 78 */	mr r31, r6
/* 803E4268  41 82 00 78 */	beq lbl_803E42E0
/* 803E426C  88 1D 00 00 */	lbz r0, 0(r29)
/* 803E4270  38 60 00 01 */	li r3, 1
/* 803E4274  50 60 36 32 */	rlwimi r0, r3, 6, 0x18, 0x19
/* 803E4278  38 C0 00 00 */	li r6, 0
/* 803E427C  98 1D 00 00 */	stb r0, 0(r29)
/* 803E4280  38 A0 00 02 */	li r5, 2
/* 803E4284  38 7D 00 0C */	addi r3, r29, 0xc
/* 803E4288  88 1D 00 00 */	lbz r0, 0(r29)
/* 803E428C  50 E0 06 BE */	rlwimi r0, r7, 0, 0x1a, 0x1f
/* 803E4290  98 1D 00 00 */	stb r0, 0(r29)
/* 803E4294  88 1D 00 01 */	lbz r0, 1(r29)
/* 803E4298  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 803E429C  98 1D 00 01 */	stb r0, 1(r29)
/* 803E42A0  88 1D 00 01 */	lbz r0, 1(r29)
/* 803E42A4  50 A0 1E 78 */	rlwimi r0, r5, 3, 0x19, 0x1c
/* 803E42A8  98 1D 00 01 */	stb r0, 1(r29)
/* 803E42AC  88 1D 00 01 */	lbz r0, 1(r29)
/* 803E42B0  50 C0 17 7A */	rlwimi r0, r6, 2, 0x1d, 0x1d
/* 803E42B4  98 1D 00 01 */	stb r0, 1(r29)
/* 803E42B8  4B FE 71 59 */	bl mNpc_CopyAnimalPersonalID
/* 803E42BC  7F E3 07 74 */	extsb r3, r31
/* 803E42C0  88 1D 00 2A */	lbz r0, 0x2a(r29)
/* 803E42C4  50 60 1E 38 */	rlwimi r0, r3, 3, 0x18, 0x1c
/* 803E42C8  38 60 00 02 */	li r3, 2
/* 803E42CC  98 1D 00 2A */	stb r0, 0x2a(r29)
/* 803E42D0  88 1D 00 2A */	lbz r0, 0x2a(r29)
/* 803E42D4  50 60 07 7E */	rlwimi r0, r3, 0, 0x1d, 0x1f
/* 803E42D8  98 1D 00 2A */	stb r0, 0x2a(r29)
/* 803E42DC  B3 DD 00 28 */	sth r30, 0x28(r29)
lbl_803E42E0:
/* 803E42E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803E42E4  4B CB 6C 3D */	bl func_8009AF20
/* 803E42E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E42EC  7C 08 03 A6 */	mtlr r0
/* 803E42F0  38 21 00 20 */	addi r1, r1, 0x20
/* 803E42F4  4E 80 00 20 */	blr 
