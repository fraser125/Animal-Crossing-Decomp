lbl_803AD67C:
/* 803AD67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AD680  7C 08 02 A6 */	mflr r0
/* 803AD684  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AD688  38 00 00 07 */	li r0, 7
/* 803AD68C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AD690  3B E0 00 00 */	li r31, 0
/* 803AD694  93 C1 00 08 */	stw r30, 8(r1)
/* 803AD698  7C 7E 1B 78 */	mr r30, r3
/* 803AD69C  38 60 00 00 */	li r3, 0
/* 803AD6A0  7C 09 03 A6 */	mtctr r0
lbl_803AD6A4:
/* 803AD6A4  7C 1E 1A 2E */	lhzx r0, r30, r3
/* 803AD6A8  28 00 00 0A */	cmplwi r0, 0xa
/* 803AD6AC  41 80 00 0C */	blt lbl_803AD6B8
/* 803AD6B0  28 00 07 D0 */	cmplwi r0, 0x7d0
/* 803AD6B4  40 81 00 28 */	ble lbl_803AD6DC
lbl_803AD6B8:
/* 803AD6B8  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD6BC  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD6C0  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD6C4  38 80 05 FB */	li r4, 0x5fb
/* 803AD6C8  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD6CC  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD6D0  4B FF F0 F9 */	bl mFRm_set_errInfo
/* 803AD6D4  3B E0 00 01 */	li r31, 1
/* 803AD6D8  48 00 00 0C */	b lbl_803AD6E4
lbl_803AD6DC:
/* 803AD6DC  38 63 00 02 */	addi r3, r3, 2
/* 803AD6E0  42 00 FF C4 */	bdnz lbl_803AD6A4
lbl_803AD6E4:
/* 803AD6E4  A0 1E 00 0E */	lhz r0, 0xe(r30)
/* 803AD6E8  28 00 00 03 */	cmplwi r0, 3
/* 803AD6EC  41 80 00 24 */	blt lbl_803AD710
/* 803AD6F0  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD6F4  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD6F8  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD6FC  38 80 06 12 */	li r4, 0x612
/* 803AD700  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD704  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD708  4B FF F0 C1 */	bl mFRm_set_errInfo
/* 803AD70C  3B E0 00 01 */	li r31, 1
lbl_803AD710:
/* 803AD710  38 7E 00 10 */	addi r3, r30, 0x10
/* 803AD714  4B FF F5 6D */	bl sChk_OSRTCTime_sub
/* 803AD718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AD71C  7F FF 1B 78 */	or r31, r31, r3
/* 803AD720  7F E3 FB 78 */	mr r3, r31
/* 803AD724  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AD728  83 C1 00 08 */	lwz r30, 8(r1)
/* 803AD72C  7C 08 03 A6 */	mtlr r0
/* 803AD730  38 21 00 10 */	addi r1, r1, 0x10
/* 803AD734  4E 80 00 20 */	blr 
