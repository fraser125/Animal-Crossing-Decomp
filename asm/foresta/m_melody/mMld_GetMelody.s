lbl_803BF244:
/* 803BF244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF248  7C 08 02 A6 */	mflr r0
/* 803BF24C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803BF250  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803BF254  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF258  3C 84 00 02 */	addis r4, r4, 2
/* 803BF25C  80 A4 0F 08 */	lwz r5, 0xf08(r4)
/* 803BF260  80 C4 0F 0C */	lwz r6, 0xf0c(r4)
/* 803BF264  4B FF FE ED */	bl mMld_TransformMelodyData_u64_2_u8
/* 803BF268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF26C  7C 08 03 A6 */	mtlr r0
/* 803BF270  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF274  4E 80 00 20 */	blr 
