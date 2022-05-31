lbl_80537C5C:
/* 80537C5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80537C60  7C 08 02 A6 */	mflr r0
/* 80537C64  3C C0 80 6A */	lis r6, think_proc_4318@ha /* 0x806A294C@ha */
/* 80537C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80537C6C  54 A0 10 3A */	slwi r0, r5, 2
/* 80537C70  38 A6 29 4C */	addi r5, r6, think_proc_4318@l /* 0x806A294C@l */
/* 80537C74  7D 85 00 2E */	lwzx r12, r5, r0
/* 80537C78  7D 89 03 A6 */	mtctr r12
/* 80537C7C  4E 80 04 21 */	bctrl 
/* 80537C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80537C84  7C 08 03 A6 */	mtlr r0
/* 80537C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80537C8C  4E 80 00 20 */	blr 
