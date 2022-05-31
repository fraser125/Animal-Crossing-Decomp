lbl_8049609C:
/* 8049609C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804960A0  7C 08 02 A6 */	mflr r0
/* 804960A4  3C C0 80 69 */	lis r6, init_proc@ha /* 0x8068BA14@ha */
/* 804960A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804960AC  54 A0 10 3A */	slwi r0, r5, 2
/* 804960B0  38 A6 BA 14 */	addi r5, r6, init_proc@l /* 0x8068BA14@l */
/* 804960B4  7D 85 00 2E */	lwzx r12, r5, r0
/* 804960B8  7D 89 03 A6 */	mtctr r12
/* 804960BC  4E 80 04 21 */	bctrl 
/* 804960C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804960C4  7C 08 03 A6 */	mtlr r0
/* 804960C8  38 21 00 10 */	addi r1, r1, 0x10
/* 804960CC  4E 80 00 20 */	blr 
