lbl_803E2AD4:
/* 803E2AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E2AD8  7C 08 02 A6 */	mflr r0
/* 803E2ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E2AE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E2AE4  7C 9F 23 78 */	mr r31, r4
/* 803E2AE8  93 C1 00 08 */	stw r30, 8(r1)
/* 803E2AEC  7C 7E 1B 78 */	mr r30, r3
/* 803E2AF0  4B FF FF 65 */	bl mQst_CopyQuestInfo
/* 803E2AF4  38 7E 00 0C */	addi r3, r30, 0xc
/* 803E2AF8  38 9F 00 0C */	addi r4, r31, 0xc
/* 803E2AFC  4B FE 89 15 */	bl mNpc_CopyAnimalPersonalID
/* 803E2B00  38 7E 00 1A */	addi r3, r30, 0x1a
/* 803E2B04  38 9F 00 1A */	addi r4, r31, 0x1a
/* 803E2B08  4B FE 89 09 */	bl mNpc_CopyAnimalPersonalID
/* 803E2B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E2B10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E2B14  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E2B18  7C 08 03 A6 */	mtlr r0
/* 803E2B1C  38 21 00 10 */	addi r1, r1, 0x10
/* 803E2B20  4E 80 00 20 */	blr 
