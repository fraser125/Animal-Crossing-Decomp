lbl_805D0E80:
/* 805D0E80  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805D0E84  7C 08 02 A6 */	mflr r0
/* 805D0E88  90 01 00 44 */	stw r0, 0x44(r1)
/* 805D0E8C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805D0E90  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805D0E94  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805D0E98  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805D0E9C  39 61 00 20 */	addi r11, r1, 0x20
/* 805D0EA0  4B AC A0 2D */	bl func_8009AECC
/* 805D0EA4  7C BD 2B 78 */	mr r29, r5
/* 805D0EA8  7C 7B 1B 78 */	mr r27, r3
/* 805D0EAC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805D0EB0  7C 9C 23 78 */	mr r28, r4
/* 805D0EB4  C3 E5 00 18 */	lfs f31, 0x18(r5)
/* 805D0EB8  7F A4 EB 78 */	mr r4, r29
/* 805D0EBC  C3 C5 00 1C */	lfs f30, 0x1c(r5)
/* 805D0EC0  83 E3 09 E8 */	lwz r31, 0x9e8(r3)
/* 805D0EC4  FC 20 F8 90 */	fmr f1, f31
/* 805D0EC8  83 DC 00 00 */	lwz r30, 0(r28)
/* 805D0ECC  FC 40 F0 90 */	fmr f2, f30
/* 805D0ED0  80 C5 00 44 */	lwz r6, 0x44(r5)
/* 805D0ED4  7F E5 FB 78 */	mr r5, r31
/* 805D0ED8  7F C3 F3 78 */	mr r3, r30
/* 805D0EDC  4B FF F8 15 */	bl mDI_set_frame_dl
/* 805D0EE0  80 9B 00 2C */	lwz r4, 0x2c(r27)
/* 805D0EE4  7F C3 F3 78 */	mr r3, r30
/* 805D0EE8  81 84 09 50 */	lwz r12, 0x950(r4)
/* 805D0EEC  7D 89 03 A6 */	mtctr r12
/* 805D0EF0  4E 80 04 21 */	bctrl 
/* 805D0EF4  FC 20 F8 90 */	fmr f1, f31
/* 805D0EF8  7F 63 DB 78 */	mr r3, r27
/* 805D0EFC  FC 40 F0 90 */	fmr f2, f30
/* 805D0F00  7F 84 E3 78 */	mr r4, r28
/* 805D0F04  7F A5 EB 78 */	mr r5, r29
/* 805D0F08  4B FF FD DD */	bl mDI_set_character
/* 805D0F0C  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 805D0F10  2C 00 00 00 */	cmpwi r0, 0
/* 805D0F14  40 82 00 64 */	bne lbl_805D0F78
/* 805D0F18  80 1D 00 04 */	lwz r0, 4(r29)
/* 805D0F1C  2C 00 00 00 */	cmpwi r0, 0
/* 805D0F20  41 82 00 0C */	beq lbl_805D0F2C
/* 805D0F24  2C 00 00 01 */	cmpwi r0, 1
/* 805D0F28  40 82 00 50 */	bne lbl_805D0F78
lbl_805D0F2C:
/* 805D0F2C  A8 1F 00 1C */	lha r0, 0x1c(r31)
/* 805D0F30  2C 00 00 01 */	cmpwi r0, 1
/* 805D0F34  40 82 00 24 */	bne lbl_805D0F58
/* 805D0F38  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805D0F3C  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064B0D4@ha */
/* 805D0F40  38 83 B0 D4 */	addi r4, r3, lit_624@l /* 0x8064B0D4@l */
/* 805D0F44  7F C3 F3 78 */	mr r3, r30
/* 805D0F48  EC 5F 00 2A */	fadds f2, f31, f0
/* 805D0F4C  C0 24 00 00 */	lfs f1, 0(r4)
/* 805D0F50  4B FF F6 91 */	bl mDI_set_button_dl
/* 805D0F54  48 00 00 24 */	b lbl_805D0F78
lbl_805D0F58:
/* 805D0F58  7C 00 07 35 */	extsh. r0, r0
/* 805D0F5C  40 82 00 1C */	bne lbl_805D0F78
/* 805D0F60  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064B0D4@ha */
/* 805D0F64  FC 40 F8 90 */	fmr f2, f31
/* 805D0F68  38 83 B0 D4 */	addi r4, r3, lit_624@l /* 0x8064B0D4@l */
/* 805D0F6C  7F C3 F3 78 */	mr r3, r30
/* 805D0F70  C0 24 00 00 */	lfs f1, 0(r4)
/* 805D0F74  4B FF F6 6D */	bl mDI_set_button_dl
lbl_805D0F78:
/* 805D0F78  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805D0F7C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805D0F80  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805D0F84  39 61 00 20 */	addi r11, r1, 0x20
/* 805D0F88  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805D0F8C  4B AC 9F 8D */	bl func_8009AF18
/* 805D0F90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805D0F94  7C 08 03 A6 */	mtlr r0
/* 805D0F98  38 21 00 40 */	addi r1, r1, 0x40
/* 805D0F9C  4E 80 00 20 */	blr 
