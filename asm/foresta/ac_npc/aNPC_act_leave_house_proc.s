lbl_80533AB0:
/* 80533AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80533AB4  7C 08 02 A6 */	mflr r0
/* 80533AB8  3C C0 80 6A */	lis r6, act_proc_3004@ha /* 0x806A2620@ha */
/* 80533ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533AC0  54 A0 10 3A */	slwi r0, r5, 2
/* 80533AC4  38 A6 26 20 */	addi r5, r6, act_proc_3004@l /* 0x806A2620@l */
/* 80533AC8  7D 85 00 2E */	lwzx r12, r5, r0
/* 80533ACC  7D 89 03 A6 */	mtctr r12
/* 80533AD0  4E 80 04 21 */	bctrl 
/* 80533AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80533AD8  7C 08 03 A6 */	mtlr r0
/* 80533ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80533AE0  4E 80 00 20 */	blr 
