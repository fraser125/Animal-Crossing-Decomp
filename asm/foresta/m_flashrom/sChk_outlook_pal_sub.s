lbl_803AD288:
/* 803AD288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AD28C  7C 08 02 A6 */	mflr r0
/* 803AD290  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AD294  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803AD298  28 00 00 0C */	cmplwi r0, 0xc
/* 803AD29C  38 60 00 00 */	li r3, 0
/* 803AD2A0  41 80 00 24 */	blt lbl_803AD2C4
/* 803AD2A4  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD2A8  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD2AC  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD2B0  38 80 04 0B */	li r4, 0x40b
/* 803AD2B4  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD2B8  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD2BC  4B FF F5 0D */	bl mFRm_set_errInfo
/* 803AD2C0  38 60 00 01 */	li r3, 1
lbl_803AD2C4:
/* 803AD2C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AD2C8  7C 08 03 A6 */	mtlr r0
/* 803AD2CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803AD2D0  4E 80 00 20 */	blr 
