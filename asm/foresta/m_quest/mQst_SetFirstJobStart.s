lbl_803E3D48:
/* 803E3D48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E3D4C  7C 08 02 A6 */	mflr r0
/* 803E3D50  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E3D54  39 61 00 20 */	addi r11, r1, 0x20
/* 803E3D58  4B CB 71 7D */	bl func_8009AED4
/* 803E3D5C  7C 7D 1B 79 */	or. r29, r3, r3
/* 803E3D60  41 82 00 6C */	beq lbl_803E3DCC
/* 803E3D64  38 80 00 01 */	li r4, 1
/* 803E3D68  4B FF EB E5 */	bl mQst_ClearErrand
/* 803E3D6C  88 1D 00 00 */	lbz r0, 0(r29)
/* 803E3D70  38 60 00 01 */	li r3, 1
/* 803E3D74  50 60 36 32 */	rlwimi r0, r3, 6, 0x18, 0x19
/* 803E3D78  38 80 00 0E */	li r4, 0xe
/* 803E3D7C  98 1D 00 00 */	stb r0, 0(r29)
/* 803E3D80  3B E0 00 00 */	li r31, 0
/* 803E3D84  38 60 00 02 */	li r3, 2
/* 803E3D88  3B C0 00 00 */	li r30, 0
/* 803E3D8C  88 1D 00 00 */	lbz r0, 0(r29)
/* 803E3D90  50 80 06 BE */	rlwimi r0, r4, 0, 0x1a, 0x1f
/* 803E3D94  98 1D 00 00 */	stb r0, 0(r29)
/* 803E3D98  88 1D 00 01 */	lbz r0, 1(r29)
/* 803E3D9C  53 E0 1E 78 */	rlwimi r0, r31, 3, 0x19, 0x1c
/* 803E3DA0  98 1D 00 01 */	stb r0, 1(r29)
/* 803E3DA4  88 1D 00 2A */	lbz r0, 0x2a(r29)
/* 803E3DA8  50 60 07 7E */	rlwimi r0, r3, 0, 0x1d, 0x1f
/* 803E3DAC  98 1D 00 2A */	stb r0, 0x2a(r29)
lbl_803E3DB0:
/* 803E3DB0  38 7F 00 2C */	addi r3, r31, 0x2c
/* 803E3DB4  7C 7D 1A 14 */	add r3, r29, r3
/* 803E3DB8  4B FE 75 CD */	bl mNpc_ClearAnimalPersonalID
/* 803E3DBC  3B DE 00 01 */	addi r30, r30, 1
/* 803E3DC0  3B FF 00 0E */	addi r31, r31, 0xe
/* 803E3DC4  2C 1E 00 02 */	cmpwi r30, 2
/* 803E3DC8  41 80 FF E8 */	blt lbl_803E3DB0
lbl_803E3DCC:
/* 803E3DCC  39 61 00 20 */	addi r11, r1, 0x20
/* 803E3DD0  4B CB 71 51 */	bl func_8009AF20
/* 803E3DD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E3DD8  7C 08 03 A6 */	mtlr r0
/* 803E3DDC  38 21 00 20 */	addi r1, r1, 0x20
/* 803E3DE0  4E 80 00 20 */	blr 
