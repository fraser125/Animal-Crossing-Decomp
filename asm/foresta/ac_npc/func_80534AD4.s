lbl_80534AD4:
/* 80534AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80534AD8  7C 08 02 A6 */	mflr r0
/* 80534ADC  3C A0 80 6A */	lis r5, act_idx_3329@ha /* 0x806A2738@ha */
/* 80534AE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80534AE4  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80534AE8  98 83 07 F6 */	stb r4, 0x7f6(r3)
/* 80534AEC  38 85 27 38 */	addi r4, r5, act_idx_3329@l /* 0x806A2738@l */
/* 80534AF0  7C 84 00 AE */	lbzx r4, r4, r0
/* 80534AF4  4B FF B2 39 */	bl aNPC_setupAction
/* 80534AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80534AFC  7C 08 03 A6 */	mtlr r0
/* 80534B00  38 21 00 10 */	addi r1, r1, 0x10
/* 80534B04  4E 80 00 20 */	blr 
