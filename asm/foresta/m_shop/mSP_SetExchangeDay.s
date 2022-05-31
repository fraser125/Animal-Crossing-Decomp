lbl_803E9F5C:
/* 803E9F5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E9F60  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E9F64  3C 83 00 02 */	addis r4, r3, 2
/* 803E9F68  80 64 61 20 */	lwz r3, 0x6120(r4)
/* 803E9F6C  80 04 61 24 */	lwz r0, 0x6124(r4)
/* 803E9F70  90 64 04 6C */	stw r3, 0x46c(r4)
/* 803E9F74  90 04 04 70 */	stw r0, 0x470(r4)
/* 803E9F78  4E 80 00 20 */	blr 
