lbl_805D06F0:
/* 805D06F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805D06F4  7C 08 02 A6 */	mflr r0
/* 805D06F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805D06FC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805D0700  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805D0704  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805D0708  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805D070C  39 61 00 20 */	addi r11, r1, 0x20
/* 805D0710  4B AC A7 C5 */	bl func_8009AED4
/* 805D0714  FF C0 08 90 */	fmr f30, f1
/* 805D0718  7C 7D 1B 78 */	mr r29, r3
/* 805D071C  FF E0 10 90 */	fmr f31, f2
/* 805D0720  7C DE 33 78 */	mr r30, r6
/* 805D0724  4B E3 BA B1 */	bl Matrix_push
/* 805D0728  3C 80 80 65 */	lis r4, lit_862@ha /* 0x8064B0EC@ha */
/* 805D072C  3C 60 80 65 */	lis r3, lit_615@ha /* 0x8064B0B0@ha */
/* 805D0730  C0 24 B0 EC */	lfs f1, lit_862@l(r4)  /* 0x8064B0EC@l */
/* 805D0734  C0 63 B0 B0 */	lfs f3, lit_615@l(r3)  /* 0x8064B0B0@l */
/* 805D0738  38 60 00 00 */	li r3, 0
/* 805D073C  FC 40 08 90 */	fmr f2, f1
/* 805D0740  83 FD 02 D0 */	lwz r31, 0x2d0(r29)
/* 805D0744  4B E3 BC A9 */	bl Matrix_scale
/* 805D0748  3C 60 80 65 */	lis r3, lit_863@ha /* 0x8064B0F0@ha */
/* 805D074C  FC 20 F0 90 */	fmr f1, f30
/* 805D0750  C0 63 B0 F0 */	lfs f3, lit_863@l(r3)  /* 0x8064B0F0@l */
/* 805D0754  FC 40 F8 90 */	fmr f2, f31
/* 805D0758  38 60 00 01 */	li r3, 1
/* 805D075C  4B E3 BB A5 */	bl Matrix_translate
/* 805D0760  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805D0764  7F A3 EB 78 */	mr r3, r29
/* 805D0768  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805D076C  90 1F 00 00 */	stw r0, 0(r31)
/* 805D0770  4B E3 CC 65 */	bl _Matrix_to_Mtx_new
/* 805D0774  90 7F 00 04 */	stw r3, 4(r31)
/* 805D0778  3D 20 DE 00 */	lis r9, 0xde00
/* 805D077C  3C 60 80 A5 */	lis r3, dia_init_mode_letter@ha /* 0x80A54AA0@ha */
/* 805D0780  3D 00 80 A5 */	lis r8, dia_win_wT_model@ha /* 0x80A57EE8@ha */
/* 805D0784  91 3F 00 08 */	stw r9, 8(r31)
/* 805D0788  38 03 4A A0 */	addi r0, r3, dia_init_mode_letter@l /* 0x80A54AA0@l */
/* 805D078C  3C E0 80 A5 */	lis r7, dia_win_fusenT_model@ha /* 0x80A57F38@ha */
/* 805D0790  3C C0 FD 6C */	lis r6, 0xFD6C /* 0xFD6C0C3F@ha */
/* 805D0794  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805D0798  3C A0 80 6D */	lis r5, month_tex_table@ha /* 0x806CB9B0@ha */
/* 805D079C  3C 80 D2 F0 */	lis r4, 0xD2F0 /* 0xD2F00A00@ha */
/* 805D07A0  3C 60 80 A5 */	lis r3, dia_win_tukiT_model@ha /* 0x80A57F70@ha */
/* 805D07A4  91 3F 00 10 */	stw r9, 0x10(r31)
/* 805D07A8  38 08 7E E8 */	addi r0, r8, dia_win_wT_model@l /* 0x80A57EE8@l */
/* 805D07AC  38 E7 7F 38 */	addi r7, r7, dia_win_fusenT_model@l /* 0x80A57F38@l */
/* 805D07B0  38 C6 0C 3F */	addi r6, r6, 0x0C3F /* 0xFD6C0C3F@l */
/* 805D07B4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805D07B8  57 DE 10 3A */	slwi r30, r30, 2
/* 805D07BC  38 A5 B9 B0 */	addi r5, r5, month_tex_table@l /* 0x806CB9B0@l */
/* 805D07C0  38 84 0A 00 */	addi r4, r4, 0x0A00 /* 0xD2F00A00@l */
/* 805D07C4  91 3F 00 18 */	stw r9, 0x18(r31)
/* 805D07C8  38 03 7F 70 */	addi r0, r3, dia_win_tukiT_model@l /* 0x80A57F70@l */
/* 805D07CC  90 FF 00 1C */	stw r7, 0x1c(r31)
/* 805D07D0  90 DF 00 20 */	stw r6, 0x20(r31)
/* 805D07D4  7C 65 F0 2E */	lwzx r3, r5, r30
/* 805D07D8  90 7F 00 24 */	stw r3, 0x24(r31)
/* 805D07DC  90 9F 00 28 */	stw r4, 0x28(r31)
/* 805D07E0  91 3F 00 30 */	stw r9, 0x30(r31)
/* 805D07E4  90 1F 00 34 */	stw r0, 0x34(r31)
/* 805D07E8  3B FF 00 38 */	addi r31, r31, 0x38
/* 805D07EC  4B E3 B9 E9 */	bl Matrix_push
/* 805D07F0  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064B0D4@ha */
/* 805D07F4  3C A0 80 6D */	lis r5, month_tex_adjust@ha /* 0x806CB9E0@ha */
/* 805D07F8  38 83 B0 D4 */	addi r4, r3, lit_624@l /* 0x8064B0D4@l */
/* 805D07FC  38 60 00 01 */	li r3, 1
/* 805D0800  C0 44 00 00 */	lfs f2, 0(r4)
/* 805D0804  38 85 B9 E0 */	addi r4, r5, month_tex_adjust@l /* 0x806CB9E0@l */
/* 805D0808  7C 24 F4 2E */	lfsx f1, r4, r30
/* 805D080C  FC 60 10 90 */	fmr f3, f2
/* 805D0810  4B E3 BA F1 */	bl Matrix_translate
/* 805D0814  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805D0818  7F A3 EB 78 */	mr r3, r29
/* 805D081C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805D0820  90 1F 00 00 */	stw r0, 0(r31)
/* 805D0824  4B E3 CB B1 */	bl _Matrix_to_Mtx_new
/* 805D0828  90 7F 00 04 */	stw r3, 4(r31)
/* 805D082C  3C 00 DE 00 */	lis r0, 0xde00
/* 805D0830  3C 60 80 A5 */	lis r3, dia_win_moji_model@ha /* 0x80A57EB0@ha */
/* 805D0834  90 1F 00 08 */	stw r0, 8(r31)
/* 805D0838  38 03 7E B0 */	addi r0, r3, dia_win_moji_model@l /* 0x80A57EB0@l */
/* 805D083C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805D0840  3B FF 00 10 */	addi r31, r31, 0x10
/* 805D0844  4B E3 B9 D1 */	bl Matrix_pull
/* 805D0848  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064B0D4@ha */
/* 805D084C  3C 80 80 65 */	lis r4, lit_905@ha /* 0x8064B0F4@ha */
/* 805D0850  38 A3 B0 D4 */	addi r5, r3, lit_624@l /* 0x8064B0D4@l */
/* 805D0854  C0 44 B0 F4 */	lfs f2, lit_905@l(r4)  /* 0x8064B0F4@l */
/* 805D0858  C0 25 00 00 */	lfs f1, 0(r5)
/* 805D085C  38 60 00 01 */	li r3, 1
/* 805D0860  FC 60 08 90 */	fmr f3, f1
/* 805D0864  4B E3 BA 9D */	bl Matrix_translate
/* 805D0868  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805D086C  7F A3 EB 78 */	mr r3, r29
/* 805D0870  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805D0874  90 1F 00 00 */	stw r0, 0(r31)
/* 805D0878  4B E3 CB 5D */	bl _Matrix_to_Mtx_new
/* 805D087C  90 7F 00 04 */	stw r3, 4(r31)
/* 805D0880  3C C0 DE 00 */	lis r6, 0xde00
/* 805D0884  3C 80 80 A6 */	lis r4, dia_win2_wT_model@ha /* 0x80A581A0@ha */
/* 805D0888  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064B0D4@ha */
/* 805D088C  90 DF 00 08 */	stw r6, 8(r31)
/* 805D0890  38 04 81 A0 */	addi r0, r4, dia_win2_wT_model@l /* 0x80A581A0@l */
/* 805D0894  38 83 B0 D4 */	addi r4, r3, lit_624@l /* 0x8064B0D4@l */
/* 805D0898  3C 60 80 65 */	lis r3, lit_906@ha /* 0x8064B0F8@ha */
/* 805D089C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805D08A0  3C A0 80 A6 */	lis r5, dia_win2_fusenT_model@ha /* 0x80A581E0@ha */
/* 805D08A4  C0 24 00 00 */	lfs f1, 0(r4)
/* 805D08A8  38 05 81 E0 */	addi r0, r5, dia_win2_fusenT_model@l /* 0x80A581E0@l */
/* 805D08AC  90 DF 00 10 */	stw r6, 0x10(r31)
/* 805D08B0  FC 60 08 90 */	fmr f3, f1
/* 805D08B4  C0 43 B0 F8 */	lfs f2, lit_906@l(r3)  /* 0x8064B0F8@l */
/* 805D08B8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805D08BC  38 60 00 01 */	li r3, 1
/* 805D08C0  3B FF 00 18 */	addi r31, r31, 0x18
/* 805D08C4  4B E3 BA 3D */	bl Matrix_translate
/* 805D08C8  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805D08CC  7F A3 EB 78 */	mr r3, r29
/* 805D08D0  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805D08D4  90 1F 00 00 */	stw r0, 0(r31)
/* 805D08D8  4B E3 CA FD */	bl _Matrix_to_Mtx_new
/* 805D08DC  90 7F 00 04 */	stw r3, 4(r31)
/* 805D08E0  3C A0 DE 00 */	lis r5, 0xde00
/* 805D08E4  3C 80 80 A6 */	lis r4, dia_win3_wT_model@ha /* 0x80A58470@ha */
/* 805D08E8  3C 60 80 A6 */	lis r3, dia_win3_fusenT_model@ha /* 0x80A584C0@ha */
/* 805D08EC  90 BF 00 08 */	stw r5, 8(r31)
/* 805D08F0  38 84 84 70 */	addi r4, r4, dia_win3_wT_model@l /* 0x80A58470@l */
/* 805D08F4  38 03 84 C0 */	addi r0, r3, dia_win3_fusenT_model@l /* 0x80A584C0@l */
/* 805D08F8  90 9F 00 0C */	stw r4, 0xc(r31)
/* 805D08FC  3B FF 00 10 */	addi r31, r31, 0x10
/* 805D0900  7F E3 FB 78 */	mr r3, r31
/* 805D0904  90 BF 00 00 */	stw r5, 0(r31)
/* 805D0908  3B FF 00 08 */	addi r31, r31, 8
/* 805D090C  90 03 00 04 */	stw r0, 4(r3)
/* 805D0910  93 FD 02 D0 */	stw r31, 0x2d0(r29)
/* 805D0914  4B E3 B9 01 */	bl Matrix_pull
/* 805D0918  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805D091C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805D0920  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805D0924  39 61 00 20 */	addi r11, r1, 0x20
/* 805D0928  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805D092C  4B AC A5 F5 */	bl func_8009AF20
/* 805D0930  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805D0934  7C 08 03 A6 */	mtlr r0
/* 805D0938  38 21 00 40 */	addi r1, r1, 0x40
/* 805D093C  4E 80 00 20 */	blr 
