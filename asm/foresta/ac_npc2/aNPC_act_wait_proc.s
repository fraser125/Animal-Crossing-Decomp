lbl_8053F5A8:
/* 8053F5A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053F5AC  7C 08 02 A6 */	mflr r0
/* 8053F5B0  3C C0 80 6A */	lis r6, act_proc_1955@ha /* 0x806A3B54@ha */
/* 8053F5B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053F5B8  54 A0 10 3A */	slwi r0, r5, 2
/* 8053F5BC  38 A6 3B 54 */	addi r5, r6, act_proc_1955@l /* 0x806A3B54@l */
/* 8053F5C0  7D 85 00 2E */	lwzx r12, r5, r0
/* 8053F5C4  7D 89 03 A6 */	mtctr r12
/* 8053F5C8  4E 80 04 21 */	bctrl 
/* 8053F5CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053F5D0  7C 08 03 A6 */	mtlr r0
/* 8053F5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8053F5D8  4E 80 00 20 */	blr 
