lbl_803E67BC:
/* 803E67BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E67C0  7C 08 02 A6 */	mflr r0
/* 803E67C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E67C8  3C A0 81 17 */	lis r5, data_81171428@ha /* 0x81171428@ha */
/* 803E67CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E67D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E67D4  3C 83 00 02 */	addis r4, r3, 2
/* 803E67D8  38 65 14 28 */	addi r3, r5, data_81171428@l /* 0x81171428@l */
/* 803E67DC  80 A4 0F 08 */	lwz r5, 0xf08(r4)
/* 803E67E0  80 C4 0F 0C */	lwz r6, 0xf0c(r4)
/* 803E67E4  4B FD 89 6D */	bl mMld_TransformMelodyData_u64_2_u8
/* 803E67E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E67EC  7C 08 03 A6 */	mtlr r0
/* 803E67F0  38 21 00 10 */	addi r1, r1, 0x10
/* 803E67F4  4E 80 00 20 */	blr 
