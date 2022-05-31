lbl_80542EC4:
/* 80542EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80542EC8  7C 08 02 A6 */	mflr r0
/* 80542ECC  3C C0 80 6A */	lis r6, think_proc_3179@ha /* 0x806A3E34@ha */
/* 80542ED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80542ED4  54 A0 10 3A */	slwi r0, r5, 2
/* 80542ED8  38 A6 3E 34 */	addi r5, r6, think_proc_3179@l /* 0x806A3E34@l */
/* 80542EDC  7D 85 00 2E */	lwzx r12, r5, r0
/* 80542EE0  7D 89 03 A6 */	mtctr r12
/* 80542EE4  4E 80 04 21 */	bctrl 
/* 80542EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80542EEC  7C 08 03 A6 */	mtlr r0
/* 80542EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80542EF4  4E 80 00 20 */	blr 
