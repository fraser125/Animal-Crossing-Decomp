lbl_8055ED9C:
/* 8055ED9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055EDA0  7C 08 02 A6 */	mflr r0
/* 8055EDA4  3C C0 80 6B */	lis r6, init_proc@ha /* 0x806AA038@ha */
/* 8055EDA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055EDAC  54 A0 10 3A */	slwi r0, r5, 2
/* 8055EDB0  38 A6 A0 38 */	addi r5, r6, init_proc@l /* 0x806AA038@l */
/* 8055EDB4  7D 85 00 2E */	lwzx r12, r5, r0
/* 8055EDB8  7D 89 03 A6 */	mtctr r12
/* 8055EDBC  4E 80 04 21 */	bctrl 
/* 8055EDC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055EDC4  7C 08 03 A6 */	mtlr r0
/* 8055EDC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8055EDCC  4E 80 00 20 */	blr 
