lbl_80589198:
/* 80589198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058919C  7C 08 02 A6 */	mflr r0
/* 805891A0  3C C0 80 6C */	lis r6, think_proc@ha /* 0x806C1FAC@ha */
/* 805891A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805891A8  54 A0 10 3A */	slwi r0, r5, 2
/* 805891AC  38 A6 1F AC */	addi r5, r6, think_proc@l /* 0x806C1FAC@l */
/* 805891B0  7D 85 00 2E */	lwzx r12, r5, r0
/* 805891B4  7D 89 03 A6 */	mtctr r12
/* 805891B8  4E 80 04 21 */	bctrl 
/* 805891BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805891C0  7C 08 03 A6 */	mtlr r0
/* 805891C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805891C8  4E 80 00 20 */	blr 
