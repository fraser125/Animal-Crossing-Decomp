lbl_80468634:
/* 80468634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80468638  7C 08 02 A6 */	mflr r0
/* 8046863C  3C C0 80 68 */	lis r6, init_proc_3511@ha /* 0x80686D04@ha */
/* 80468640  3C E0 80 68 */	lis r7, move_proc_3512@ha /* 0x80686D14@ha */
/* 80468644  90 01 00 14 */	stw r0, 0x14(r1)
/* 80468648  54 88 10 3A */	slwi r8, r4, 2
/* 8046864C  38 87 6D 14 */	addi r4, r7, move_proc_3512@l /* 0x80686D14@l */
/* 80468650  38 C6 6D 04 */	addi r6, r6, init_proc_3511@l /* 0x80686D04@l */
/* 80468654  7C 04 40 2E */	lwzx r0, r4, r8
/* 80468658  7C A4 2B 78 */	mr r4, r5
/* 8046865C  90 03 00 04 */	stw r0, 4(r3)
/* 80468660  7D 86 40 2E */	lwzx r12, r6, r8
/* 80468664  7D 89 03 A6 */	mtctr r12
/* 80468668  4E 80 04 21 */	bctrl 
/* 8046866C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80468670  7C 08 03 A6 */	mtlr r0
/* 80468674  38 21 00 10 */	addi r1, r1, 0x10
/* 80468678  4E 80 00 20 */	blr 
