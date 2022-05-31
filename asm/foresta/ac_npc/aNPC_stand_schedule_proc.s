lbl_80537E78:
/* 80537E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80537E7C  7C 08 02 A6 */	mflr r0
/* 80537E80  3C C0 80 6A */	lis r6, sche_proc_4519@ha /* 0x806A29C8@ha */
/* 80537E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80537E88  54 A0 10 3A */	slwi r0, r5, 2
/* 80537E8C  38 A6 29 C8 */	addi r5, r6, sche_proc_4519@l /* 0x806A29C8@l */
/* 80537E90  7D 85 00 2E */	lwzx r12, r5, r0
/* 80537E94  7D 89 03 A6 */	mtctr r12
/* 80537E98  4E 80 04 21 */	bctrl 
/* 80537E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80537EA0  7C 08 03 A6 */	mtlr r0
/* 80537EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80537EA8  4E 80 00 20 */	blr 
