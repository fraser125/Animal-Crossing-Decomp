lbl_804854B4:
/* 804854B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804854B8  7C 08 02 A6 */	mflr r0
/* 804854BC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804854C0  38 A0 00 07 */	li r5, 7
/* 804854C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804854C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804854CC  93 C1 00 08 */	stw r30, 8(r1)
/* 804854D0  7C 7E 1B 78 */	mr r30, r3
/* 804854D4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804854D8  3C 63 00 02 */	addis r3, r3, 2
/* 804854DC  38 9E 00 10 */	addi r4, r30, 0x10
/* 804854E0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804854E4  4B F4 68 95 */	bl mNpc_GetAnimalMemoryIdx
/* 804854E8  7C 7F 1B 78 */	mr r31, r3
/* 804854EC  2C 1F FF FF */	cmpwi r31, -1
/* 804854F0  41 82 00 28 */	beq lbl_80485518
/* 804854F4  7F C3 F3 78 */	mr r3, r30
/* 804854F8  4B F5 08 05 */	bl mNpc_CheckIslandAnimal
/* 804854FC  2C 03 00 00 */	cmpwi r3, 0
/* 80485500  40 82 00 18 */	bne lbl_80485518
/* 80485504  1C 7F 01 38 */	mulli r3, r31, 0x138
/* 80485508  38 80 00 06 */	li r4, 6
/* 8048550C  38 63 00 2C */	addi r3, r3, 0x2c
/* 80485510  7C 7E 1A 14 */	add r3, r30, r3
/* 80485514  4B F2 E4 F5 */	bl mLd_SetFreeStrLandMuraName
lbl_80485518:
/* 80485518  7F C3 F3 78 */	mr r3, r30
/* 8048551C  4B F5 07 E1 */	bl mNpc_CheckIslandAnimal
/* 80485520  2C 03 00 00 */	cmpwi r3, 0
/* 80485524  40 82 00 10 */	bne lbl_80485534
/* 80485528  38 7E 08 D8 */	addi r3, r30, 0x8d8
/* 8048552C  38 80 00 0A */	li r4, 0xa
/* 80485530  4B F2 E4 D9 */	bl mLd_SetFreeStrLandMuraName
lbl_80485534:
/* 80485534  38 7E 00 04 */	addi r3, r30, 4
/* 80485538  38 80 00 0B */	li r4, 0xb
/* 8048553C  4B F2 E4 CD */	bl mLd_SetFreeStrLandMuraName
/* 80485540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80485548  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048554C  7C 08 03 A6 */	mtlr r0
/* 80485550  38 21 00 10 */	addi r1, r1, 0x10
/* 80485554  4E 80 00 20 */	blr 
