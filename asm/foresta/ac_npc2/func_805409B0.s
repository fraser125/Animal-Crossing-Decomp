lbl_805409B0:
/* 805409B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805409B4  7C 08 02 A6 */	mflr r0
/* 805409B8  3C A0 80 6A */	lis r5, act_idx_2386@ha /* 0x806A3CD0@ha */
/* 805409BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805409C0  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 805409C4  98 83 07 F6 */	stb r4, 0x7f6(r3)
/* 805409C8  38 85 3C D0 */	addi r4, r5, act_idx_2386@l /* 0x806A3CD0@l */
/* 805409CC  7C 84 00 AE */	lbzx r4, r4, r0
/* 805409D0  4B FF D3 81 */	bl aNPC_setupAction
/* 805409D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805409D8  7C 08 03 A6 */	mtlr r0
/* 805409DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805409E0  4E 80 00 20 */	blr 
