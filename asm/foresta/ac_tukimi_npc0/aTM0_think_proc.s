lbl_8058DA50:
/* 8058DA50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DA54  7C 08 02 A6 */	mflr r0
/* 8058DA58  3C C0 80 6C */	lis r6, think_proc@ha /* 0x806C2414@ha */
/* 8058DA5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DA60  54 A0 10 3A */	slwi r0, r5, 2
/* 8058DA64  38 A6 24 14 */	addi r5, r6, think_proc@l /* 0x806C2414@l */
/* 8058DA68  7D 85 00 2E */	lwzx r12, r5, r0
/* 8058DA6C  7D 89 03 A6 */	mtctr r12
/* 8058DA70  4E 80 04 21 */	bctrl 
/* 8058DA74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DA78  7C 08 03 A6 */	mtlr r0
/* 8058DA7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DA80  4E 80 00 20 */	blr 
