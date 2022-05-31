lbl_805259DC:
/* 805259DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805259E0  7C 08 02 A6 */	mflr r0
/* 805259E4  3C C0 80 6A */	lis r6, act_proc@ha /* 0x806A0DB8@ha */
/* 805259E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805259EC  54 A0 10 3A */	slwi r0, r5, 2
/* 805259F0  38 A6 0D B8 */	addi r5, r6, act_proc@l /* 0x806A0DB8@l */
/* 805259F4  7D 85 00 2E */	lwzx r12, r5, r0
/* 805259F8  7D 89 03 A6 */	mtctr r12
/* 805259FC  4E 80 04 21 */	bctrl 
/* 80525A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80525A04  7C 08 03 A6 */	mtlr r0
/* 80525A08  38 21 00 10 */	addi r1, r1, 0x10
/* 80525A0C  4E 80 00 20 */	blr 
