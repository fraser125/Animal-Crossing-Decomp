lbl_803BF278:
/* 803BF278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF27C  7C 08 02 A6 */	mflr r0
/* 803BF280  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803BF284  7C 64 1B 78 */	mr r4, r3
/* 803BF288  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803BF28C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF290  3C 63 00 02 */	addis r3, r3, 2
/* 803BF294  38 63 0F 08 */	addi r3, r3, 0xf08
/* 803BF298  4B FF FF 29 */	bl mMld_TransformMelodyData_u8_2_u64
/* 803BF29C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF2A0  7C 08 03 A6 */	mtlr r0
/* 803BF2A4  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF2A8  4E 80 00 20 */	blr 
