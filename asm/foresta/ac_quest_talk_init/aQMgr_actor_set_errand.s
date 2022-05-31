lbl_8048AB7C:
/* 8048AB7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048AB80  7C 08 02 A6 */	mflr r0
/* 8048AB84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048AB88  39 61 00 20 */	addi r11, r1, 0x20
/* 8048AB8C  4B C1 03 3D */	bl func_8009AEC8
/* 8048AB90  7C 7A 1B 78 */	mr r26, r3
/* 8048AB94  7C 9E 23 78 */	mr r30, r4
/* 8048AB98  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 8048AB9C  7F 44 D3 78 */	mr r4, r26
/* 8048ABA0  7F E3 FB 78 */	mr r3, r31
/* 8048ABA4  3B 7F 00 2C */	addi r27, r31, 0x2c
/* 8048ABA8  4B F5 7E AD */	bl mQst_CopyQuestInfo
/* 8048ABAC  7F C4 F3 78 */	mr r4, r30
/* 8048ABB0  38 7F 00 1A */	addi r3, r31, 0x1a
/* 8048ABB4  4B F4 08 5D */	bl mNpc_CopyAnimalPersonalID
/* 8048ABB8  80 9A 00 10 */	lwz r4, 0x10(r26)
/* 8048ABBC  38 7F 00 0C */	addi r3, r31, 0xc
/* 8048ABC0  4B F4 08 51 */	bl mNpc_CopyAnimalPersonalID
/* 8048ABC4  80 7A 00 28 */	lwz r3, 0x28(r26)
/* 8048ABC8  80 1A 00 2C */	lwz r0, 0x2c(r26)
/* 8048ABCC  90 7F 00 02 */	stw r3, 2(r31)
/* 8048ABD0  90 1F 00 06 */	stw r0, 6(r31)
/* 8048ABD4  A0 1A 00 18 */	lhz r0, 0x18(r26)
/* 8048ABD8  B0 1F 00 28 */	sth r0, 0x28(r31)
/* 8048ABDC  80 7A 00 14 */	lwz r3, 0x14(r26)
/* 8048ABE0  88 1F 00 2A */	lbz r0, 0x2a(r31)
/* 8048ABE4  7C 63 07 74 */	extsb r3, r3
/* 8048ABE8  50 60 1E 38 */	rlwimi r0, r3, 3, 0x18, 0x1c
/* 8048ABEC  98 1F 00 2A */	stb r0, 0x2a(r31)
/* 8048ABF0  88 7A 00 3C */	lbz r3, 0x3c(r26)
/* 8048ABF4  88 1F 00 2A */	lbz r0, 0x2a(r31)
/* 8048ABF8  50 60 07 7E */	rlwimi r0, r3, 0, 0x1d, 0x1f
/* 8048ABFC  98 1F 00 2A */	stb r0, 0x2a(r31)
/* 8048AC00  88 1A 00 3C */	lbz r0, 0x3c(r26)
/* 8048AC04  2C 00 00 01 */	cmpwi r0, 1
/* 8048AC08  41 82 00 08 */	beq lbl_8048AC10
/* 8048AC0C  48 00 00 78 */	b lbl_8048AC84
lbl_8048AC10:
/* 8048AC10  88 1A 00 00 */	lbz r0, 0(r26)
/* 8048AC14  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 8048AC18  40 82 00 2C */	bne lbl_8048AC44
/* 8048AC1C  3B A0 00 00 */	li r29, 0
/* 8048AC20  3B 40 00 00 */	li r26, 0
/* 8048AC24  7F BC EB 78 */	mr r28, r29
lbl_8048AC28:
/* 8048AC28  7C 7B EA 14 */	add r3, r27, r29
/* 8048AC2C  4B F4 07 59 */	bl mNpc_ClearAnimalPersonalID
/* 8048AC30  3B 5A 00 01 */	addi r26, r26, 1
/* 8048AC34  9B 9F 00 56 */	stb r28, 0x56(r31)
/* 8048AC38  2C 1A 00 03 */	cmpwi r26, 3
/* 8048AC3C  3B BD 00 0E */	addi r29, r29, 0xe
/* 8048AC40  41 80 FF E8 */	blt lbl_8048AC28
lbl_8048AC44:
/* 8048AC44  3B 80 00 00 */	li r28, 0
lbl_8048AC48:
/* 8048AC48  7F 63 DB 78 */	mr r3, r27
/* 8048AC4C  4B F4 07 91 */	bl mNpc_CheckFreeAnimalPersonalID
/* 8048AC50  2C 03 00 01 */	cmpwi r3, 1
/* 8048AC54  40 82 00 14 */	bne lbl_8048AC68
/* 8048AC58  7F 63 DB 78 */	mr r3, r27
/* 8048AC5C  7F C4 F3 78 */	mr r4, r30
/* 8048AC60  4B F4 07 B1 */	bl mNpc_CopyAnimalPersonalID
/* 8048AC64  48 00 00 14 */	b lbl_8048AC78
lbl_8048AC68:
/* 8048AC68  3B 9C 00 01 */	addi r28, r28, 1
/* 8048AC6C  3B 7B 00 0E */	addi r27, r27, 0xe
/* 8048AC70  2C 1C 00 03 */	cmpwi r28, 3
/* 8048AC74  41 80 FF D4 */	blt lbl_8048AC48
lbl_8048AC78:
/* 8048AC78  88 7F 00 56 */	lbz r3, 0x56(r31)
/* 8048AC7C  38 03 00 01 */	addi r0, r3, 1
/* 8048AC80  98 1F 00 56 */	stb r0, 0x56(r31)
lbl_8048AC84:
/* 8048AC84  39 61 00 20 */	addi r11, r1, 0x20
/* 8048AC88  4B C1 02 8D */	bl func_8009AF14
/* 8048AC8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048AC90  7C 08 03 A6 */	mtlr r0
/* 8048AC94  38 21 00 20 */	addi r1, r1, 0x20
/* 8048AC98  4E 80 00 20 */	blr 
