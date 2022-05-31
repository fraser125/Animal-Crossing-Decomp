lbl_805435DC:
/* 805435DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805435E0  7C 08 02 A6 */	mflr r0
/* 805435E4  3C C0 80 6A */	lis r6, sche_proc_3257@ha /* 0x806A3E6C@ha */
/* 805435E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805435EC  54 A0 10 3A */	slwi r0, r5, 2
/* 805435F0  38 A6 3E 6C */	addi r5, r6, sche_proc_3257@l /* 0x806A3E6C@l */
/* 805435F4  7D 85 00 2E */	lwzx r12, r5, r0
/* 805435F8  7D 89 03 A6 */	mtctr r12
/* 805435FC  4E 80 04 21 */	bctrl 
/* 80543600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80543604  7C 08 03 A6 */	mtlr r0
/* 80543608  38 21 00 10 */	addi r1, r1, 0x10
/* 8054360C  4E 80 00 20 */	blr 
