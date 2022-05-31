lbl_80557E08:
/* 80557E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80557E0C  7C 08 02 A6 */	mflr r0
/* 80557E10  3C C0 80 6A */	lis r6, sche_proc@ha /* 0x806A6984@ha */
/* 80557E14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80557E18  54 A0 10 3A */	slwi r0, r5, 2
/* 80557E1C  38 A6 69 84 */	addi r5, r6, sche_proc@l /* 0x806A6984@l */
/* 80557E20  7D 85 00 2E */	lwzx r12, r5, r0
/* 80557E24  7D 89 03 A6 */	mtctr r12
/* 80557E28  4E 80 04 21 */	bctrl 
/* 80557E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80557E30  7C 08 03 A6 */	mtlr r0
/* 80557E34  38 21 00 10 */	addi r1, r1, 0x10
/* 80557E38  4E 80 00 20 */	blr 
