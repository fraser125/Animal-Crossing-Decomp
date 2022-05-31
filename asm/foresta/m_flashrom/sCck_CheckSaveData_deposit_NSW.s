lbl_803AE854:
/* 803AE854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AE858  7C 08 02 A6 */	mflr r0
/* 803AE85C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AE860  80 83 12 2C */	lwz r4, 0x122c(r3)
/* 803AE864  2C 04 00 00 */	cmpwi r4, 0
/* 803AE868  41 80 00 14 */	blt lbl_803AE87C
/* 803AE86C  3C 60 3B 9B */	lis r3, 0x3B9B /* 0x3B9AC9FF@ha */
/* 803AE870  38 03 C9 FF */	addi r0, r3, 0xC9FF /* 0x3B9AC9FF@l */
/* 803AE874  7C 04 00 00 */	cmpw r4, r0
/* 803AE878  40 81 00 28 */	ble lbl_803AE8A0
lbl_803AE87C:
/* 803AE87C  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE880  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE884  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE888  38 80 00 B8 */	li r4, 0xb8
/* 803AE88C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE890  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE894  4B FF DF 35 */	bl mFRm_set_errInfo
/* 803AE898  38 60 00 01 */	li r3, 1
/* 803AE89C  48 00 00 08 */	b lbl_803AE8A4
lbl_803AE8A0:
/* 803AE8A0  38 60 00 00 */	li r3, 0
lbl_803AE8A4:
/* 803AE8A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AE8A8  7C 08 03 A6 */	mtlr r0
/* 803AE8AC  38 21 00 10 */	addi r1, r1, 0x10
/* 803AE8B0  4E 80 00 20 */	blr 
