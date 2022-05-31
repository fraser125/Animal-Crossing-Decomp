lbl_80537ACC:
/* 80537ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80537AD0  7C 08 02 A6 */	mflr r0
/* 80537AD4  3C C0 80 6A */	lis r6, think_proc_4287@ha /* 0x806A2944@ha */
/* 80537AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80537ADC  54 A0 10 3A */	slwi r0, r5, 2
/* 80537AE0  38 A6 29 44 */	addi r5, r6, think_proc_4287@l /* 0x806A2944@l */
/* 80537AE4  7D 85 00 2E */	lwzx r12, r5, r0
/* 80537AE8  7D 89 03 A6 */	mtctr r12
/* 80537AEC  4E 80 04 21 */	bctrl 
/* 80537AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80537AF4  7C 08 03 A6 */	mtlr r0
/* 80537AF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80537AFC  4E 80 00 20 */	blr 
