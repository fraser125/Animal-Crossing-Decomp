lbl_803E4B94:
/* 803E4B94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E4B98  7C 08 02 A6 */	mflr r0
/* 803E4B9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E4BA0  39 61 00 20 */	addi r11, r1, 0x20
/* 803E4BA4  4B CB 63 31 */	bl func_8009AED4
/* 803E4BA8  7C BE 2B 78 */	mr r30, r5
/* 803E4BAC  7C 7D 1B 78 */	mr r29, r3
/* 803E4BB0  7C 83 23 78 */	mr r3, r4
/* 803E4BB4  7F C4 F3 78 */	mr r4, r30
/* 803E4BB8  4B FF FF C5 */	bl mRF_BlockTypeDirect2GateType
/* 803E4BBC  7C 7F 1B 78 */	mr r31, r3
/* 803E4BC0  4B FF FE C1 */	bl mRF_GateType2GateCount
/* 803E4BC4  3C 80 80 66 */	lis r4, mRF_gate_correct_info@ha /* 0x8065C270@ha */
/* 803E4BC8  90 7D 00 00 */	stw r3, 0(r29)
/* 803E4BCC  57 E5 20 36 */	slwi r5, r31, 4
/* 803E4BD0  57 C0 10 3A */	slwi r0, r30, 2
/* 803E4BD4  38 64 C2 70 */	addi r3, r4, mRF_gate_correct_info@l /* 0x8065C270@l */
/* 803E4BD8  7C 63 2A 14 */	add r3, r3, r5
/* 803E4BDC  7C 63 00 2E */	lwzx r3, r3, r0
/* 803E4BE0  39 61 00 20 */	addi r11, r1, 0x20
/* 803E4BE4  4B CB 63 3D */	bl func_8009AF20
/* 803E4BE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E4BEC  7C 08 03 A6 */	mtlr r0
/* 803E4BF0  38 21 00 20 */	addi r1, r1, 0x20
/* 803E4BF4  4E 80 00 20 */	blr 
