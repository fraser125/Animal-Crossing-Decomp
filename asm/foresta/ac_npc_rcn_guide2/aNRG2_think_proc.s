lbl_80571E34:
/* 80571E34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80571E38  7C 08 02 A6 */	mflr r0
/* 80571E3C  3C C0 80 6C */	lis r6, think_proc@ha /* 0x806BF3E8@ha */
/* 80571E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80571E44  54 A0 10 3A */	slwi r0, r5, 2
/* 80571E48  38 A6 F3 E8 */	addi r5, r6, think_proc@l /* 0x806BF3E8@l */
/* 80571E4C  7D 85 00 2E */	lwzx r12, r5, r0
/* 80571E50  7D 89 03 A6 */	mtctr r12
/* 80571E54  4E 80 04 21 */	bctrl 
/* 80571E58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80571E5C  7C 08 03 A6 */	mtlr r0
/* 80571E60  38 21 00 10 */	addi r1, r1, 0x10
/* 80571E64  4E 80 00 20 */	blr 
