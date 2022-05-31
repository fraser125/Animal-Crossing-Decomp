lbl_804887C8:
/* 804887C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804887CC  7C 08 02 A6 */	mflr r0
/* 804887D0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804887D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804887D8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804887DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804887E0  7C 9F 23 79 */	or. r31, r4, r4
/* 804887E4  93 C1 00 08 */	stw r30, 8(r1)
/* 804887E8  7C 7E 1B 78 */	mr r30, r3
/* 804887EC  3C 65 00 02 */	addis r3, r5, 2
/* 804887F0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804887F4  41 82 00 48 */	beq lbl_8048883C
/* 804887F8  38 A0 00 07 */	li r5, 7
/* 804887FC  4B F4 35 7D */	bl mNpc_GetAnimalMemoryIdx
/* 80488800  2C 03 FF FF */	cmpwi r3, -1
/* 80488804  41 82 00 38 */	beq lbl_8048883C
/* 80488808  1C 03 01 38 */	mulli r0, r3, 0x138
/* 8048880C  7F C3 F3 78 */	mr r3, r30
/* 80488810  7F FF 02 14 */	add r31, r31, r0
/* 80488814  4B F4 D4 E9 */	bl mNpc_CheckIslandAnimal
/* 80488818  2C 03 00 01 */	cmpwi r3, 1
/* 8048881C  40 82 00 14 */	bne lbl_80488830
/* 80488820  7F E3 FB 78 */	mr r3, r31
/* 80488824  38 80 00 01 */	li r4, 1
/* 80488828  4B F4 2F 49 */	bl mNpc_ClearIslandAnimalMemory
/* 8048882C  48 00 00 10 */	b lbl_8048883C
lbl_80488830:
/* 80488830  7F E3 FB 78 */	mr r3, r31
/* 80488834  38 80 00 01 */	li r4, 1
/* 80488838  4B F4 2E 7D */	bl mNpc_ClearAnimalMemory
lbl_8048883C:
/* 8048883C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80488840  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80488844  83 C1 00 08 */	lwz r30, 8(r1)
/* 80488848  7C 08 03 A6 */	mtlr r0
/* 8048884C  38 21 00 10 */	addi r1, r1, 0x10
/* 80488850  4E 80 00 20 */	blr 
