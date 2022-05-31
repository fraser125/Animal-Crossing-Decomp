lbl_804D9A50:
/* 804D9A50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D9A54  7C 08 02 A6 */	mflr r0
/* 804D9A58  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804D9A5C  7C 65 1B 78 */	mr r5, r3
/* 804D9A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D9A64  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 804D9A68  38 C0 00 02 */	li r6, 2
/* 804D9A6C  80 85 12 0C */	lwz r4, 0x120c(r5)
/* 804D9A70  38 A5 12 00 */	addi r5, r5, 0x1200
/* 804D9A74  80 63 00 00 */	lwz r3, 0(r3)
/* 804D9A78  48 00 F6 B5 */	bl func_804E912C
/* 804D9A7C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804D9A80  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804D9A84  80 63 00 00 */	lwz r3, 0(r3)
/* 804D9A88  4B F0 19 FD */	bl mPlib_strength_request_main_wade_snowball_priority
/* 804D9A8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D9A90  7C 08 03 A6 */	mtlr r0
/* 804D9A94  38 21 00 10 */	addi r1, r1, 0x10
/* 804D9A98  4E 80 00 20 */	blr 
