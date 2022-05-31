lbl_805372A4:
/* 805372A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805372A8  7C 08 02 A6 */	mflr r0
/* 805372AC  3C C0 80 6A */	lis r6, think_proc_4150@ha /* 0x806A28FC@ha */
/* 805372B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805372B4  54 A0 10 3A */	slwi r0, r5, 2
/* 805372B8  38 A6 28 FC */	addi r5, r6, think_proc_4150@l /* 0x806A28FC@l */
/* 805372BC  7D 85 00 2E */	lwzx r12, r5, r0
/* 805372C0  7D 89 03 A6 */	mtctr r12
/* 805372C4  4E 80 04 21 */	bctrl 
/* 805372C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805372CC  7C 08 03 A6 */	mtlr r0
/* 805372D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805372D4  4E 80 00 20 */	blr 
