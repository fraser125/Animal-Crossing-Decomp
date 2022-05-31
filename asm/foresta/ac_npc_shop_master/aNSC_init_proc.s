lbl_8057C480:
/* 8057C480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C484  7C 08 02 A6 */	mflr r0
/* 8057C488  3C C0 80 6C */	lis r6, init_proc@ha /* 0x806C0458@ha */
/* 8057C48C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C490  54 A0 10 3A */	slwi r0, r5, 2
/* 8057C494  38 A6 04 58 */	addi r5, r6, init_proc@l /* 0x806C0458@l */
/* 8057C498  7D 85 00 2E */	lwzx r12, r5, r0
/* 8057C49C  7D 89 03 A6 */	mtctr r12
/* 8057C4A0  4E 80 04 21 */	bctrl 
/* 8057C4A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C4A8  7C 08 03 A6 */	mtlr r0
/* 8057C4AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C4B0  4E 80 00 20 */	blr 
