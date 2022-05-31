lbl_803AD120:
/* 803AD120  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AD124  7C 08 02 A6 */	mflr r0
/* 803AD128  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AD12C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803AD130  7C 7F 1B 78 */	mr r31, r3
/* 803AD134  38 61 00 08 */	addi r3, r1, 8
/* 803AD138  88 1F 00 00 */	lbz r0, 0(r31)
/* 803AD13C  98 01 00 0B */	stb r0, 0xb(r1)
/* 803AD140  88 1F 00 01 */	lbz r0, 1(r31)
/* 803AD144  98 01 00 0A */	stb r0, 0xa(r1)
/* 803AD148  A0 1F 00 02 */	lhz r0, 2(r31)
/* 803AD14C  B0 01 00 08 */	sth r0, 8(r1)
/* 803AD150  4B FF FC 69 */	bl sChk_lbRTC_ymd_c_sub
/* 803AD154  88 1F 00 04 */	lbz r0, 4(r31)
/* 803AD158  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 803AD15C  28 00 00 05 */	cmplwi r0, 5
/* 803AD160  41 80 00 24 */	blt lbl_803AD184
/* 803AD164  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD168  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD16C  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD170  38 80 03 70 */	li r4, 0x370
/* 803AD174  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD178  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD17C  4B FF F6 4D */	bl mFRm_set_errInfo
/* 803AD180  38 60 00 01 */	li r3, 1
lbl_803AD184:
/* 803AD184  88 1F 00 04 */	lbz r0, 4(r31)
/* 803AD188  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 803AD18C  28 00 00 05 */	cmplwi r0, 5
/* 803AD190  41 80 00 24 */	blt lbl_803AD1B4
/* 803AD194  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD198  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD19C  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD1A0  38 80 03 7E */	li r4, 0x37e
/* 803AD1A4  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD1A8  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD1AC  4B FF F6 1D */	bl mFRm_set_errInfo
/* 803AD1B0  38 60 00 01 */	li r3, 1
lbl_803AD1B4:
/* 803AD1B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AD1B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803AD1BC  7C 08 03 A6 */	mtlr r0
/* 803AD1C0  38 21 00 20 */	addi r1, r1, 0x20
/* 803AD1C4  4E 80 00 20 */	blr 
