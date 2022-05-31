lbl_804AD054:
/* 804AD054  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804AD058  7C 08 02 A6 */	mflr r0
/* 804AD05C  90 01 00 54 */	stw r0, 0x54(r1)
/* 804AD060  39 61 00 50 */	addi r11, r1, 0x50
/* 804AD064  4B BE DE 6D */	bl func_8009AED0
/* 804AD068  3C A0 80 64 */	lis r5, lit_501@ha /* 0x80645EE8@ha */
/* 804AD06C  7C 9E 23 78 */	mr r30, r4
/* 804AD070  C0 25 5E E8 */	lfs f1, lit_501@l(r5)  /* 0x80645EE8@l */
/* 804AD074  7C 7D 1B 78 */	mr r29, r3
/* 804AD078  83 FE 00 00 */	lwz r31, 0(r30)
/* 804AD07C  38 60 00 00 */	li r3, 0
/* 804AD080  FC 40 08 90 */	fmr f2, f1
/* 804AD084  FC 60 08 90 */	fmr f3, f1
/* 804AD088  4B F5 F2 79 */	bl Matrix_translate
/* 804AD08C  3C 80 80 64 */	lis r4, lit_717@ha /* 0x80645F04@ha */
/* 804AD090  38 60 00 01 */	li r3, 1
/* 804AD094  C0 24 5F 04 */	lfs f1, lit_717@l(r4)  /* 0x80645F04@l */
/* 804AD098  FC 40 08 90 */	fmr f2, f1
/* 804AD09C  FC 60 08 90 */	fmr f3, f1
/* 804AD0A0  4B F5 F3 4D */	bl Matrix_scale
/* 804AD0A4  83 9F 02 D0 */	lwz r28, 0x2d0(r31)
/* 804AD0A8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804AD0AC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804AD0B0  38 7C 00 08 */	addi r3, r28, 8
/* 804AD0B4  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 804AD0B8  90 1C 00 00 */	stw r0, 0(r28)
/* 804AD0BC  80 7E 00 00 */	lwz r3, 0(r30)
/* 804AD0C0  4B F6 03 15 */	bl _Matrix_to_Mtx_new
/* 804AD0C4  90 7C 00 04 */	stw r3, 4(r28)
/* 804AD0C8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804AD0CC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804AD0D0  83 9F 02 E0 */	lwz r28, 0x2e0(r31)
/* 804AD0D4  38 7C 00 08 */	addi r3, r28, 8
/* 804AD0D8  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 804AD0DC  90 1C 00 00 */	stw r0, 0(r28)
/* 804AD0E0  80 7E 00 00 */	lwz r3, 0(r30)
/* 804AD0E4  4B F6 02 F1 */	bl _Matrix_to_Mtx_new
/* 804AD0E8  90 7C 00 04 */	stw r3, 4(r28)
/* 804AD0EC  80 7E 00 00 */	lwz r3, 0(r30)
/* 804AD0F0  4B F3 80 19 */	bl _texture_z_light_fog_prim
/* 804AD0F4  80 7E 00 00 */	lwz r3, 0(r30)
/* 804AD0F8  4B F3 80 61 */	bl _texture_z_light_fog_prim_xlu
/* 804AD0FC  81 9D 01 74 */	lwz r12, 0x174(r29)
/* 804AD100  7F A3 EB 78 */	mr r3, r29
/* 804AD104  7F C4 F3 78 */	mr r4, r30
/* 804AD108  7D 89 03 A6 */	mtctr r12
/* 804AD10C  4E 80 04 21 */	bctrl 
/* 804AD110  2C 03 00 00 */	cmpwi r3, 0
/* 804AD114  41 82 02 14 */	beq lbl_804AD328
/* 804AD118  C0 1D 01 A4 */	lfs f0, 0x1a4(r29)
/* 804AD11C  7F C3 F3 78 */	mr r3, r30
/* 804AD120  38 80 00 00 */	li r4, 0
/* 804AD124  38 A0 00 00 */	li r5, 0
/* 804AD128  FC 00 00 1E */	fctiwz f0, f0
/* 804AD12C  38 C0 00 00 */	li r6, 0
/* 804AD130  38 E0 00 7F */	li r7, 0x7f
/* 804AD134  39 00 00 FF */	li r8, 0xff
/* 804AD138  D8 01 00 08 */	stfd f0, 8(r1)
/* 804AD13C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804AD140  54 09 06 3E */	clrlwi r9, r0, 0x18
/* 804AD144  4B FF FD 55 */	bl aTrainWindow_SetLightPrimColorDetail
/* 804AD148  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 804AD14C  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060028@ha */
/* 804AD150  3C 80 80 69 */	lis r4, aTrainWindow_evw_anime_data@ha /* 0x8068F6E4@ha */
/* 804AD154  7F C3 F3 78 */	mr r3, r30
/* 804AD158  38 C7 00 08 */	addi r6, r7, 8
/* 804AD15C  38 05 00 28 */	addi r0, r5, 0x0028 /* 0xDB060028@l */
/* 804AD160  90 DF 02 E0 */	stw r6, 0x2e0(r31)
/* 804AD164  38 84 F6 E4 */	addi r4, r4, aTrainWindow_evw_anime_data@l /* 0x8068F6E4@l */
/* 804AD168  90 07 00 00 */	stw r0, 0(r7)
/* 804AD16C  80 1D 01 80 */	lwz r0, 0x180(r29)
/* 804AD170  90 07 00 04 */	stw r0, 4(r7)
/* 804AD174  4B EC 63 E9 */	bl Evw_Anime_Set
/* 804AD178  C0 1D 01 A4 */	lfs f0, 0x1a4(r29)
/* 804AD17C  7F C3 F3 78 */	mr r3, r30
/* 804AD180  38 80 00 00 */	li r4, 0
/* 804AD184  38 A0 00 00 */	li r5, 0
/* 804AD188  FC 00 00 1E */	fctiwz f0, f0
/* 804AD18C  38 C0 00 00 */	li r6, 0
/* 804AD190  38 E0 00 2B */	li r7, 0x2b
/* 804AD194  39 00 00 FF */	li r8, 0xff
/* 804AD198  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804AD19C  81 21 00 14 */	lwz r9, 0x14(r1)
/* 804AD1A0  4B FF FC F9 */	bl aTrainWindow_SetLightPrimColorDetail
/* 804AD1A4  81 3F 02 D0 */	lwz r9, 0x2d0(r31)
/* 804AD1A8  3C 80 80 C5 */	lis r4, rom_train_out_tunnel_model@ha /* 0x80C4B550@ha */
/* 804AD1AC  3C E0 DE 00 */	lis r7, 0xde00
/* 804AD1B0  7F C3 F3 78 */	mr r3, r30
/* 804AD1B4  38 A9 00 08 */	addi r5, r9, 8
/* 804AD1B8  38 04 B5 50 */	addi r0, r4, rom_train_out_tunnel_model@l /* 0x80C4B550@l */
/* 804AD1BC  90 BF 02 D0 */	stw r5, 0x2d0(r31)
/* 804AD1C0  38 80 00 00 */	li r4, 0
/* 804AD1C4  38 A0 00 00 */	li r5, 0
/* 804AD1C8  38 C0 00 00 */	li r6, 0
/* 804AD1CC  90 E9 00 00 */	stw r7, 0(r9)
/* 804AD1D0  38 E0 00 7F */	li r7, 0x7f
/* 804AD1D4  39 00 00 FF */	li r8, 0xff
/* 804AD1D8  90 09 00 04 */	stw r0, 4(r9)
/* 804AD1DC  C0 1D 01 A4 */	lfs f0, 0x1a4(r29)
/* 804AD1E0  FC 00 00 1E */	fctiwz f0, f0
/* 804AD1E4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804AD1E8  81 21 00 1C */	lwz r9, 0x1c(r1)
/* 804AD1EC  4B FF FC AD */	bl aTrainWindow_SetLightPrimColorDetail
/* 804AD1F0  81 3F 02 D0 */	lwz r9, 0x2d0(r31)
/* 804AD1F4  3C 80 80 C5 */	lis r4, rom_train_out_bgsky_model@ha /* 0x80C4B5B8@ha */
/* 804AD1F8  3C E0 DE 00 */	lis r7, 0xde00
/* 804AD1FC  7F C3 F3 78 */	mr r3, r30
/* 804AD200  38 A9 00 08 */	addi r5, r9, 8
/* 804AD204  38 04 B5 B8 */	addi r0, r4, rom_train_out_bgsky_model@l /* 0x80C4B5B8@l */
/* 804AD208  90 BF 02 D0 */	stw r5, 0x2d0(r31)
/* 804AD20C  38 80 00 00 */	li r4, 0
/* 804AD210  38 A0 00 00 */	li r5, 0
/* 804AD214  38 C0 00 00 */	li r6, 0
/* 804AD218  90 E9 00 00 */	stw r7, 0(r9)
/* 804AD21C  38 E0 00 7F */	li r7, 0x7f
/* 804AD220  39 00 00 FF */	li r8, 0xff
/* 804AD224  90 09 00 04 */	stw r0, 4(r9)
/* 804AD228  C0 1D 01 A4 */	lfs f0, 0x1a4(r29)
/* 804AD22C  FC 00 00 1E */	fctiwz f0, f0
/* 804AD230  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804AD234  81 21 00 24 */	lwz r9, 0x24(r1)
/* 804AD238  4B FF FC 61 */	bl aTrainWindow_SetLightPrimColorDetail
/* 804AD23C  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 804AD240  3C 80 80 C5 */	lis r4, rom_train_out_bgcloud_modelT@ha /* 0x80C4B420@ha */
/* 804AD244  3C A0 DE 00 */	lis r5, 0xde00
/* 804AD248  7F A3 EB 78 */	mr r3, r29
/* 804AD24C  38 C7 00 08 */	addi r6, r7, 8
/* 804AD250  38 04 B4 20 */	addi r0, r4, rom_train_out_bgcloud_modelT@l /* 0x80C4B420@l */
/* 804AD254  90 DF 02 E0 */	stw r6, 0x2e0(r31)
/* 804AD258  7F C4 F3 78 */	mr r4, r30
/* 804AD25C  90 A7 00 00 */	stw r5, 0(r7)
/* 804AD260  90 07 00 04 */	stw r0, 4(r7)
/* 804AD264  4B FF FD 79 */	bl aTrainWindow_SetTreeTextureScroll
/* 804AD268  C0 1D 01 A4 */	lfs f0, 0x1a4(r29)
/* 804AD26C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804AD270  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 804AD274  7F C3 F3 78 */	mr r3, r30
/* 804AD278  FC 00 00 1E */	fctiwz f0, f0
/* 804AD27C  80 E4 00 00 */	lwz r7, 0(r4)
/* 804AD280  39 00 00 FF */	li r8, 0xff
/* 804AD284  A8 87 09 04 */	lha r4, 0x904(r7)
/* 804AD288  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804AD28C  A8 A7 09 06 */	lha r5, 0x906(r7)
/* 804AD290  38 84 FF B0 */	addi r4, r4, -80
/* 804AD294  A8 C7 09 08 */	lha r6, 0x908(r7)
/* 804AD298  A8 E7 09 02 */	lha r7, 0x902(r7)
/* 804AD29C  38 A5 FF BA */	addi r5, r5, -70
/* 804AD2A0  81 21 00 2C */	lwz r9, 0x2c(r1)
/* 804AD2A4  38 C6 FF 60 */	addi r6, r6, -160
/* 804AD2A8  38 E7 00 1B */	addi r7, r7, 0x1b
/* 804AD2AC  4B FF FB ED */	bl aTrainWindow_SetLightPrimColorDetail
/* 804AD2B0  81 3F 02 E0 */	lwz r9, 0x2e0(r31)
/* 804AD2B4  3C 80 80 C5 */	lis r4, rom_train_out_bgtree_modelT@ha /* 0x80C4B480@ha */
/* 804AD2B8  3C E0 DE 00 */	lis r7, 0xde00
/* 804AD2BC  7F C3 F3 78 */	mr r3, r30
/* 804AD2C0  38 A9 00 08 */	addi r5, r9, 8
/* 804AD2C4  38 04 B4 80 */	addi r0, r4, rom_train_out_bgtree_modelT@l /* 0x80C4B480@l */
/* 804AD2C8  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 804AD2CC  38 80 00 00 */	li r4, 0
/* 804AD2D0  38 A0 00 00 */	li r5, 0
/* 804AD2D4  38 C0 00 00 */	li r6, 0
/* 804AD2D8  90 E9 00 00 */	stw r7, 0(r9)
/* 804AD2DC  39 00 00 FF */	li r8, 0xff
/* 804AD2E0  90 09 00 04 */	stw r0, 4(r9)
/* 804AD2E4  C0 3D 01 B4 */	lfs f1, 0x1b4(r29)
/* 804AD2E8  C0 1D 01 A4 */	lfs f0, 0x1a4(r29)
/* 804AD2EC  FC 20 08 1E */	fctiwz f1, f1
/* 804AD2F0  FC 00 00 1E */	fctiwz f0, f0
/* 804AD2F4  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 804AD2F8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804AD2FC  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 804AD300  81 21 00 3C */	lwz r9, 0x3c(r1)
/* 804AD304  4B FF FB 95 */	bl aTrainWindow_SetLightPrimColorDetail
/* 804AD308  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 804AD30C  3C 60 80 C5 */	lis r3, rom_train_out_shineglass_modelT@ha /* 0x80C4B4E8@ha */
/* 804AD310  3C 80 DE 00 */	lis r4, 0xde00
/* 804AD314  38 A6 00 08 */	addi r5, r6, 8
/* 804AD318  38 03 B4 E8 */	addi r0, r3, rom_train_out_shineglass_modelT@l /* 0x80C4B4E8@l */
/* 804AD31C  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 804AD320  90 86 00 00 */	stw r4, 0(r6)
/* 804AD324  90 06 00 04 */	stw r0, 4(r6)
lbl_804AD328:
/* 804AD328  39 61 00 50 */	addi r11, r1, 0x50
/* 804AD32C  4B BE DB F1 */	bl func_8009AF1C
/* 804AD330  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804AD334  7C 08 03 A6 */	mtlr r0
/* 804AD338  38 21 00 50 */	addi r1, r1, 0x50
/* 804AD33C  4E 80 00 20 */	blr 
