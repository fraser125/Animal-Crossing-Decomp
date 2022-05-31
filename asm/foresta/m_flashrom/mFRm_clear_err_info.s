lbl_803AC744:
/* 803AC744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AC748  7C 08 02 A6 */	mflr r0
/* 803AC74C  3C 60 81 16 */	lis r3, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AC750  38 80 00 50 */	li r4, 0x50
/* 803AC754  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AC758  38 63 7D 18 */	addi r3, r3, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AC75C  4B CB 09 0D */	bl bzero
/* 803AC760  3C 60 81 16 */	lis r3, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AC764  38 00 00 0A */	li r0, 0xa
/* 803AC768  38 83 7D 18 */	addi r4, r3, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AC76C  38 A0 00 07 */	li r5, 7
/* 803AC770  38 60 00 00 */	li r3, 0
/* 803AC774  7C 09 03 A6 */	mtctr r0
lbl_803AC778:
/* 803AC778  7C A4 19 2E */	stwx r5, r4, r3
/* 803AC77C  38 63 00 08 */	addi r3, r3, 8
/* 803AC780  42 00 FF F8 */	bdnz lbl_803AC778
/* 803AC784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AC788  7C 08 03 A6 */	mtlr r0
/* 803AC78C  38 21 00 10 */	addi r1, r1, 0x10
/* 803AC790  4E 80 00 20 */	blr 
