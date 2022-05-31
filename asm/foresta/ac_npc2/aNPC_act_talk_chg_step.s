lbl_8053FA7C:
/* 8053FA7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FA80  7C 08 02 A6 */	mflr r0
/* 8053FA84  3C A0 80 6A */	lis r5, act_idx_2067@ha /* 0x806A3BB0@ha */
/* 8053FA88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FA8C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8053FA90  38 A5 3B B0 */	addi r5, r5, act_idx_2067@l /* 0x806A3BB0@l */
/* 8053FA94  88 C3 07 F5 */	lbz r6, 0x7f5(r3)
/* 8053FA98  20 C6 00 05 */	subfic r6, r6, 5
/* 8053FA9C  98 83 07 F6 */	stb r4, 0x7f6(r3)
/* 8053FAA0  30 86 FF FF */	addic r4, r6, -1
/* 8053FAA4  7C 84 31 10 */	subfe r4, r4, r6
/* 8053FAA8  1C 84 00 03 */	mulli r4, r4, 3
/* 8053FAAC  7C 85 22 14 */	add r4, r5, r4
/* 8053FAB0  7C 84 00 AE */	lbzx r4, r4, r0
/* 8053FAB4  4B FF E2 9D */	bl aNPC_setupAction
/* 8053FAB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FABC  7C 08 03 A6 */	mtlr r0
/* 8053FAC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FAC4  4E 80 00 20 */	blr 
