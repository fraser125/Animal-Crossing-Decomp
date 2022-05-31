lbl_80399AD0:
/* 80399AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80399AD4  7C 08 02 A6 */	mflr r0
/* 80399AD8  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80399ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80399AE0  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80399AE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80399AE8  48 04 16 3D */	bl mPlib_check_request_main_door_type2_priority
/* 80399AEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80399AF0  7C 08 03 A6 */	mtlr r0
/* 80399AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80399AF8  4E 80 00 20 */	blr 
