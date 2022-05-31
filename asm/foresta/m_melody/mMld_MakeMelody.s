lbl_803BF2AC:
/* 803BF2AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF2B0  7C 08 02 A6 */	mflr r0
/* 803BF2B4  3C 80 81 17 */	lis r4, melody_408@ha /* 0x81169FA0@ha */
/* 803BF2B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF2BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BF2C0  7C 7F 1B 78 */	mr r31, r3
/* 803BF2C4  38 64 9F A0 */	addi r3, r4, melody_408@l /* 0x81169FA0@l */
/* 803BF2C8  4B FF FF 7D */	bl mMld_GetMelody
/* 803BF2CC  3C 80 81 17 */	lis r4, melody_408@ha /* 0x81169FA0@ha */
/* 803BF2D0  7F E3 FB 78 */	mr r3, r31
/* 803BF2D4  38 84 9F A0 */	addi r4, r4, melody_408@l /* 0x81169FA0@l */
/* 803BF2D8  48 26 EB AD */	bl sAdo_Inst
/* 803BF2DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF2E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BF2E4  7C 08 03 A6 */	mtlr r0
/* 803BF2E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF2EC  4E 80 00 20 */	blr 
