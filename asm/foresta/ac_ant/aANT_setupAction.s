lbl_8050C634:
/* 8050C634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050C638  7C 08 02 A6 */	mflr r0
/* 8050C63C  3C A0 80 6A */	lis r5, act_proc@ha /* 0x8069F020@ha */
/* 8050C640  54 86 10 3A */	slwi r6, r4, 2
/* 8050C644  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050C648  38 A5 F0 20 */	addi r5, r5, act_proc@l /* 0x8069F020@l */
/* 8050C64C  90 83 01 78 */	stw r4, 0x178(r3)
/* 8050C650  3C 80 80 6A */	lis r4, init_proc@ha /* 0x8069F014@ha */
/* 8050C654  38 84 F0 14 */	addi r4, r4, init_proc@l /* 0x8069F014@l */
/* 8050C658  7C 05 30 2E */	lwzx r0, r5, r6
/* 8050C65C  90 03 01 74 */	stw r0, 0x174(r3)
/* 8050C660  7D 84 30 2E */	lwzx r12, r4, r6
/* 8050C664  7D 89 03 A6 */	mtctr r12
/* 8050C668  4E 80 04 21 */	bctrl 
/* 8050C66C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050C670  7C 08 03 A6 */	mtlr r0
/* 8050C674  38 21 00 10 */	addi r1, r1, 0x10
/* 8050C678  4E 80 00 20 */	blr 
