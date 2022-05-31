lbl_804D058C:
/* 804D058C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D0590  7C 08 02 A6 */	mflr r0
/* 804D0594  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D0598  39 61 00 20 */	addi r11, r1, 0x20
/* 804D059C  4B BC A9 39 */	bl func_8009AED4
/* 804D05A0  7C 7D 1B 78 */	mr r29, r3
/* 804D05A4  7C 9E 23 78 */	mr r30, r4
/* 804D05A8  4B EE 92 A9 */	bl mKK_windowlight_alpha_get
/* 804D05AC  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806463C4@ha */
/* 804D05B0  C0 03 63 C4 */	lfs f0, lit_506@l(r3)  /* 0x806463C4@l */
/* 804D05B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D05B8  41 80 00 4C */	blt lbl_804D0604
/* 804D05BC  3C 60 80 64 */	lis r3, lit_391@ha /* 0x80646388@ha */
/* 804D05C0  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 804D05C4  C0 23 63 88 */	lfs f1, lit_391@l(r3)  /* 0x80646388@l */
/* 804D05C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804D05CC  40 82 00 08 */	bne lbl_804D05D4
/* 804D05D0  48 00 00 34 */	b lbl_804D0604
lbl_804D05D4:
/* 804D05D4  83 FE 00 00 */	lwz r31, 0(r30)
/* 804D05D8  7F A3 EB 78 */	mr r3, r29
/* 804D05DC  7F C4 F3 78 */	mr r4, r30
/* 804D05E0  4B FF FD C5 */	bl setup_mode_Ef_Room_Sunshine_Posthouse
/* 804D05E4  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 804D05E8  3C 60 80 9D */	lis r3, obj_yubinkyoku_shine_modelT@ha /* 0x809C8000@ha */
/* 804D05EC  3C 80 DE 00 */	lis r4, 0xde00
/* 804D05F0  38 A6 00 08 */	addi r5, r6, 8
/* 804D05F4  38 03 80 00 */	addi r0, r3, obj_yubinkyoku_shine_modelT@l /* 0x809C8000@l */
/* 804D05F8  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 804D05FC  90 86 00 00 */	stw r4, 0(r6)
/* 804D0600  90 06 00 04 */	stw r0, 4(r6)
lbl_804D0604:
/* 804D0604  39 61 00 20 */	addi r11, r1, 0x20
/* 804D0608  4B BC A9 19 */	bl func_8009AF20
/* 804D060C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D0610  7C 08 03 A6 */	mtlr r0
/* 804D0614  38 21 00 20 */	addi r1, r1, 0x20
/* 804D0618  4E 80 00 20 */	blr 
