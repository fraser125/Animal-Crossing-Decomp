lbl_805B01CC:
/* 805B01CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B01D0  7C 08 02 A6 */	mflr r0
/* 805B01D4  3C 80 80 65 */	lis r4, lit_616@ha /* 0x8064A7A0@ha */
/* 805B01D8  38 60 00 04 */	li r3, 4
/* 805B01DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B01E0  C0 24 A7 A0 */	lfs f1, lit_616@l(r4)  /* 0x8064A7A0@l */
/* 805B01E4  4B DE 91 0D */	bl mDemo_Set_house_info
/* 805B01E8  38 60 00 07 */	li r3, 7
/* 805B01EC  4B DE 87 35 */	bl mDemo_Set_camera
/* 805B01F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B01F4  7C 08 03 A6 */	mtlr r0
/* 805B01F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805B01FC  4E 80 00 20 */	blr 
