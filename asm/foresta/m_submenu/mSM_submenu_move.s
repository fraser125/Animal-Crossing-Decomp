lbl_803EFD88:
/* 803EFD88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EFD8C  7C 08 02 A6 */	mflr r0
/* 803EFD90  3C 80 80 66 */	lis r4, move_proc@ha /* 0x8065DD24@ha */
/* 803EFD94  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EFD98  38 84 DD 24 */	addi r4, r4, move_proc@l /* 0x8065DD24@l */
/* 803EFD9C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803EFDA0  54 00 10 3A */	slwi r0, r0, 2
/* 803EFDA4  7D 84 00 2E */	lwzx r12, r4, r0
/* 803EFDA8  7D 89 03 A6 */	mtctr r12
/* 803EFDAC  4E 80 04 21 */	bctrl 
/* 803EFDB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EFDB4  7C 08 03 A6 */	mtlr r0
/* 803EFDB8  38 21 00 10 */	addi r1, r1, 0x10
/* 803EFDBC  4E 80 00 20 */	blr 
