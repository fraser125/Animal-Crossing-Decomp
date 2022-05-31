lbl_804289B4:
/* 804289B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804289B8  7C 08 02 A6 */	mflr r0
/* 804289BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804289C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804289C4  7C 7F 1B 78 */	mr r31, r3
/* 804289C8  4B F9 6C E1 */	bl func_803BF6A8
/* 804289CC  88 BF 02 83 */	lbz r5, 0x283(r31)
/* 804289D0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804289D4  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 804289D8  38 80 00 02 */	li r4, 2
/* 804289DC  1C A5 26 B0 */	mulli r5, r5, 0x26b0
/* 804289E0  38 C0 00 08 */	li r6, 8
/* 804289E4  7C A0 2A 14 */	add r5, r0, r5
/* 804289E8  3C A5 00 01 */	addis r5, r5, 1
/* 804289EC  38 A5 9C E8 */	addi r5, r5, -25368
/* 804289F0  4B F9 72 65 */	bl mMsg_Set_free_str
/* 804289F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804289F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804289FC  7C 08 03 A6 */	mtlr r0
/* 80428A00  38 21 00 10 */	addi r1, r1, 0x10
/* 80428A04  4E 80 00 20 */	blr 
