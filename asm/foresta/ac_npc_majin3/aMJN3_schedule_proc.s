lbl_80558B64:
/* 80558B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80558B68  7C 08 02 A6 */	mflr r0
/* 80558B6C  3C C0 80 6A */	lis r6, sche_proc@ha /* 0x806A6AE0@ha */
/* 80558B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80558B74  54 A0 10 3A */	slwi r0, r5, 2
/* 80558B78  38 A6 6A E0 */	addi r5, r6, sche_proc@l /* 0x806A6AE0@l */
/* 80558B7C  7D 85 00 2E */	lwzx r12, r5, r0
/* 80558B80  7D 89 03 A6 */	mtctr r12
/* 80558B84  4E 80 04 21 */	bctrl 
/* 80558B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80558B8C  7C 08 03 A6 */	mtlr r0
/* 80558B90  38 21 00 10 */	addi r1, r1, 0x10
/* 80558B94  4E 80 00 20 */	blr 
