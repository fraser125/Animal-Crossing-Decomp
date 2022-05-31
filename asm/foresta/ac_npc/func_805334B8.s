lbl_805334B8:
/* 805334B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805334BC  7C 08 02 A6 */	mflr r0
/* 805334C0  3C A0 80 6A */	lis r5, act_idx_2885@ha /* 0x806A25E8@ha */
/* 805334C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805334C8  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 805334CC  98 83 07 F6 */	stb r4, 0x7f6(r3)
/* 805334D0  38 85 25 E8 */	addi r4, r5, act_idx_2885@l /* 0x806A25E8@l */
/* 805334D4  7C 84 00 AE */	lbzx r4, r4, r0
/* 805334D8  4B FF C8 55 */	bl aNPC_setupAction
/* 805334DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805334E0  7C 08 03 A6 */	mtlr r0
/* 805334E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805334E8  4E 80 00 20 */	blr 
