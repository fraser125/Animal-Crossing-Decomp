lbl_8058DC6C:
/* 8058DC6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DC70  7C 08 02 A6 */	mflr r0
/* 8058DC74  3C C0 80 6C */	lis r6, sche_proc@ha /* 0x806C2464@ha */
/* 8058DC78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DC7C  54 A0 10 3A */	slwi r0, r5, 2
/* 8058DC80  38 A6 24 64 */	addi r5, r6, sche_proc@l /* 0x806C2464@l */
/* 8058DC84  7D 85 00 2E */	lwzx r12, r5, r0
/* 8058DC88  7D 89 03 A6 */	mtctr r12
/* 8058DC8C  4E 80 04 21 */	bctrl 
/* 8058DC90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DC94  7C 08 03 A6 */	mtlr r0
/* 8058DC98  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DC9C  4E 80 00 20 */	blr 
