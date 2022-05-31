lbl_80591E08:
/* 80591E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591E0C  7C 08 02 A6 */	mflr r0
/* 80591E10  3C C0 80 6C */	lis r6, act_proc@ha /* 0x806C29A8@ha */
/* 80591E14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591E18  54 A0 10 3A */	slwi r0, r5, 2
/* 80591E1C  38 A6 29 A8 */	addi r5, r6, act_proc@l /* 0x806C29A8@l */
/* 80591E20  7D 85 00 2E */	lwzx r12, r5, r0
/* 80591E24  7D 89 03 A6 */	mtctr r12
/* 80591E28  4E 80 04 21 */	bctrl 
/* 80591E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591E30  7C 08 03 A6 */	mtlr r0
/* 80591E34  38 21 00 10 */	addi r1, r1, 0x10
/* 80591E38  4E 80 00 20 */	blr 
