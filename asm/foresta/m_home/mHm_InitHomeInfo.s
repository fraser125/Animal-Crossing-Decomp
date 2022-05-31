lbl_803B3064:
/* 803B3064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B3068  7C 08 02 A6 */	mflr r0
/* 803B306C  1C A4 24 40 */	mulli r5, r4, 0x2440
/* 803B3070  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B3074  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3078  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803B307C  7C 80 2A 14 */	add r4, r0, r5
/* 803B3080  38 84 00 20 */	addi r4, r4, 0x20
/* 803B3084  48 02 D0 9D */	bl mPr_CopyPersonalID
/* 803B3088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B308C  7C 08 03 A6 */	mtlr r0
/* 803B3090  38 21 00 10 */	addi r1, r1, 0x10
/* 803B3094  4E 80 00 20 */	blr 
