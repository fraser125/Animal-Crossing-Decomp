lbl_8053FD68:
/* 8053FD68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FD6C  7C 08 02 A6 */	mflr r0
/* 8053FD70  3C C0 80 6A */	lis r6, act_proc_2132@ha /* 0x806A3BD0@ha */
/* 8053FD74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FD78  54 A0 10 3A */	slwi r0, r5, 2
/* 8053FD7C  38 A6 3B D0 */	addi r5, r6, act_proc_2132@l /* 0x806A3BD0@l */
/* 8053FD80  7D 85 00 2E */	lwzx r12, r5, r0
/* 8053FD84  7D 89 03 A6 */	mtctr r12
/* 8053FD88  4E 80 04 21 */	bctrl 
/* 8053FD8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FD90  7C 08 03 A6 */	mtlr r0
/* 8053FD94  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FD98  4E 80 00 20 */	blr 
