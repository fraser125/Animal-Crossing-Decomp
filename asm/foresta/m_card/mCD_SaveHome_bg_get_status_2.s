lbl_803FD3E0:
/* 803FD3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FD3E4  7C 08 02 A6 */	mflr r0
/* 803FD3E8  3C A0 80 66 */	lis r5, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 803FD3EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FD3F0  38 A5 E7 08 */	addi r5, r5, l_mcd_file_table@l /* 0x8065E708@l */
/* 803FD3F4  80 03 01 9C */	lwz r0, 0x19c(r3)
/* 803FD3F8  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 803FD3FC  2C 00 00 01 */	cmpwi r0, 1
/* 803FD400  40 82 00 10 */	bne lbl_803FD410
/* 803FD404  3C A0 80 66 */	lis r5, l_mCD_land_file_name_dummy@ha /* 0x8065E6A8@ha */
/* 803FD408  38 05 E6 A8 */	addi r0, r5, l_mCD_land_file_name_dummy@l /* 0x8065E6A8@l */
/* 803FD40C  7C 05 03 78 */	mr r5, r0
lbl_803FD410:
/* 803FD410  38 00 00 01 */	li r0, 1
/* 803FD414  38 C0 00 00 */	li r6, 0
/* 803FD418  90 01 00 08 */	stw r0, 8(r1)
/* 803FD41C  38 E0 00 40 */	li r7, 0x40
/* 803FD420  39 00 00 01 */	li r8, 1
/* 803FD424  39 20 00 03 */	li r9, 3
/* 803FD428  39 40 00 01 */	li r10, 1
/* 803FD42C  4B FF F6 15 */	bl mCD_get_status_common
/* 803FD430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FD434  7C 08 03 A6 */	mtlr r0
/* 803FD438  38 21 00 10 */	addi r1, r1, 0x10
/* 803FD43C  4E 80 00 20 */	blr 
