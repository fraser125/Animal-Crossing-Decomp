lbl_80486520:
/* 80486520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486524  7C 08 02 A6 */	mflr r0
/* 80486528  3C A0 80 69 */	lis r5, common_proc@ha /* 0x8068AC0C@ha */
/* 8048652C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486530  54 80 10 3A */	slwi r0, r4, 2
/* 80486534  38 85 AC 0C */	addi r4, r5, common_proc@l /* 0x8068AC0C@l */
/* 80486538  7D 84 00 2E */	lwzx r12, r4, r0
/* 8048653C  7D 89 03 A6 */	mtctr r12
/* 80486540  4E 80 04 21 */	bctrl 
/* 80486544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80486548  7C 08 03 A6 */	mtlr r0
/* 8048654C  38 21 00 10 */	addi r1, r1, 0x10
/* 80486550  4E 80 00 20 */	blr 