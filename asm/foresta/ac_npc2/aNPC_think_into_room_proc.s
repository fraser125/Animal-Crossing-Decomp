lbl_80543020:
/* 80543020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80543024  7C 08 02 A6 */	mflr r0
/* 80543028  3C C0 80 6A */	lis r6, think_proc_3194@ha /* 0x806A3E3C@ha */
/* 8054302C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80543030  54 A0 10 3A */	slwi r0, r5, 2
/* 80543034  38 A6 3E 3C */	addi r5, r6, think_proc_3194@l /* 0x806A3E3C@l */
/* 80543038  7D 85 00 2E */	lwzx r12, r5, r0
/* 8054303C  7D 89 03 A6 */	mtctr r12
/* 80543040  4E 80 04 21 */	bctrl 
/* 80543044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80543048  7C 08 03 A6 */	mtlr r0
/* 8054304C  38 21 00 10 */	addi r1, r1, 0x10
/* 80543050  4E 80 00 20 */	blr 
