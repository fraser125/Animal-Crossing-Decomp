lbl_8057E91C:
/* 8057E91C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057E920  7C 08 02 A6 */	mflr r0
/* 8057E924  3C C0 80 6C */	lis r6, sche_proc@ha /* 0x806C0A14@ha */
/* 8057E928  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E92C  54 A0 10 3A */	slwi r0, r5, 2
/* 8057E930  38 A6 0A 14 */	addi r5, r6, sche_proc@l /* 0x806C0A14@l */
/* 8057E934  7D 85 00 2E */	lwzx r12, r5, r0
/* 8057E938  7D 89 03 A6 */	mtctr r12
/* 8057E93C  4E 80 04 21 */	bctrl 
/* 8057E940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057E944  7C 08 03 A6 */	mtlr r0
/* 8057E948  38 21 00 10 */	addi r1, r1, 0x10
/* 8057E94C  4E 80 00 20 */	blr 
