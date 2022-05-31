lbl_805AC2F0:
/* 805AC2F0  80 C3 02 B4 */	lwz r6, 0x2b4(r3)
/* 805AC2F4  38 00 00 3B */	li r0, 0x3b
/* 805AC2F8  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 805AC2FC  38 86 FF C5 */	addi r4, r6, -59
/* 805AC300  38 06 00 01 */	addi r0, r6, 1
/* 805AC304  7C 84 28 14 */	addc r4, r4, r5
/* 805AC308  7C 84 21 10 */	subfe r4, r4, r4
/* 805AC30C  7C 00 20 78 */	andc r0, r0, r4
/* 805AC310  90 03 02 B4 */	stw r0, 0x2b4(r3)
/* 805AC314  4E 80 00 20 */	blr 
