lbl_804D9A04:
/* 804D9A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D9A08  7C 08 02 A6 */	mflr r0
/* 804D9A0C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804D9A10  7C 66 1B 78 */	mr r6, r3
/* 804D9A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D9A18  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 804D9A1C  38 A0 00 13 */	li r5, 0x13
/* 804D9A20  80 86 12 0C */	lwz r4, 0x120c(r6)
/* 804D9A24  80 63 00 00 */	lwz r3, 0(r3)
/* 804D9A28  C0 26 12 18 */	lfs f1, 0x1218(r6)
/* 804D9A2C  48 02 DD 91 */	bl func_805077BC
/* 804D9A30  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804D9A34  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804D9A38  80 63 00 00 */	lwz r3, 0(r3)
/* 804D9A3C  4B F0 1A AD */	bl mPlib_strength_request_main_demo_geton_boat_wade_priority
/* 804D9A40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D9A44  7C 08 03 A6 */	mtlr r0
/* 804D9A48  38 21 00 10 */	addi r1, r1, 0x10
/* 804D9A4C  4E 80 00 20 */	blr 
