lbl_803AD3B8:
/* 803AD3B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AD3BC  7C 08 02 A6 */	mflr r0
/* 803AD3C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AD3C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AD3C8  7C 7F 1B 78 */	mr r31, r3
/* 803AD3CC  38 60 00 00 */	li r3, 0
/* 803AD3D0  A0 9F 00 00 */	lhz r4, 0(r31)
/* 803AD3D4  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803AD3D8  2C 00 00 0E */	cmpwi r0, 0xe
/* 803AD3DC  41 82 00 2C */	beq lbl_803AD408
/* 803AD3E0  28 04 00 00 */	cmplwi r4, 0
/* 803AD3E4  41 82 00 24 */	beq lbl_803AD408
/* 803AD3E8  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD3EC  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD3F0  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD3F4  38 80 04 B0 */	li r4, 0x4b0
/* 803AD3F8  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD3FC  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD400  4B FF F3 C9 */	bl mFRm_set_errInfo
/* 803AD404  38 60 00 01 */	li r3, 1
lbl_803AD408:
/* 803AD408  88 1F 00 0D */	lbz r0, 0xd(r31)
/* 803AD40C  28 00 00 06 */	cmplwi r0, 6
/* 803AD410  40 81 00 24 */	ble lbl_803AD434
/* 803AD414  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD418  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD41C  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD420  38 80 04 BE */	li r4, 0x4be
/* 803AD424  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD428  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD42C  4B FF F3 9D */	bl mFRm_set_errInfo
/* 803AD430  38 60 00 01 */	li r3, 1
lbl_803AD434:
/* 803AD434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AD438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AD43C  7C 08 03 A6 */	mtlr r0
/* 803AD440  38 21 00 10 */	addi r1, r1, 0x10
/* 803AD444  4E 80 00 20 */	blr 
