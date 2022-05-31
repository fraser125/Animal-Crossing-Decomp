lbl_803AD58C:
/* 803AD58C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AD590  7C 08 02 A6 */	mflr r0
/* 803AD594  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AD598  39 61 00 20 */	addi r11, r1, 0x20
/* 803AD59C  4B CE D9 31 */	bl func_8009AECC
/* 803AD5A0  7C 9C 23 78 */	mr r28, r4
/* 803AD5A4  7C 7B 1B 78 */	mr r27, r3
/* 803AD5A8  38 9C 00 01 */	addi r4, r28, 1
/* 803AD5AC  4B FF FE 0D */	bl sChk_AnmPersonalID_c_sub
/* 803AD5B0  7C 7D 1B 78 */	mr r29, r3
/* 803AD5B4  3B C0 00 00 */	li r30, 0
/* 803AD5B8  3B E0 00 00 */	li r31, 0
lbl_803AD5BC:
/* 803AD5BC  38 7F 00 10 */	addi r3, r31, 0x10
/* 803AD5C0  38 9C 00 01 */	addi r4, r28, 1
/* 803AD5C4  7C 7B 1A 14 */	add r3, r27, r3
/* 803AD5C8  4B FF FE ED */	bl sChk_Anmmem_c_sub
/* 803AD5CC  3B DE 00 01 */	addi r30, r30, 1
/* 803AD5D0  7F BD 1B 78 */	or r29, r29, r3
/* 803AD5D4  2C 1E 00 07 */	cmpwi r30, 7
/* 803AD5D8  3B FF 01 38 */	addi r31, r31, 0x138
/* 803AD5DC  41 80 FF E0 */	blt lbl_803AD5BC
/* 803AD5E0  38 7B 08 98 */	addi r3, r27, 0x898
/* 803AD5E4  38 9C 00 01 */	addi r4, r28, 1
/* 803AD5E8  4B FF FF 21 */	bl sChk_Anmhome_c_sub
/* 803AD5EC  88 1B 08 E2 */	lbz r0, 0x8e2(r27)
/* 803AD5F0  7F BD 1B 78 */	or r29, r29, r3
/* 803AD5F4  28 00 00 09 */	cmplwi r0, 9
/* 803AD5F8  41 80 00 24 */	blt lbl_803AD61C
/* 803AD5FC  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD600  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD604  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD608  38 80 05 B2 */	li r4, 0x5b2
/* 803AD60C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD610  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD614  4B FF F1 B5 */	bl mFRm_set_errInfo
/* 803AD618  3B A0 00 01 */	li r29, 1
lbl_803AD61C:
/* 803AD61C  A0 7B 08 E4 */	lhz r3, 0x8e4(r27)
/* 803AD620  4B FF F5 95 */	bl sChk_cloth_sub
/* 803AD624  88 1B 08 E8 */	lbz r0, 0x8e8(r27)
/* 803AD628  7F BD 1B 78 */	or r29, r29, r3
/* 803AD62C  54 00 00 3D */	rlwinm. r0, r0, 0, 0, 0x1e
/* 803AD630  41 82 00 24 */	beq lbl_803AD654
/* 803AD634  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD638  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD63C  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD640  38 80 05 C2 */	li r4, 0x5c2
/* 803AD644  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD648  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD64C  4B FF F1 7D */	bl mFRm_set_errInfo
/* 803AD650  3B A0 00 01 */	li r29, 1
lbl_803AD654:
/* 803AD654  A0 7B 08 EE */	lhz r3, 0x8ee(r27)
/* 803AD658  4B FF F5 5D */	bl sChk_cloth_sub
/* 803AD65C  7F BD 1B 78 */	or r29, r29, r3
/* 803AD660  39 61 00 20 */	addi r11, r1, 0x20
/* 803AD664  7F A3 EB 78 */	mr r3, r29
/* 803AD668  4B CE D8 B1 */	bl func_8009AF18
/* 803AD66C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AD670  7C 08 03 A6 */	mtlr r0
/* 803AD674  38 21 00 20 */	addi r1, r1, 0x20
/* 803AD678  4E 80 00 20 */	blr 
