lbl_8053E444:
/* 8053E444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053E448  7C 08 02 A6 */	mflr r0
/* 8053E44C  3C 80 80 6A */	lis r4, after_proc@ha /* 0x806A3AB0@ha */
/* 8053E450  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053E454  54 A0 10 3A */	slwi r0, r5, 2
/* 8053E458  38 84 3A B0 */	addi r4, r4, after_proc@l /* 0x806A3AB0@l */
/* 8053E45C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053E460  7D 1F 43 78 */	mr r31, r8
/* 8053E464  93 C1 00 08 */	stw r30, 8(r1)
/* 8053E468  7C BE 2B 78 */	mr r30, r5
/* 8053E46C  7D 84 00 2E */	lwzx r12, r4, r0
/* 8053E470  7F E4 FB 78 */	mr r4, r31
/* 8053E474  7D 89 03 A6 */	mtctr r12
/* 8053E478  4E 80 04 21 */	bctrl 
/* 8053E47C  7F E3 FB 78 */	mr r3, r31
/* 8053E480  7F C4 F3 78 */	mr r4, r30
/* 8053E484  4B FF FF 2D */	bl aNPC_set_accessory_mtx
/* 8053E488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053E48C  38 60 00 01 */	li r3, 1
/* 8053E490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053E494  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053E498  7C 08 03 A6 */	mtlr r0
/* 8053E49C  38 21 00 10 */	addi r1, r1, 0x10
/* 8053E4A0  4E 80 00 20 */	blr 
