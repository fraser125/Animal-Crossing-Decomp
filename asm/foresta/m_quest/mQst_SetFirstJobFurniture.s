lbl_803E3F14:
/* 803E3F14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E3F18  7C 08 02 A6 */	mflr r0
/* 803E3F1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E3F20  39 61 00 20 */	addi r11, r1, 0x20
/* 803E3F24  4B CB 6F AD */	bl func_8009AED0
/* 803E3F28  7C 7F 1B 79 */	or. r31, r3, r3
/* 803E3F2C  7C 9C 23 78 */	mr r28, r4
/* 803E3F30  7C BD 2B 78 */	mr r29, r5
/* 803E3F34  7C DE 33 78 */	mr r30, r6
/* 803E3F38  41 82 00 98 */	beq lbl_803E3FD0
/* 803E3F3C  88 1F 00 00 */	lbz r0, 0(r31)
/* 803E3F40  38 60 00 01 */	li r3, 1
/* 803E3F44  50 60 36 32 */	rlwimi r0, r3, 6, 0x18, 0x19
/* 803E3F48  38 E0 00 05 */	li r7, 5
/* 803E3F4C  98 1F 00 00 */	stb r0, 0(r31)
/* 803E3F50  38 C0 00 00 */	li r6, 0
/* 803E3F54  38 A0 00 02 */	li r5, 2
/* 803E3F58  38 7F 00 0C */	addi r3, r31, 0xc
/* 803E3F5C  88 1F 00 00 */	lbz r0, 0(r31)
/* 803E3F60  50 E0 06 BE */	rlwimi r0, r7, 0, 0x1a, 0x1f
/* 803E3F64  98 1F 00 00 */	stb r0, 0(r31)
/* 803E3F68  88 1F 00 01 */	lbz r0, 1(r31)
/* 803E3F6C  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 803E3F70  98 1F 00 01 */	stb r0, 1(r31)
/* 803E3F74  88 1F 00 01 */	lbz r0, 1(r31)
/* 803E3F78  50 A0 1E 78 */	rlwimi r0, r5, 3, 0x19, 0x1c
/* 803E3F7C  98 1F 00 01 */	stb r0, 1(r31)
/* 803E3F80  88 1F 00 01 */	lbz r0, 1(r31)
/* 803E3F84  50 C0 17 7A */	rlwimi r0, r6, 2, 0x1d, 0x1d
/* 803E3F88  98 1F 00 01 */	stb r0, 1(r31)
/* 803E3F8C  4B FE 74 85 */	bl mNpc_CopyAnimalPersonalID
/* 803E3F90  7F 84 E3 78 */	mr r4, r28
/* 803E3F94  38 7F 00 2C */	addi r3, r31, 0x2c
/* 803E3F98  4B FE 74 79 */	bl mNpc_CopyAnimalPersonalID
/* 803E3F9C  88 1F 00 48 */	lbz r0, 0x48(r31)
/* 803E3FA0  38 60 00 01 */	li r3, 1
/* 803E3FA4  50 60 0E 3C */	rlwimi r0, r3, 1, 0x18, 0x1e
/* 803E3FA8  7F C4 07 74 */	extsb r4, r30
/* 803E3FAC  98 1F 00 48 */	stb r0, 0x48(r31)
/* 803E3FB0  38 60 00 02 */	li r3, 2
/* 803E3FB4  88 1F 00 2A */	lbz r0, 0x2a(r31)
/* 803E3FB8  50 80 1E 38 */	rlwimi r0, r4, 3, 0x18, 0x1c
/* 803E3FBC  98 1F 00 2A */	stb r0, 0x2a(r31)
/* 803E3FC0  88 1F 00 2A */	lbz r0, 0x2a(r31)
/* 803E3FC4  50 60 07 7E */	rlwimi r0, r3, 0, 0x1d, 0x1f
/* 803E3FC8  98 1F 00 2A */	stb r0, 0x2a(r31)
/* 803E3FCC  B3 BF 00 28 */	sth r29, 0x28(r31)
lbl_803E3FD0:
/* 803E3FD0  39 61 00 20 */	addi r11, r1, 0x20
/* 803E3FD4  4B CB 6F 49 */	bl func_8009AF1C
/* 803E3FD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E3FDC  7C 08 03 A6 */	mtlr r0
/* 803E3FE0  38 21 00 20 */	addi r1, r1, 0x20
/* 803E3FE4  4E 80 00 20 */	blr 
