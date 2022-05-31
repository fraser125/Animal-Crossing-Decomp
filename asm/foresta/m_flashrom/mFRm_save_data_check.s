lbl_803AC844:
/* 803AC844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AC848  7C 08 02 A6 */	mflr r0
/* 803AC84C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AC850  39 61 00 20 */	addi r11, r1, 0x20
/* 803AC854  4B CE E6 7D */	bl func_8009AED0
/* 803AC858  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 803AC85C  3C 80 81 16 */	lis r4, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AC860  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 803AC864  3B E0 00 00 */	li r31, 0
/* 803AC868  3C A0 81 16 */	lis r5, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AC86C  93 E4 7D 14 */	stw r31, l_mfrm_now_color@l(r4)  /* 0x81167D14@l */
/* 803AC870  2C 00 00 02 */	cmpwi r0, 2
/* 803AC874  3B 80 00 00 */	li r28, 0
/* 803AC878  38 65 7D 18 */	addi r3, r5, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AC87C  41 80 00 60 */	blt lbl_803AC8DC
/* 803AC880  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803AC884  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803AC888  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803AC88C  2C 00 00 07 */	cmpwi r0, 7
/* 803AC890  40 82 00 4C */	bne lbl_803AC8DC
/* 803AC894  38 80 00 0A */	li r4, 0xa
/* 803AC898  4B FF FF 7D */	bl mFRm_get_errInfoNum
/* 803AC89C  2C 03 00 00 */	cmpwi r3, 0
/* 803AC8A0  40 82 00 3C */	bne lbl_803AC8DC
/* 803AC8A4  3C 80 80 65 */	lis r4, proc@ha /* 0x80654170@ha */
/* 803AC8A8  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AC8AC  3B A4 41 70 */	addi r29, r4, proc@l /* 0x80654170@l */
/* 803AC8B0  3B C3 7D 14 */	addi r30, r3, l_mfrm_now_color@l /* 0x81167D14@l */
lbl_803AC8B4:
/* 803AC8B4  7D 9D F8 2E */	lwzx r12, r29, r31
/* 803AC8B8  7D 89 03 A6 */	mtctr r12
/* 803AC8BC  4E 80 04 21 */	bctrl 
/* 803AC8C0  80 7E 00 00 */	lwz r3, 0(r30)
/* 803AC8C4  3B 9C 00 01 */	addi r28, r28, 1
/* 803AC8C8  2C 1C 00 07 */	cmpwi r28, 7
/* 803AC8CC  3B FF 00 04 */	addi r31, r31, 4
/* 803AC8D0  38 03 00 01 */	addi r0, r3, 1
/* 803AC8D4  90 1E 00 00 */	stw r0, 0(r30)
/* 803AC8D8  41 80 FF DC */	blt lbl_803AC8B4
lbl_803AC8DC:
/* 803AC8DC  39 61 00 20 */	addi r11, r1, 0x20
/* 803AC8E0  4B CE E6 3D */	bl func_8009AF1C
/* 803AC8E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AC8E8  7C 08 03 A6 */	mtlr r0
/* 803AC8EC  38 21 00 20 */	addi r1, r1, 0x20
/* 803AC8F0  4E 80 00 20 */	blr 
