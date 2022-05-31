lbl_8057E814:
/* 8057E814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057E818  7C 08 02 A6 */	mflr r0
/* 8057E81C  3C C0 80 6C */	lis r6, think_proc@ha /* 0x806C0A0C@ha */
/* 8057E820  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E824  54 A0 10 3A */	slwi r0, r5, 2
/* 8057E828  38 A6 0A 0C */	addi r5, r6, think_proc@l /* 0x806C0A0C@l */
/* 8057E82C  7D 85 00 2E */	lwzx r12, r5, r0
/* 8057E830  7D 89 03 A6 */	mtctr r12
/* 8057E834  4E 80 04 21 */	bctrl 
/* 8057E838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057E83C  7C 08 03 A6 */	mtlr r0
/* 8057E840  38 21 00 10 */	addi r1, r1, 0x10
/* 8057E844  4E 80 00 20 */	blr 
