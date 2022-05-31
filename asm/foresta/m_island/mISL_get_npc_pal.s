lbl_803B42A8:
/* 803B42A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B42AC  7C 08 02 A6 */	mflr r0
/* 803B42B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B42B4  39 61 00 20 */	addi r11, r1, 0x20
/* 803B42B8  4B CE 6C 1D */	bl func_8009AED4
/* 803B42BC  7C BF 2B 78 */	mr r31, r5
/* 803B42C0  7C 7D 1B 78 */	mr r29, r3
/* 803B42C4  2C 1F FF FF */	cmpwi r31, -1
/* 803B42C8  7C 9E 23 78 */	mr r30, r4
/* 803B42CC  41 82 00 40 */	beq lbl_803B430C
/* 803B42D0  28 1D 00 00 */	cmplwi r29, 0
/* 803B42D4  41 82 00 38 */	beq lbl_803B430C
/* 803B42D8  28 1E 00 00 */	cmplwi r30, 0
/* 803B42DC  41 82 00 30 */	beq lbl_803B430C
/* 803B42E0  38 60 00 21 */	li r3, 0x21
/* 803B42E4  4B C5 28 F1 */	bl JW_GetAramAddress
/* 803B42E8  57 E0 28 34 */	slwi r0, r31, 5
/* 803B42EC  7F C4 F3 78 */	mr r4, r30
/* 803B42F0  7C 63 02 14 */	add r3, r3, r0
/* 803B42F4  38 A0 00 20 */	li r5, 0x20
/* 803B42F8  4B C5 29 7D */	bl _JW_GetResourceAram
/* 803B42FC  7F A3 EB 78 */	mr r3, r29
/* 803B4300  7F C4 F3 78 */	mr r4, r30
/* 803B4304  38 A0 00 10 */	li r5, 0x10
/* 803B4308  4B FF FE 15 */	bl mISL_short
lbl_803B430C:
/* 803B430C  39 61 00 20 */	addi r11, r1, 0x20
/* 803B4310  4B CE 6C 11 */	bl func_8009AF20
/* 803B4314  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B4318  7C 08 03 A6 */	mtlr r0
/* 803B431C  38 21 00 20 */	addi r1, r1, 0x20
/* 803B4320  4E 80 00 20 */	blr 
