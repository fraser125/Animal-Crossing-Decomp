lbl_8053389C:
/* 8053389C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805338A0  7C 08 02 A6 */	mflr r0
/* 805338A4  3C A0 80 6A */	lis r5, act_idx_2962@ha /* 0x806A2610@ha */
/* 805338A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805338AC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 805338B0  98 83 07 F6 */	stb r4, 0x7f6(r3)
/* 805338B4  38 85 26 10 */	addi r4, r5, act_idx_2962@l /* 0x806A2610@l */
/* 805338B8  7C 84 00 AE */	lbzx r4, r4, r0
/* 805338BC  4B FF C4 71 */	bl aNPC_setupAction
/* 805338C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805338C4  7C 08 03 A6 */	mtlr r0
/* 805338C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805338CC  4E 80 00 20 */	blr 
