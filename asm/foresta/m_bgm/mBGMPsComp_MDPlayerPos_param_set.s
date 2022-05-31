lbl_8037C7C8:
/* 8037C7C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037C7CC  7C 08 02 A6 */	mflr r0
/* 8037C7D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037C7D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8037C7D8  4B D1 E6 F9 */	bl func_8009AED0
/* 8037C7DC  3C E0 81 13 */	lis r7, data_811351C0@ha /* 0x811351C0@ha */
/* 8037C7E0  7C 9C 23 78 */	mr r28, r4
/* 8037C7E4  3B E7 51 C0 */	addi r31, r7, data_811351C0@l /* 0x811351C0@l */
/* 8037C7E8  7C 64 1B 78 */	mr r4, r3
/* 8037C7EC  7C BD 2B 78 */	mr r29, r5
/* 8037C7F0  7C DE 33 78 */	mr r30, r6
/* 8037C7F4  38 7F 02 E0 */	addi r3, r31, 0x2e0
/* 8037C7F8  48 03 E6 C5 */	bl xyz_t_move
/* 8037C7FC  B3 9F 02 EC */	sth r28, 0x2ec(r31)
/* 8037C800  B3 BF 02 EE */	sth r29, 0x2ee(r31)
/* 8037C804  93 DF 02 F0 */	stw r30, 0x2f0(r31)
/* 8037C808  39 61 00 20 */	addi r11, r1, 0x20
/* 8037C80C  4B D1 E7 11 */	bl func_8009AF1C
/* 8037C810  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037C814  7C 08 03 A6 */	mtlr r0
/* 8037C818  38 21 00 20 */	addi r1, r1, 0x20
/* 8037C81C  4E 80 00 20 */	blr 
