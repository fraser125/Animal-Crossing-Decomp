lbl_80519078:
/* 80519078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051907C  7C 08 02 A6 */	mflr r0
/* 80519080  3C C0 80 6A */	lis r6, process@ha /* 0x8069FF58@ha */
/* 80519084  90 01 00 14 */	stw r0, 0x14(r1)
/* 80519088  54 A0 10 3A */	slwi r0, r5, 2
/* 8051908C  38 C6 FF 58 */	addi r6, r6, process@l /* 0x8069FF58@l */
/* 80519090  7C 06 00 2E */	lwzx r0, r6, r0
/* 80519094  90 03 09 98 */	stw r0, 0x998(r3)
/* 80519098  4B FF FF AD */	bl aEANG_init_proc
/* 8051909C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805190A0  7C 08 03 A6 */	mtlr r0
/* 805190A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805190A8  4E 80 00 20 */	blr 
