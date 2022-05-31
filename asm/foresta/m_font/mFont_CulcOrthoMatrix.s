lbl_803B00E0:
/* 803B00E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B00E4  7C 08 02 A6 */	mflr r0
/* 803B00E8  3D 40 80 64 */	lis r10, lit_698@ha /* 0x806420B8@ha */
/* 803B00EC  3D 20 80 64 */	lis r9, lit_699@ha /* 0x806420BC@ha */
/* 803B00F0  3D 00 80 64 */	lis r8, lit_700@ha /* 0x806420C0@ha */
/* 803B00F4  3C E0 80 64 */	lis r7, lit_701@ha /* 0x806420C4@ha */
/* 803B00F8  3C C0 80 64 */	lis r6, lit_702@ha /* 0x806420C8@ha */
/* 803B00FC  3C A0 80 64 */	lis r5, lit_703@ha /* 0x806420CC@ha */
/* 803B0100  3C 80 80 64 */	lis r4, lit_632@ha /* 0x806420A0@ha */
/* 803B0104  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B0108  C0 2A 20 B8 */	lfs f1, lit_698@l(r10)  /* 0x806420B8@l */
/* 803B010C  C0 49 20 BC */	lfs f2, lit_699@l(r9)  /* 0x806420BC@l */
/* 803B0110  C0 68 20 C0 */	lfs f3, lit_700@l(r8)  /* 0x806420C0@l */
/* 803B0114  C0 87 20 C4 */	lfs f4, lit_701@l(r7)  /* 0x806420C4@l */
/* 803B0118  C0 A6 20 C8 */	lfs f5, lit_702@l(r6)  /* 0x806420C8@l */
/* 803B011C  C0 C5 20 CC */	lfs f6, lit_703@l(r5)  /* 0x806420CC@l */
/* 803B0120  C0 E4 20 A0 */	lfs f7, lit_632@l(r4)  /* 0x806420A0@l */
/* 803B0124  4B CA E0 F5 */	bl func_8005E218
/* 803B0128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B012C  7C 08 03 A6 */	mtlr r0
/* 803B0130  38 21 00 10 */	addi r1, r1, 0x10
/* 803B0134  4E 80 00 20 */	blr 
