lbl_803B60B0:
/* 803B60B0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B60B4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B60B8  3C 63 00 02 */	addis r3, r3, 2
/* 803B60BC  88 03 61 24 */	lbz r0, 0x6124(r3)
/* 803B60C0  54 00 08 3C */	slwi r0, r0, 1
/* 803B60C4  7C 63 02 14 */	add r3, r3, r0
/* 803B60C8  A0 63 04 80 */	lhz r3, 0x480(r3)
/* 803B60CC  4E 80 00 20 */	blr 
