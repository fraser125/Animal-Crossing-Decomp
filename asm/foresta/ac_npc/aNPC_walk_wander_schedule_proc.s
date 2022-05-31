lbl_80537FCC:
/* 80537FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80537FD0  7C 08 02 A6 */	mflr r0
/* 80537FD4  3C C0 80 6A */	lis r6, sche_proc_4543@ha /* 0x806A29D8@ha */
/* 80537FD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80537FDC  54 A0 10 3A */	slwi r0, r5, 2
/* 80537FE0  38 A6 29 D8 */	addi r5, r6, sche_proc_4543@l /* 0x806A29D8@l */
/* 80537FE4  7D 85 00 2E */	lwzx r12, r5, r0
/* 80537FE8  7D 89 03 A6 */	mtctr r12
/* 80537FEC  4E 80 04 21 */	bctrl 
/* 80537FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80537FF4  7C 08 03 A6 */	mtlr r0
/* 80537FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80537FFC  4E 80 00 20 */	blr 
