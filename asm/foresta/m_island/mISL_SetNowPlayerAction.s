lbl_803B4018:
/* 803B4018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B401C  7C 08 02 A6 */	mflr r0
/* 803B4020  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803B4024  7C 64 1B 78 */	mr r4, r3
/* 803B4028  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803B402C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B4030  3C 63 00 02 */	addis r3, r3, 2
/* 803B4034  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803B4038  28 03 00 00 */	cmplwi r3, 0
/* 803B403C  41 82 00 08 */	beq lbl_803B4044
/* 803B4040  4B FF FF 1D */	bl mISL_SetPlayerAction
lbl_803B4044:
/* 803B4044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B4048  7C 08 03 A6 */	mtlr r0
/* 803B404C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4050  4E 80 00 20 */	blr 
