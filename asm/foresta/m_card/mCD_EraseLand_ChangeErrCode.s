lbl_803FDEC4:
/* 803FDEC4  38 03 FF FC */	addi r0, r3, -4
/* 803FDEC8  28 00 00 14 */	cmplwi r0, 0x14
/* 803FDECC  4D 81 00 20 */	bgtlr 
/* 803FDED0  3C 80 80 66 */	lis r4, lit_3080@ha /* 0x8065E8EC@ha */
/* 803FDED4  54 00 10 3A */	slwi r0, r0, 2
/* 803FDED8  38 84 E8 EC */	addi r4, r4, lit_3080@l /* 0x8065E8EC@l */
/* 803FDEDC  7C 04 00 2E */	lwzx r0, r4, r0
/* 803FDEE0  7C 09 03 A6 */	mtctr r0
/* 803FDEE4  4E 80 04 20 */	bctr 
lbl_803FDEE8:
/* 803FDEE8  38 60 00 02 */	li r3, 2
/* 803FDEEC  4E 80 00 20 */	blr 
lbl_803FDEF0:
/* 803FDEF0  38 60 00 16 */	li r3, 0x16
lbl_803FDEF4:
/* 803FDEF4  4E 80 00 20 */	blr 
