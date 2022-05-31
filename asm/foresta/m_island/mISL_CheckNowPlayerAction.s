lbl_803B40B0:
/* 803B40B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B40B4  7C 08 02 A6 */	mflr r0
/* 803B40B8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803B40BC  7C 64 1B 78 */	mr r4, r3
/* 803B40C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B40C4  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803B40C8  3C 63 00 02 */	addis r3, r3, 2
/* 803B40CC  38 00 00 00 */	li r0, 0
/* 803B40D0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803B40D4  28 03 00 00 */	cmplwi r3, 0
/* 803B40D8  41 82 00 0C */	beq lbl_803B40E4
/* 803B40DC  4B FF FF 79 */	bl mISL_CheckPlayerAction
/* 803B40E0  7C 60 1B 78 */	mr r0, r3
lbl_803B40E4:
/* 803B40E4  7C 03 03 78 */	mr r3, r0
/* 803B40E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B40EC  7C 08 03 A6 */	mtlr r0
/* 803B40F0  38 21 00 10 */	addi r1, r1, 0x10
/* 803B40F4  4E 80 00 20 */	blr 
