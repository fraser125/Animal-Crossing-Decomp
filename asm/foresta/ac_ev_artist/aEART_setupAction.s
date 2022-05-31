lbl_80519AD4:
/* 80519AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80519AD8  7C 08 02 A6 */	mflr r0
/* 80519ADC  3C C0 80 6A */	lis r6, process@ha /* 0x806A0008@ha */
/* 80519AE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80519AE4  54 A0 10 3A */	slwi r0, r5, 2
/* 80519AE8  38 C6 00 08 */	addi r6, r6, process@l /* 0x806A0008@l */
/* 80519AEC  7C 06 00 2E */	lwzx r0, r6, r0
/* 80519AF0  90 03 09 98 */	stw r0, 0x998(r3)
/* 80519AF4  4B FF FF AD */	bl aEART_init_proc
/* 80519AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80519AFC  7C 08 03 A6 */	mtlr r0
/* 80519B00  38 21 00 10 */	addi r1, r1, 0x10
/* 80519B04  4E 80 00 20 */	blr 
