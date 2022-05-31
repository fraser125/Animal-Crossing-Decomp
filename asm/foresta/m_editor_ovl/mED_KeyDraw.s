lbl_805DB56C:
/* 805DB56C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805DB570  7C 08 02 A6 */	mflr r0
/* 805DB574  90 01 00 44 */	stw r0, 0x44(r1)
/* 805DB578  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805DB57C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805DB580  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805DB584  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805DB588  39 61 00 20 */	addi r11, r1, 0x20
/* 805DB58C  4B AB F9 45 */	bl func_8009AED0
/* 805DB590  3C C0 80 65 */	lis r6, lit_1858@ha /* 0x8064B228@ha */
/* 805DB594  FF C0 08 90 */	fmr f30, f1
/* 805DB598  C0 26 B2 28 */	lfs f1, lit_1858@l(r6)  /* 0x8064B228@l */
/* 805DB59C  3C A0 80 65 */	lis r5, lit_1859@ha /* 0x8064B22C@ha */
/* 805DB5A0  FF E0 10 90 */	fmr f31, f2
/* 805DB5A4  7C 7E 1B 78 */	mr r30, r3
/* 805DB5A8  FC 40 08 90 */	fmr f2, f1
/* 805DB5AC  C0 65 B2 2C */	lfs f3, lit_1859@l(r5)  /* 0x8064B22C@l */
/* 805DB5B0  7C 9F 23 78 */	mr r31, r4
/* 805DB5B4  38 60 00 00 */	li r3, 0
/* 805DB5B8  4B E3 0E 35 */	bl Matrix_scale
/* 805DB5BC  3C 60 80 65 */	lis r3, lit_1800@ha /* 0x8064B220@ha */
/* 805DB5C0  FC 20 F0 90 */	fmr f1, f30
/* 805DB5C4  C0 63 B2 20 */	lfs f3, lit_1800@l(r3)  /* 0x8064B220@l */
/* 805DB5C8  FC 40 F8 90 */	fmr f2, f31
/* 805DB5CC  38 60 00 01 */	li r3, 1
/* 805DB5D0  4B E3 0D 31 */	bl Matrix_translate
/* 805DB5D4  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 805DB5D8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805DB5DC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805DB5E0  7F E3 FB 78 */	mr r3, r31
/* 805DB5E4  90 1D 00 00 */	stw r0, 0(r29)
/* 805DB5E8  7F BC EB 78 */	mr r28, r29
/* 805DB5EC  3B BD 00 08 */	addi r29, r29, 8
/* 805DB5F0  4B E3 1D E5 */	bl _Matrix_to_Mtx_new
/* 805DB5F4  90 7C 00 04 */	stw r3, 4(r28)
/* 805DB5F8  7F A4 EB 78 */	mr r4, r29
/* 805DB5FC  3C 00 DE 00 */	lis r0, 0xde00
/* 805DB600  3C 60 80 A7 */	lis r3, kai_sousa_mode@ha /* 0x80A6D7F0@ha */
/* 805DB604  90 1D 00 00 */	stw r0, 0(r29)
/* 805DB608  38 03 D7 F0 */	addi r0, r3, kai_sousa_mode@l /* 0x80A6D7F0@l */
/* 805DB60C  3B BD 00 08 */	addi r29, r29, 8
/* 805DB610  7F E3 FB 78 */	mr r3, r31
/* 805DB614  90 04 00 04 */	stw r0, 4(r4)
/* 805DB618  7F C4 F3 78 */	mr r4, r30
/* 805DB61C  93 BF 02 D0 */	stw r29, 0x2d0(r31)
/* 805DB620  4B FF F9 85 */	bl mED_KeyDraw_L_button
/* 805DB624  7F E3 FB 78 */	mr r3, r31
/* 805DB628  7F C4 F3 78 */	mr r4, r30
/* 805DB62C  4B FF FA C9 */	bl mED_KeyDraw_R_button
/* 805DB630  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 805DB634  3C C0 DE 00 */	lis r6, 0xde00
/* 805DB638  3C 60 80 A7 */	lis r3, kai_sousa_shitaT_model@ha /* 0x80A6DAB0@ha */
/* 805DB63C  3C A0 80 A7 */	lis r5, kai_sousa_controllerT_model@ha /* 0x80A6DA28@ha */
/* 805DB640  90 C7 00 00 */	stw r6, 0(r7)
/* 805DB644  38 03 DA B0 */	addi r0, r3, kai_sousa_shitaT_model@l /* 0x80A6DAB0@l */
/* 805DB648  3C 80 80 A7 */	lis r4, kai_sousa_controller2T_model@ha /* 0x80A6DAF0@ha */
/* 805DB64C  3C 60 80 A7 */	lis r3, kai_sousa_mojibanT_model@ha /* 0x80A6DB30@ha */
/* 805DB650  90 07 00 04 */	stw r0, 4(r7)
/* 805DB654  38 A5 DA 28 */	addi r5, r5, kai_sousa_controllerT_model@l /* 0x80A6DA28@l */
/* 805DB658  38 84 DA F0 */	addi r4, r4, kai_sousa_controller2T_model@l /* 0x80A6DAF0@l */
/* 805DB65C  38 03 DB 30 */	addi r0, r3, kai_sousa_mojibanT_model@l /* 0x80A6DB30@l */
/* 805DB660  90 C7 00 08 */	stw r6, 8(r7)
/* 805DB664  7F E3 FB 78 */	mr r3, r31
/* 805DB668  90 A7 00 0C */	stw r5, 0xc(r7)
/* 805DB66C  90 C7 00 10 */	stw r6, 0x10(r7)
/* 805DB670  90 87 00 14 */	stw r4, 0x14(r7)
/* 805DB674  38 E7 00 18 */	addi r7, r7, 0x18
/* 805DB678  7C E4 3B 78 */	mr r4, r7
/* 805DB67C  90 C7 00 00 */	stw r6, 0(r7)
/* 805DB680  38 E7 00 08 */	addi r7, r7, 8
/* 805DB684  90 04 00 04 */	stw r0, 4(r4)
/* 805DB688  90 FF 02 D0 */	stw r7, 0x2d0(r31)
/* 805DB68C  4B FF F5 B9 */	bl mED_KeyDraw_A_button
/* 805DB690  7F E3 FB 78 */	mr r3, r31
/* 805DB694  4B FF F6 45 */	bl mED_KeyDraw_B_button
/* 805DB698  7F E3 FB 78 */	mr r3, r31
/* 805DB69C  7F C4 F3 78 */	mr r4, r30
/* 805DB6A0  4B FF F6 D9 */	bl mED_KeyDraw_X_button
/* 805DB6A4  7F E3 FB 78 */	mr r3, r31
/* 805DB6A8  7F C4 F3 78 */	mr r4, r30
/* 805DB6AC  4B FF F7 95 */	bl mED_KeyDraw_Y_button
/* 805DB6B0  7F E3 FB 78 */	mr r3, r31
/* 805DB6B4  4B FF F8 B5 */	bl mED_KeyDraw_START_button
/* 805DB6B8  7F E3 FB 78 */	mr r3, r31
/* 805DB6BC  4B FF FC B9 */	bl mED_KeyDraw_J_key
/* 805DB6C0  7F E3 FB 78 */	mr r3, r31
/* 805DB6C4  7F C4 F3 78 */	mr r4, r30
/* 805DB6C8  4B FF FD 95 */	bl mED_KeyDraw_3D_stick
/* 805DB6CC  7F E3 FB 78 */	mr r3, r31
/* 805DB6D0  7F C4 F3 78 */	mr r4, r30
/* 805DB6D4  4B FF FA C1 */	bl mED_KeyDraw_keyboard
/* 805DB6D8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805DB6DC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805DB6E0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805DB6E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805DB6E8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805DB6EC  4B AB F8 31 */	bl func_8009AF1C
/* 805DB6F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805DB6F4  7C 08 03 A6 */	mtlr r0
/* 805DB6F8  38 21 00 40 */	addi r1, r1, 0x40
/* 805DB6FC  4E 80 00 20 */	blr 
