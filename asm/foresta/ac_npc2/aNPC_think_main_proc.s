lbl_8054263C:
/* 8054263C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80542640  7C 08 02 A6 */	mflr r0
/* 80542644  3C A0 80 6A */	lis r5, aNPC_think_proc_tbl@ha /* 0x806A3E44@ha */
/* 80542648  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054264C  38 C5 3E 44 */	addi r6, r5, aNPC_think_proc_tbl@l /* 0x806A3E44@l */
/* 80542650  38 A0 00 01 */	li r5, 1
/* 80542654  80 03 07 C4 */	lwz r0, 0x7c4(r3)
/* 80542658  54 00 10 3A */	slwi r0, r0, 2
/* 8054265C  7D 86 00 2E */	lwzx r12, r6, r0
/* 80542660  7D 89 03 A6 */	mtctr r12
/* 80542664  4E 80 04 21 */	bctrl 
/* 80542668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054266C  7C 08 03 A6 */	mtlr r0
/* 80542670  38 21 00 10 */	addi r1, r1, 0x10
/* 80542674  4E 80 00 20 */	blr 
