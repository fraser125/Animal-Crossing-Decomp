lbl_80463BA4:
/* 80463BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80463BA8  7C 08 02 A6 */	mflr r0
/* 80463BAC  3C C0 80 68 */	lis r6, init_proc_2282@ha /* 0x80686B7C@ha */
/* 80463BB0  3C E0 80 68 */	lis r7, move_proc_2283@ha /* 0x80686B88@ha */
/* 80463BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80463BB8  54 88 10 3A */	slwi r8, r4, 2
/* 80463BBC  38 87 6B 88 */	addi r4, r7, move_proc_2283@l /* 0x80686B88@l */
/* 80463BC0  38 C6 6B 7C */	addi r6, r6, init_proc_2282@l /* 0x80686B7C@l */
/* 80463BC4  7C 04 40 2E */	lwzx r0, r4, r8
/* 80463BC8  7C A4 2B 78 */	mr r4, r5
/* 80463BCC  90 03 00 04 */	stw r0, 4(r3)
/* 80463BD0  7D 86 40 2E */	lwzx r12, r6, r8
/* 80463BD4  7D 89 03 A6 */	mtctr r12
/* 80463BD8  4E 80 04 21 */	bctrl 
/* 80463BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80463BE0  7C 08 03 A6 */	mtlr r0
/* 80463BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80463BE8  4E 80 00 20 */	blr 
