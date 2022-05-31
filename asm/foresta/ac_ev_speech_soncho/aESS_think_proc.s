lbl_80525BE8:
/* 80525BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80525BEC  7C 08 02 A6 */	mflr r0
/* 80525BF0  3C C0 80 6A */	lis r6, think_proc@ha /* 0x806A0E14@ha */
/* 80525BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80525BF8  54 A0 10 3A */	slwi r0, r5, 2
/* 80525BFC  38 A6 0E 14 */	addi r5, r6, think_proc@l /* 0x806A0E14@l */
/* 80525C00  7D 85 00 2E */	lwzx r12, r5, r0
/* 80525C04  7D 89 03 A6 */	mtctr r12
/* 80525C08  4E 80 04 21 */	bctrl 
/* 80525C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80525C10  7C 08 03 A6 */	mtlr r0
/* 80525C14  38 21 00 10 */	addi r1, r1, 0x10
/* 80525C18  4E 80 00 20 */	blr 
