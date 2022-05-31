lbl_8052A7DC:
/* 8052A7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052A7E0  7C 08 02 A6 */	mflr r0
/* 8052A7E4  3C C0 80 6A */	lis r6, think_proc@ha /* 0x806A128C@ha */
/* 8052A7E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A7EC  54 A0 10 3A */	slwi r0, r5, 2
/* 8052A7F0  38 A6 12 8C */	addi r5, r6, think_proc@l /* 0x806A128C@l */
/* 8052A7F4  7D 85 00 2E */	lwzx r12, r5, r0
/* 8052A7F8  7D 89 03 A6 */	mtctr r12
/* 8052A7FC  4E 80 04 21 */	bctrl 
/* 8052A800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A804  7C 08 03 A6 */	mtlr r0
/* 8052A808  38 21 00 10 */	addi r1, r1, 0x10
/* 8052A80C  4E 80 00 20 */	blr 
