lbl_803AD1C8:
/* 803AD1C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AD1CC  7C 08 02 A6 */	mflr r0
/* 803AD1D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AD1D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AD1D8  7C 7F 1B 78 */	mr r31, r3
/* 803AD1DC  A0 63 00 00 */	lhz r3, 0(r3)
/* 803AD1E0  4B FF F9 75 */	bl sChk_ItemFG_sub
/* 803AD1E4  A8 1F 00 02 */	lha r0, 2(r31)
/* 803AD1E8  2C 00 00 03 */	cmpwi r0, 3
/* 803AD1EC  40 81 00 24 */	ble lbl_803AD210
/* 803AD1F0  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD1F4  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD1F8  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD1FC  38 80 03 B3 */	li r4, 0x3b3
/* 803AD200  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD204  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD208  4B FF F5 C1 */	bl mFRm_set_errInfo
/* 803AD20C  38 60 00 01 */	li r3, 1
lbl_803AD210:
/* 803AD210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AD214  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AD218  7C 08 03 A6 */	mtlr r0
/* 803AD21C  38 21 00 10 */	addi r1, r1, 0x10
/* 803AD220  4E 80 00 20 */	blr 
