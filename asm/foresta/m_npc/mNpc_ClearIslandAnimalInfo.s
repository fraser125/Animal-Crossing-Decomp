lbl_803CC4D8:
/* 803CC4D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CC4DC  7C 08 02 A6 */	mflr r0
/* 803CC4E0  38 80 09 88 */	li r4, 0x988
/* 803CC4E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CC4E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CC4EC  7C 7F 1B 78 */	mr r31, r3
/* 803CC4F0  4B C9 0B 79 */	bl bzero
/* 803CC4F4  7F E3 FB 78 */	mr r3, r31
/* 803CC4F8  4B FF EE 8D */	bl mNpc_ClearAnimalPersonalID
/* 803CC4FC  38 7F 00 10 */	addi r3, r31, 0x10
/* 803CC500  38 80 00 07 */	li r4, 7
/* 803CC504  4B FF F2 6D */	bl mNpc_ClearIslandAnimalMemory
/* 803CC508  38 A0 00 00 */	li r5, 0
/* 803CC50C  38 00 00 FF */	li r0, 0xff
/* 803CC510  B0 BF 08 E4 */	sth r5, 0x8e4(r31)
/* 803CC514  38 7F 08 9D */	addi r3, r31, 0x89d
/* 803CC518  38 80 00 0A */	li r4, 0xa
/* 803CC51C  98 BF 08 98 */	stb r5, 0x898(r31)
/* 803CC520  98 1F 08 99 */	stb r0, 0x899(r31)
/* 803CC524  98 1F 08 9A */	stb r0, 0x89a(r31)
/* 803CC528  98 1F 08 9B */	stb r0, 0x89b(r31)
/* 803CC52C  98 1F 08 9C */	stb r0, 0x89c(r31)
/* 803CC530  4B FF EE 01 */	bl mNpc_ClearBufSpace1
/* 803CC534  38 7F 08 A8 */	addi r3, r31, 0x8a8
/* 803CC538  48 01 64 A9 */	bl mQst_ClearContest
/* 803CC53C  38 60 00 00 */	li r3, 0
/* 803CC540  38 00 00 01 */	li r0, 1
/* 803CC544  B0 7F 08 E6 */	sth r3, 0x8e6(r31)
/* 803CC548  38 7F 08 D0 */	addi r3, r31, 0x8d0
/* 803CC54C  98 1F 08 E8 */	stb r0, 0x8e8(r31)
/* 803CC550  48 01 39 45 */	bl func_803DFE94
/* 803CC554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CC558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CC55C  7C 08 03 A6 */	mtlr r0
/* 803CC560  38 21 00 10 */	addi r1, r1, 0x10
/* 803CC564  4E 80 00 20 */	blr 
