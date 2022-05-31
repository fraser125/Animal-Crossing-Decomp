lbl_805E4438:
/* 805E4438  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805E443C  7C 08 02 A6 */	mflr r0
/* 805E4440  90 01 00 54 */	stw r0, 0x54(r1)
/* 805E4444  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805E4448  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805E444C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805E4450  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805E4454  39 61 00 30 */	addi r11, r1, 0x30
/* 805E4458  4B AB 6A 75 */	bl func_8009AECC
/* 805E445C  7C 9B 23 78 */	mr r27, r4
/* 805E4460  7C BC 2B 78 */	mr r28, r5
/* 805E4464  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805E4468  7C 7E 1B 78 */	mr r30, r3
/* 805E446C  83 A5 00 00 */	lwz r29, 0(r5)
/* 805E4470  7C DF 33 78 */	mr r31, r6
/* 805E4474  2C 00 00 0E */	cmpwi r0, 0xe
/* 805E4478  40 82 00 18 */	bne lbl_805E4490
/* 805E447C  3C 60 80 65 */	lis r3, lit_1674@ha /* 0x8064B4B8@ha */
/* 805E4480  C0 1B 00 18 */	lfs f0, 0x18(r27)
/* 805E4484  C0 23 B4 B8 */	lfs f1, lit_1674@l(r3)  /* 0x8064B4B8@l */
/* 805E4488  EF E1 00 2A */	fadds f31, f1, f0
/* 805E448C  48 00 00 08 */	b lbl_805E4494
lbl_805E4490:
/* 805E4490  C3 FB 00 18 */	lfs f31, 0x18(r27)
lbl_805E4494:
/* 805E4494  7F C3 F3 78 */	mr r3, r30
/* 805E4498  7F 64 DB 78 */	mr r4, r27
/* 805E449C  7F E5 FB 78 */	mr r5, r31
/* 805E44A0  4B FF FF 05 */	bl mIV_get_win_posY
/* 805E44A4  80 1B 00 38 */	lwz r0, 0x38(r27)
/* 805E44A8  FF C0 08 90 */	fmr f30, f1
/* 805E44AC  2C 00 00 00 */	cmpwi r0, 0
/* 805E44B0  40 82 00 20 */	bne lbl_805E44D0
/* 805E44B4  7F C3 F3 78 */	mr r3, r30
/* 805E44B8  7F E4 FB 78 */	mr r4, r31
/* 805E44BC  4B FF FF 11 */	bl mIV_up_page_draw_check
/* 805E44C0  2C 03 00 00 */	cmpwi r3, 0
/* 805E44C4  41 82 00 0C */	beq lbl_805E44D0
/* 805E44C8  3B 60 00 01 */	li r27, 1
/* 805E44CC  48 00 00 08 */	b lbl_805E44D4
lbl_805E44D0:
/* 805E44D0  3B 60 00 00 */	li r27, 0
lbl_805E44D4:
/* 805E44D4  FC 20 F8 90 */	fmr f1, f31
/* 805E44D8  7F C3 F3 78 */	mr r3, r30
/* 805E44DC  FC 40 F0 90 */	fmr f2, f30
/* 805E44E0  7F 84 E3 78 */	mr r4, r28
/* 805E44E4  7F A5 EB 78 */	mr r5, r29
/* 805E44E8  7F E6 FB 78 */	mr r6, r31
/* 805E44EC  7F 67 DB 78 */	mr r7, r27
/* 805E44F0  4B FF F2 D1 */	bl mIV_set_base_frame_dl
/* 805E44F4  2C 1B 00 00 */	cmpwi r27, 0
/* 805E44F8  41 82 00 BC */	beq lbl_805E45B4
/* 805E44FC  80 BD 02 D0 */	lwz r5, 0x2d0(r29)
/* 805E4500  3C 60 80 AA */	lis r3, inv_item_mode@ha /* 0x80AA5910@ha */
/* 805E4504  3C 80 DE 00 */	lis r4, 0xde00
/* 805E4508  3B 60 00 00 */	li r27, 0
/* 805E450C  7C A6 2B 78 */	mr r6, r5
/* 805E4510  38 03 59 10 */	addi r0, r3, inv_item_mode@l /* 0x80AA5910@l */
/* 805E4514  90 85 00 00 */	stw r4, 0(r5)
/* 805E4518  38 A5 00 08 */	addi r5, r5, 8
/* 805E451C  90 06 00 04 */	stw r0, 4(r6)
/* 805E4520  90 BD 02 D0 */	stw r5, 0x2d0(r29)
lbl_805E4524:
/* 805E4524  7F 63 DB 78 */	mr r3, r27
/* 805E4528  7F E4 FB 78 */	mr r4, r31
/* 805E452C  4B FF CD B1 */	bl mIV_set_collect_itemNo
/* 805E4530  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 805E4534  7C 7C 1B 78 */	mr r28, r3
/* 805E4538  41 82 00 70 */	beq lbl_805E45A8
/* 805E453C  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805E4540  7F C3 F3 78 */	mr r3, r30
/* 805E4544  7F 66 DB 78 */	mr r6, r27
/* 805E4548  38 81 00 08 */	addi r4, r1, 8
/* 805E454C  80 E5 09 7C */	lwz r7, 0x97c(r5)
/* 805E4550  38 A0 00 07 */	li r5, 7
/* 805E4554  81 87 02 D8 */	lwz r12, 0x2d8(r7)
/* 805E4558  7D 89 03 A6 */	mtctr r12
/* 805E455C  4E 80 04 21 */	bctrl 
/* 805E4560  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805E4564  3C 60 80 65 */	lis r3, lit_741@ha /* 0x8064B3F4@ha */
/* 805E4568  C0 21 00 08 */	lfs f1, 8(r1)
/* 805E456C  38 A3 B3 F4 */	addi r5, r3, lit_741@l /* 0x8064B3F4@l */
/* 805E4570  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805E4574  7F A3 EB 78 */	mr r3, r29
/* 805E4578  81 84 09 5C */	lwz r12, 0x95c(r4)
/* 805E457C  EC 3F 08 2A */	fadds f1, f31, f1
/* 805E4580  EC 5E 00 2A */	fadds f2, f30, f0
/* 805E4584  7F 84 E3 78 */	mr r4, r28
/* 805E4588  C0 65 00 00 */	lfs f3, 0(r5)
/* 805E458C  38 A0 00 00 */	li r5, 0
/* 805E4590  38 C0 00 01 */	li r6, 1
/* 805E4594  38 E0 00 01 */	li r7, 1
/* 805E4598  39 00 00 00 */	li r8, 0
/* 805E459C  39 20 00 00 */	li r9, 0
/* 805E45A0  7D 89 03 A6 */	mtctr r12
/* 805E45A4  4E 80 04 21 */	bctrl 
lbl_805E45A8:
/* 805E45A8  3B 7B 00 01 */	addi r27, r27, 1
/* 805E45AC  2C 1B 00 28 */	cmpwi r27, 0x28
/* 805E45B0  41 80 FF 74 */	blt lbl_805E4524
lbl_805E45B4:
/* 805E45B4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805E45B8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805E45BC  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805E45C0  39 61 00 30 */	addi r11, r1, 0x30
/* 805E45C4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805E45C8  4B AB 69 51 */	bl func_8009AF18
/* 805E45CC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805E45D0  7C 08 03 A6 */	mtlr r0
/* 805E45D4  38 21 00 50 */	addi r1, r1, 0x50
/* 805E45D8  4E 80 00 20 */	blr 
