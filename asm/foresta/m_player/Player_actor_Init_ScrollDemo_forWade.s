lbl_804D997C:
/* 804D997C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D9980  7C 08 02 A6 */	mflr r0
/* 804D9984  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804D9988  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D998C  38 A4 52 F0 */	addi r5, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 804D9990  80 83 12 0C */	lwz r4, 0x120c(r3)
/* 804D9994  80 65 00 00 */	lwz r3, 0(r5)
/* 804D9998  38 A0 00 02 */	li r5, 2
/* 804D999C  48 00 F3 89 */	bl Player_actor_request_main_wade_all
/* 804D99A0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804D99A4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804D99A8  80 63 00 00 */	lwz r3, 0(r3)
/* 804D99AC  4B F0 1A 11 */	bl mPlib_strength_request_main_wade_priority
/* 804D99B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D99B4  7C 08 03 A6 */	mtlr r0
/* 804D99B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D99BC  4E 80 00 20 */	blr 
