lbl_805FF1B4:
/* 805FF1B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FF1B8  7C 08 02 A6 */	mflr r0
/* 805FF1BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FF1C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FF1C4  7C 7F 1B 78 */	mr r31, r3
/* 805FF1C8  93 C1 00 08 */	stw r30, 8(r1)
/* 805FF1CC  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 805FF1D0  80 1E 09 7C */	lwz r0, 0x97c(r30)
/* 805FF1D4  28 00 00 00 */	cmplwi r0, 0
/* 805FF1D8  40 82 00 DC */	bne lbl_805FF2B4
/* 805FF1DC  3C 60 81 21 */	lis r3, tag_ovl_data@ha /* 0x81213100@ha */
/* 805FF1E0  38 80 03 C4 */	li r4, 0x3c4
/* 805FF1E4  38 63 31 00 */	addi r3, r3, tag_ovl_data@l /* 0x81213100@l */
/* 805FF1E8  38 A0 00 00 */	li r5, 0
/* 805FF1EC  4B DB B8 5D */	bl mem_clear
/* 805FF1F0  3C 60 80 60 */	lis r3, mTG_move_func@ha /* 0x805FD714@ha */
/* 805FF1F4  3D 20 80 5F */	lis r9, mTG_set_hand_pos@ha /* 0x805EF6B0@ha */
/* 805FF1F8  38 03 D7 14 */	addi r0, r3, mTG_move_func@l /* 0x805FD714@l */
/* 805FF1FC  3D 00 80 5F */	lis r8, mTG_init_tag_data_item_win@ha /* 0x805F159C@ha */
/* 805FF200  3C 80 80 60 */	lis r4, mTG_draw_func@ha /* 0x805FF098@ha */
/* 805FF204  90 1E 09 1C */	stw r0, 0x91c(r30)
/* 805FF208  38 04 F0 98 */	addi r0, r4, mTG_draw_func@l /* 0x805FF098@l */
/* 805FF20C  3C 60 81 21 */	lis r3, tag_ovl_data@ha /* 0x81213100@ha */
/* 805FF210  90 1E 09 20 */	stw r0, 0x920(r30)
/* 805FF214  38 63 31 00 */	addi r3, r3, tag_ovl_data@l /* 0x81213100@l */
/* 805FF218  39 89 F6 B0 */	addi r12, r9, mTG_set_hand_pos@l /* 0x805EF6B0@l */
/* 805FF21C  3C E0 80 5F */	lis r7, mTG_chg_tag_func@ha /* 0x805F216C@ha */
/* 805FF220  90 7E 09 7C */	stw r3, 0x97c(r30)
/* 805FF224  3C A0 80 5F */	lis r5, mTG_get_mail_pointer@ha /* 0x805EFFC0@ha */
/* 805FF228  39 27 21 6C */	addi r9, r7, mTG_chg_tag_func@l /* 0x805F216C@l */
/* 805FF22C  39 48 15 9C */	addi r10, r8, mTG_init_tag_data_item_win@l /* 0x805F159C@l */
/* 805FF230  81 7F 00 2C */	lwz r11, 0x2c(r31)
/* 805FF234  3C C0 80 5F */	lis r6, mTG_get_table_idx@ha /* 0x805EFB60@ha */
/* 805FF238  38 E5 FF C0 */	addi r7, r5, mTG_get_mail_pointer@l /* 0x805EFFC0@l */
/* 805FF23C  3C 80 80 5F */	lis r4, mTG_exchange_proc@ha /* 0x805F79DC@ha */
/* 805FF240  81 6B 09 7C */	lwz r11, 0x97c(r11)
/* 805FF244  39 06 FB 60 */	addi r8, r6, mTG_get_table_idx@l /* 0x805EFB60@l */
/* 805FF248  38 C4 79 DC */	addi r6, r4, mTG_exchange_proc@l /* 0x805F79DC@l */
/* 805FF24C  38 00 00 04 */	li r0, 4
/* 805FF250  91 8B 02 D8 */	stw r12, 0x2d8(r11)
/* 805FF254  39 63 00 08 */	addi r11, r3, 8
/* 805FF258  38 80 00 00 */	li r4, 0
/* 805FF25C  80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 805FF260  80 A5 09 7C */	lwz r5, 0x97c(r5)
/* 805FF264  91 45 02 E0 */	stw r10, 0x2e0(r5)
/* 805FF268  80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 805FF26C  80 A5 09 7C */	lwz r5, 0x97c(r5)
/* 805FF270  91 25 02 E4 */	stw r9, 0x2e4(r5)
/* 805FF274  80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 805FF278  80 A5 09 7C */	lwz r5, 0x97c(r5)
/* 805FF27C  91 05 02 EC */	stw r8, 0x2ec(r5)
/* 805FF280  80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 805FF284  80 A5 09 7C */	lwz r5, 0x97c(r5)
/* 805FF288  90 E5 02 E8 */	stw r7, 0x2e8(r5)
/* 805FF28C  80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 805FF290  80 A5 09 7C */	lwz r5, 0x97c(r5)
/* 805FF294  90 C5 02 DC */	stw r6, 0x2dc(r5)
/* 805FF298  7C 09 03 A6 */	mtctr r0
lbl_805FF29C:
/* 805FF29C  98 8B 00 00 */	stb r4, 0(r11)
/* 805FF2A0  39 6B 00 B4 */	addi r11, r11, 0xb4
/* 805FF2A4  42 00 FF F8 */	bdnz lbl_805FF29C
/* 805FF2A8  38 00 FF FF */	li r0, -1
/* 805FF2AC  90 03 00 00 */	stw r0, 0(r3)
/* 805FF2B0  90 03 00 04 */	stw r0, 4(r3)
lbl_805FF2B4:
/* 805FF2B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FF2B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FF2BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805FF2C0  7C 08 03 A6 */	mtlr r0
/* 805FF2C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805FF2C8  4E 80 00 20 */	blr 
