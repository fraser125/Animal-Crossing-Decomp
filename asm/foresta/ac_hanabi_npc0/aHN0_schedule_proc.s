lbl_80528E20:
/* 80528E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80528E24  7C 08 02 A6 */	mflr r0
/* 80528E28  3C C0 80 6A */	lis r6, sche_proc@ha /* 0x806A1038@ha */
/* 80528E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80528E30  54 A0 10 3A */	slwi r0, r5, 2
/* 80528E34  38 A6 10 38 */	addi r5, r6, sche_proc@l /* 0x806A1038@l */
/* 80528E38  7D 85 00 2E */	lwzx r12, r5, r0
/* 80528E3C  7D 89 03 A6 */	mtctr r12
/* 80528E40  4E 80 04 21 */	bctrl 
/* 80528E44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80528E48  7C 08 03 A6 */	mtlr r0
/* 80528E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80528E50  4E 80 00 20 */	blr 
