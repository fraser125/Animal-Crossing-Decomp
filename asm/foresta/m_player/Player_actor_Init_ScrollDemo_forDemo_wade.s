lbl_804D99C0:
/* 804D99C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D99C4  7C 08 02 A6 */	mflr r0
/* 804D99C8  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804D99CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D99D0  38 A4 52 F0 */	addi r5, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 804D99D4  80 83 12 0C */	lwz r4, 0x120c(r3)
/* 804D99D8  80 65 00 00 */	lwz r3, 0(r5)
/* 804D99DC  38 A0 00 13 */	li r5, 0x13
/* 804D99E0  48 02 4A B9 */	bl func_804FE498
/* 804D99E4  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804D99E8  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804D99EC  80 63 00 00 */	lwz r3, 0(r3)
/* 804D99F0  4B F0 1A 31 */	bl mPlib_strength_request_main_demo_wade_priority
/* 804D99F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D99F8  7C 08 03 A6 */	mtlr r0
/* 804D99FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804D9A00  4E 80 00 20 */	blr 
