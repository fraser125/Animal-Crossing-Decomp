lbl_80540CA8:
/* 80540CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540CAC  7C 08 02 A6 */	mflr r0
/* 80540CB0  3C C0 80 6A */	lis r6, act_proc_2443@ha /* 0x806A3CE0@ha */
/* 80540CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540CB8  54 A0 10 3A */	slwi r0, r5, 2
/* 80540CBC  38 A6 3C E0 */	addi r5, r6, act_proc_2443@l /* 0x806A3CE0@l */
/* 80540CC0  7D 85 00 2E */	lwzx r12, r5, r0
/* 80540CC4  7D 89 03 A6 */	mtctr r12
/* 80540CC8  4E 80 04 21 */	bctrl 
/* 80540CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540CD0  7C 08 03 A6 */	mtlr r0
/* 80540CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80540CD8  4E 80 00 20 */	blr 
