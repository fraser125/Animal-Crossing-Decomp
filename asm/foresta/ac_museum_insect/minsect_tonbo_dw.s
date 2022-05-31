lbl_80460F90:
/* 80460F90  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80460F94  7C 08 02 A6 */	mflr r0
/* 80460F98  90 01 00 64 */	stw r0, 0x64(r1)
/* 80460F9C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80460FA0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80460FA4  39 61 00 50 */	addi r11, r1, 0x50
/* 80460FA8  4B C3 9F 21 */	bl func_8009AEC8
/* 80460FAC  3C A0 80 64 */	lis r5, lit_1590@ha /* 0x80644764@ha */
/* 80460FB0  38 00 00 03 */	li r0, 3
/* 80460FB4  38 A5 47 64 */	addi r5, r5, lit_1590@l /* 0x80644764@l */
/* 80460FB8  7C 7C 1B 78 */	mr r28, r3
/* 80460FBC  7C 9D 23 78 */	mr r29, r4
/* 80460FC0  38 C1 00 0C */	addi r6, r1, 0xc
/* 80460FC4  38 85 FF FC */	addi r4, r5, -4
/* 80460FC8  7C 09 03 A6 */	mtctr r0
lbl_80460FCC:
/* 80460FCC  80 64 00 04 */	lwz r3, 4(r4)
/* 80460FD0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80460FD4  90 66 00 04 */	stw r3, 4(r6)
/* 80460FD8  94 06 00 08 */	stwu r0, 8(r6)
/* 80460FDC  42 00 FF F0 */	bdnz lbl_80460FCC
/* 80460FE0  3C 80 80 64 */	lis r4, lit_1591@ha /* 0x8064477C@ha */
/* 80460FE4  38 7C 00 1C */	addi r3, r28, 0x1c
/* 80460FE8  38 C4 47 7C */	addi r6, r4, lit_1591@l /* 0x8064477C@l */
/* 80460FEC  38 9C 00 44 */	addi r4, r28, 0x44
/* 80460FF0  80 A6 00 00 */	lwz r5, 0(r6)
/* 80460FF4  80 06 00 04 */	lwz r0, 4(r6)
/* 80460FF8  90 A1 00 08 */	stw r5, 8(r1)
/* 80460FFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80461000  4B F5 9F D5 */	bl search_position_distance
/* 80461004  80 7D 00 00 */	lwz r3, 0(r29)
/* 80461008  4B F8 41 51 */	bl _texture_z_light_fog_prim_xlu
/* 8046100C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80461010  4B F8 40 F9 */	bl _texture_z_light_fog_prim
/* 80461014  3C 60 80 46 */	lis r3, minsect_tonbo_rock_wait_process@ha /* 0x80460864@ha */
/* 80461018  80 9C 00 04 */	lwz r4, 4(r28)
/* 8046101C  38 03 08 64 */	addi r0, r3, minsect_tonbo_rock_wait_process@l /* 0x80460864@l */
/* 80461020  7C 04 00 40 */	cmplw r4, r0
/* 80461024  40 82 00 10 */	bne lbl_80461034
/* 80461028  A8 1C 00 74 */	lha r0, 0x74(r28)
/* 8046102C  2C 00 00 06 */	cmpwi r0, 6
/* 80461030  40 80 00 38 */	bge lbl_80461068
lbl_80461034:
/* 80461034  3C 60 80 46 */	lis r3, minsect_tonbo_rock_process@ha /* 0x80460250@ha */
/* 80461038  38 03 02 50 */	addi r0, r3, minsect_tonbo_rock_process@l /* 0x80460250@l */
/* 8046103C  7C 04 00 40 */	cmplw r4, r0
/* 80461040  40 82 00 10 */	bne lbl_80461050
/* 80461044  A8 1C 00 74 */	lha r0, 0x74(r28)
/* 80461048  2C 00 00 06 */	cmpwi r0, 6
/* 8046104C  40 80 00 1C */	bge lbl_80461068
lbl_80461050:
/* 80461050  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80461054  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80461058  80 63 00 00 */	lwz r3, 0(r3)
/* 8046105C  A8 03 16 BA */	lha r0, 0x16ba(r3)
/* 80461060  2C 00 00 00 */	cmpwi r0, 0
/* 80461064  41 82 01 28 */	beq lbl_8046118C
lbl_80461068:
/* 80461068  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8046106C  7F A3 EB 78 */	mr r3, r29
/* 80461070  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80461074  3C 84 00 02 */	addis r4, r4, 2
/* 80461078  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 8046107C  8B C4 00 14 */	lbz r30, 0x14(r4)
/* 80461080  7F DE 07 74 */	extsb r30, r30
/* 80461084  4B F7 85 BD */	bl get_player_actor_withoutCheck
/* 80461088  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 8046108C  7C 7F 1B 78 */	mr r31, r3
/* 80461090  38 64 61 38 */	addi r3, r4, debug_mode@l /* 0x81166138@l */
/* 80461094  80 63 00 00 */	lwz r3, 0(r3)
/* 80461098  A8 63 16 B6 */	lha r3, 0x16b6(r3)
/* 8046109C  7C 60 07 35 */	extsh. r0, r3
/* 804610A0  41 82 00 40 */	beq lbl_804610E0
/* 804610A4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804610A8  3C 00 43 30 */	lis r0, 0x4330
/* 804610AC  90 01 00 28 */	stw r0, 0x28(r1)
/* 804610B0  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 804610B4  1C 1E 00 0C */	mulli r0, r30, 0xc
/* 804610B8  90 61 00 2C */	stw r3, 0x2c(r1)
/* 804610BC  38 64 46 3C */	addi r3, r4, lit_589@l /* 0x8064463C@l */
/* 804610C0  C8 23 00 00 */	lfd f1, 0(r3)
/* 804610C4  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 804610C8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804610CC  C0 44 46 54 */	lfs f2, lit_678@l(r4)  /* 0x80644654@l */
/* 804610D0  38 61 00 14 */	addi r3, r1, 0x14
/* 804610D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 804610D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 804610DC  7C 03 05 2E */	stfsx f0, r3, r0
lbl_804610E0:
/* 804610E0  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 804610E4  4B F5 9A 0D */	bl sin_s
/* 804610E8  57 C0 10 3A */	slwi r0, r30, 2
/* 804610EC  38 61 00 08 */	addi r3, r1, 8
/* 804610F0  7F E3 04 2E */	lfsx f31, r3, r0
/* 804610F4  1F DE 00 0C */	mulli r30, r30, 0xc
/* 804610F8  3B 61 00 10 */	addi r27, r1, 0x10
/* 804610FC  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 80461100  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80461104  7C 1B F4 2E */	lfsx f0, r27, r30
/* 80461108  EC 00 08 2A */	fadds f0, f0, f1
/* 8046110C  7C 1B F5 2E */	stfsx f0, r27, r30
/* 80461110  4B F5 99 8D */	bl cos_s
/* 80461114  3B E1 00 18 */	addi r31, r1, 0x18
/* 80461118  EC 5F 00 72 */	fmuls f2, f31, f1
/* 8046111C  7C 1F F4 2E */	lfsx f0, r31, r30
/* 80461120  3B 41 00 14 */	addi r26, r1, 0x14
/* 80461124  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 80461128  38 60 00 00 */	li r3, 0
/* 8046112C  EC 00 10 2A */	fadds f0, f0, f2
/* 80461130  C0 DC 00 1C */	lfs f6, 0x1c(r28)
/* 80461134  C0 BC 00 58 */	lfs f5, 0x58(r28)
/* 80461138  7C 1F F5 2E */	stfsx f0, r31, r30
/* 8046113C  C0 5C 00 24 */	lfs f2, 0x24(r28)
/* 80461140  7C 1A F4 2E */	lfsx f0, r26, r30
/* 80461144  7C 7B F4 2E */	lfsx f3, r27, r30
/* 80461148  EC 81 00 28 */	fsubs f4, f1, f0
/* 8046114C  7C 1F F4 2E */	lfsx f0, r31, r30
/* 80461150  EC 26 18 28 */	fsubs f1, f6, f3
/* 80461154  EC 62 00 28 */	fsubs f3, f2, f0
/* 80461158  EC 45 20 2A */	fadds f2, f5, f4
/* 8046115C  4B FA B1 A5 */	bl Matrix_translate
/* 80461160  A8 7C 00 7E */	lha r3, 0x7e(r28)
/* 80461164  38 80 00 00 */	li r4, 0
/* 80461168  A8 BC 00 80 */	lha r5, 0x80(r28)
/* 8046116C  38 C0 00 01 */	li r6, 1
/* 80461170  4B FA B8 25 */	bl Matrix_rotateXYZ
/* 80461174  7C 3B F4 2E */	lfsx f1, r27, r30
/* 80461178  38 60 00 01 */	li r3, 1
/* 8046117C  7C 5A F4 2E */	lfsx f2, r26, r30
/* 80461180  7C 7F F4 2E */	lfsx f3, r31, r30
/* 80461184  4B FA B1 7D */	bl Matrix_translate
/* 80461188  48 00 00 20 */	b lbl_804611A8
lbl_8046118C:
/* 8046118C  C0 5C 00 20 */	lfs f2, 0x20(r28)
/* 80461190  38 60 00 00 */	li r3, 0
/* 80461194  C0 1C 00 58 */	lfs f0, 0x58(r28)
/* 80461198  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 8046119C  EC 42 00 2A */	fadds f2, f2, f0
/* 804611A0  C0 7C 00 24 */	lfs f3, 0x24(r28)
/* 804611A4  4B FA B1 5D */	bl Matrix_translate
lbl_804611A8:
/* 804611A8  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 804611AC  38 60 00 01 */	li r3, 1
/* 804611B0  FC 40 08 90 */	fmr f2, f1
/* 804611B4  FC 60 08 90 */	fmr f3, f1
/* 804611B8  4B FA B2 35 */	bl Matrix_scale
/* 804611BC  A8 7C 00 68 */	lha r3, 0x68(r28)
/* 804611C0  38 C0 00 01 */	li r6, 1
/* 804611C4  A8 9C 00 6A */	lha r4, 0x6a(r28)
/* 804611C8  A8 BC 00 6C */	lha r5, 0x6c(r28)
/* 804611CC  4B FA B7 C9 */	bl Matrix_rotateXYZ
/* 804611D0  83 5D 00 00 */	lwz r26, 0(r29)
/* 804611D4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804611D8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804611DC  83 7A 02 E0 */	lwz r27, 0x2e0(r26)
/* 804611E0  90 1B 00 00 */	stw r0, 0(r27)
/* 804611E4  7F 7E DB 78 */	mr r30, r27
/* 804611E8  3B 7B 00 08 */	addi r27, r27, 8
/* 804611EC  80 7D 00 00 */	lwz r3, 0(r29)
/* 804611F0  4B FA C1 E5 */	bl _Matrix_to_Mtx_new
/* 804611F4  90 7E 00 04 */	stw r3, 4(r30)
/* 804611F8  7F 65 DB 78 */	mr r5, r27
/* 804611FC  3C 00 DE 00 */	lis r0, 0xde00
/* 80461200  3C 80 80 68 */	lis r4, minsect_mdl@ha /* 0x8068654C@ha */
/* 80461204  90 1B 00 00 */	stw r0, 0(r27)
/* 80461208  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8046120C  38 84 65 4C */	addi r4, r4, minsect_mdl@l /* 0x8068654C@l */
/* 80461210  3B 7B 00 08 */	addi r27, r27, 8
/* 80461214  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80461218  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8046121C  80 7C 00 00 */	lwz r3, 0(r28)
/* 80461220  FC 00 00 1E */	fctiwz f0, f0
/* 80461224  54 63 10 3A */	slwi r3, r3, 2
/* 80461228  7C 84 18 2E */	lwzx r4, r4, r3
/* 8046122C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80461230  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80461234  54 63 10 3A */	slwi r3, r3, 2
/* 80461238  7C 64 18 2E */	lwzx r3, r4, r3
/* 8046123C  90 65 00 04 */	stw r3, 4(r5)
/* 80461240  93 7A 02 E0 */	stw r27, 0x2e0(r26)
/* 80461244  83 5D 00 00 */	lwz r26, 0(r29)
/* 80461248  83 DA 02 D0 */	lwz r30, 0x2d0(r26)
/* 8046124C  38 7E 00 08 */	addi r3, r30, 8
/* 80461250  90 7A 02 D0 */	stw r3, 0x2d0(r26)
/* 80461254  90 1E 00 00 */	stw r0, 0(r30)
/* 80461258  80 7D 00 00 */	lwz r3, 0(r29)
/* 8046125C  4B FA C1 79 */	bl _Matrix_to_Mtx_new
/* 80461260  90 7E 00 04 */	stw r3, 4(r30)
/* 80461264  3C 80 80 68 */	lis r4, minsect_mdl@ha /* 0x8068654C@ha */
/* 80461268  3C 00 DE 00 */	lis r0, 0xde00
/* 8046126C  7F 83 E3 78 */	mr r3, r28
/* 80461270  80 FA 02 D0 */	lwz r7, 0x2d0(r26)
/* 80461274  38 A4 65 4C */	addi r5, r4, minsect_mdl@l /* 0x8068654C@l */
/* 80461278  7F A4 EB 78 */	mr r4, r29
/* 8046127C  38 C7 00 08 */	addi r6, r7, 8
/* 80461280  90 DA 02 D0 */	stw r6, 0x2d0(r26)
/* 80461284  90 07 00 00 */	stw r0, 0(r7)
/* 80461288  80 1C 00 00 */	lwz r0, 0(r28)
/* 8046128C  54 00 10 3A */	slwi r0, r0, 2
/* 80461290  7C A5 00 2E */	lwzx r5, r5, r0
/* 80461294  80 05 00 00 */	lwz r0, 0(r5)
/* 80461298  90 07 00 04 */	stw r0, 4(r7)
/* 8046129C  4B FF A6 95 */	bl minsect_draw_shadow
/* 804612A0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804612A4  39 61 00 50 */	addi r11, r1, 0x50
/* 804612A8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804612AC  4B C3 9C 69 */	bl func_8009AF14
/* 804612B0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804612B4  7C 08 03 A6 */	mtlr r0
/* 804612B8  38 21 00 60 */	addi r1, r1, 0x60
/* 804612BC  4E 80 00 20 */	blr 
