lbl_805564E8:
/* 805564E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805564EC  7C 08 02 A6 */	mflr r0
/* 805564F0  3C C0 80 6A */	lis r6, init_proc@ha /* 0x806A65F8@ha */
/* 805564F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805564F8  54 A0 10 3A */	slwi r0, r5, 2
/* 805564FC  38 A6 65 F8 */	addi r5, r6, init_proc@l /* 0x806A65F8@l */
/* 80556500  7D 85 00 2E */	lwzx r12, r5, r0
/* 80556504  7D 89 03 A6 */	mtctr r12
/* 80556508  4E 80 04 21 */	bctrl 
/* 8055650C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80556510  7C 08 03 A6 */	mtlr r0
/* 80556514  38 21 00 10 */	addi r1, r1, 0x10
/* 80556518  4E 80 00 20 */	blr 
