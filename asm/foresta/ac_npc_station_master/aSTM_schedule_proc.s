lbl_80580528:
/* 80580528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058052C  7C 08 02 A6 */	mflr r0
/* 80580530  3C C0 80 6C */	lis r6, sche_proc@ha /* 0x806C0C10@ha */
/* 80580534  90 01 00 14 */	stw r0, 0x14(r1)
/* 80580538  54 A0 10 3A */	slwi r0, r5, 2
/* 8058053C  38 A6 0C 10 */	addi r5, r6, sche_proc@l /* 0x806C0C10@l */
/* 80580540  7D 85 00 2E */	lwzx r12, r5, r0
/* 80580544  7D 89 03 A6 */	mtctr r12
/* 80580548  4E 80 04 21 */	bctrl 
/* 8058054C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80580550  7C 08 03 A6 */	mtlr r0
/* 80580554  38 21 00 10 */	addi r1, r1, 0x10
/* 80580558  4E 80 00 20 */	blr 