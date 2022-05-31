lbl_805C8D44:
/* 805C8D44  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805C8D48  7C 08 02 A6 */	mflr r0
/* 805C8D4C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805C8D50  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805C8D54  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805C8D58  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805C8D5C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805C8D60  39 61 00 20 */	addi r11, r1, 0x20
/* 805C8D64  4B AD 21 6D */	bl func_8009AED0
/* 805C8D68  3C A0 80 65 */	lis r5, lit_1174@ha /* 0x8064AE78@ha */
/* 805C8D6C  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805C8D70  FF C0 08 90 */	fmr f30, f1
/* 805C8D74  C0 25 AE 78 */	lfs f1, lit_1174@l(r5)  /* 0x8064AE78@l */
/* 805C8D78  3C 60 80 65 */	lis r3, lit_928@ha /* 0x8064AE64@ha */
/* 805C8D7C  FF E0 10 90 */	fmr f31, f2
/* 805C8D80  38 A3 AE 64 */	addi r5, r3, lit_928@l /* 0x8064AE64@l */
/* 805C8D84  FC 40 08 90 */	fmr f2, f1
/* 805C8D88  83 E4 00 00 */	lwz r31, 0(r4)
/* 805C8D8C  38 60 00 00 */	li r3, 0
/* 805C8D90  83 C6 09 EC */	lwz r30, 0x9ec(r6)
/* 805C8D94  C0 65 00 00 */	lfs f3, 0(r5)
/* 805C8D98  4B E4 36 55 */	bl Matrix_scale
/* 805C8D9C  3C 60 80 65 */	lis r3, lit_1175@ha /* 0x8064AE7C@ha */
/* 805C8DA0  FC 20 F0 90 */	fmr f1, f30
/* 805C8DA4  C0 63 AE 7C */	lfs f3, lit_1175@l(r3)  /* 0x8064AE7C@l */
/* 805C8DA8  FC 40 F8 90 */	fmr f2, f31
/* 805C8DAC  38 60 00 01 */	li r3, 1
/* 805C8DB0  4B E4 35 51 */	bl Matrix_translate
/* 805C8DB4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C8DB8  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 805C8DBC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805C8DC0  7F E3 FB 78 */	mr r3, r31
/* 805C8DC4  90 1D 00 00 */	stw r0, 0(r29)
/* 805C8DC8  4B E4 46 0D */	bl _Matrix_to_Mtx_new
/* 805C8DCC  90 7D 00 04 */	stw r3, 4(r29)
/* 805C8DD0  3C C0 DE 00 */	lis r6, 0xde00
/* 805C8DD4  3C 60 80 A2 */	lis r3, cal_hyouji_3DT_model@ha /* 0x80A1C418@ha */
/* 805C8DD8  3C A0 80 A2 */	lis r5, cal_hyouji_shitaT_model@ha /* 0x80A1C468@ha */
/* 805C8DDC  90 DD 00 08 */	stw r6, 8(r29)
/* 805C8DE0  38 03 C4 18 */	addi r0, r3, cal_hyouji_3DT_model@l /* 0x80A1C418@l */
/* 805C8DE4  3C 80 80 A2 */	lis r4, cal_hyouji_b2_model@ha /* 0x80A1C3C0@ha */
/* 805C8DE8  38 A5 C4 68 */	addi r5, r5, cal_hyouji_shitaT_model@l /* 0x80A1C468@l */
/* 805C8DEC  90 1D 00 0C */	stw r0, 0xc(r29)
/* 805C8DF0  3C 60 80 A2 */	lis r3, cal_hyouji_amojiT_model@ha /* 0x80A1C4B0@ha */
/* 805C8DF4  38 84 C3 C0 */	addi r4, r4, cal_hyouji_b2_model@l /* 0x80A1C3C0@l */
/* 805C8DF8  90 DD 00 10 */	stw r6, 0x10(r29)
/* 805C8DFC  38 03 C4 B0 */	addi r0, r3, cal_hyouji_amojiT_model@l /* 0x80A1C4B0@l */
/* 805C8E00  90 BD 00 14 */	stw r5, 0x14(r29)
/* 805C8E04  90 DD 00 18 */	stw r6, 0x18(r29)
/* 805C8E08  90 9D 00 1C */	stw r4, 0x1c(r29)
/* 805C8E0C  90 DD 00 20 */	stw r6, 0x20(r29)
/* 805C8E10  90 1D 00 24 */	stw r0, 0x24(r29)
/* 805C8E14  3B BD 00 28 */	addi r29, r29, 0x28
/* 805C8E18  88 1E 10 55 */	lbz r0, 0x1055(r30)
/* 805C8E1C  28 00 00 00 */	cmplwi r0, 0
/* 805C8E20  40 82 00 6C */	bne lbl_805C8E8C
/* 805C8E24  3C 60 80 A2 */	lis r3, cal_hyoji_yaji1T_model@ha /* 0x80A1C540@ha */
/* 805C8E28  90 DD 00 00 */	stw r6, 0(r29)
/* 805C8E2C  38 03 C5 40 */	addi r0, r3, cal_hyoji_yaji1T_model@l /* 0x80A1C540@l */
/* 805C8E30  90 1D 00 04 */	stw r0, 4(r29)
/* 805C8E34  3B BD 00 08 */	addi r29, r29, 8
/* 805C8E38  88 7E 10 59 */	lbz r3, 0x1059(r30)
/* 805C8E3C  88 9E 10 56 */	lbz r4, 0x1056(r30)
/* 805C8E40  38 03 FF F5 */	addi r0, r3, -11
/* 805C8E44  7C 04 00 00 */	cmpw r4, r0
/* 805C8E48  40 81 00 18 */	ble lbl_805C8E60
/* 805C8E4C  3C 60 80 A2 */	lis r3, cal_hyoji_yajiA_gfx@ha /* 0x80A1C588@ha */
/* 805C8E50  90 DD 00 00 */	stw r6, 0(r29)
/* 805C8E54  38 03 C5 88 */	addi r0, r3, cal_hyoji_yajiA_gfx@l /* 0x80A1C588@l */
/* 805C8E58  90 1D 00 04 */	stw r0, 4(r29)
/* 805C8E5C  3B BD 00 08 */	addi r29, r29, 8
lbl_805C8E60:
/* 805C8E60  88 7E 10 59 */	lbz r3, 0x1059(r30)
/* 805C8E64  88 9E 10 56 */	lbz r4, 0x1056(r30)
/* 805C8E68  38 03 00 0B */	addi r0, r3, 0xb
/* 805C8E6C  7C 04 00 00 */	cmpw r4, r0
/* 805C8E70  40 80 00 1C */	bge lbl_805C8E8C
/* 805C8E74  3C 00 DE 00 */	lis r0, 0xde00
/* 805C8E78  3C 60 80 A2 */	lis r3, cal_hyoji_yajiB_gfx@ha /* 0x80A1C598@ha */
/* 805C8E7C  90 1D 00 00 */	stw r0, 0(r29)
/* 805C8E80  38 03 C5 98 */	addi r0, r3, cal_hyoji_yajiB_gfx@l /* 0x80A1C598@l */
/* 805C8E84  90 1D 00 04 */	stw r0, 4(r29)
/* 805C8E88  3B BD 00 08 */	addi r29, r29, 8
lbl_805C8E8C:
/* 805C8E8C  3C 60 D5 02 */	lis r3, 0xD502 /* 0xD5020001@ha */
/* 805C8E90  3C A0 FD 6C */	lis r5, 0xFD6C /* 0xFD6C3C3F@ha */
/* 805C8E94  38 03 00 01 */	addi r0, r3, 0x0001 /* 0xD5020001@l */
/* 805C8E98  3C 80 80 6D */	lis r4, cal_hyoji_txt_table@ha /* 0x806C8960@ha */
/* 805C8E9C  90 1D 00 00 */	stw r0, 0(r29)
/* 805C8EA0  38 00 00 00 */	li r0, 0
/* 805C8EA4  38 A5 3C 3F */	addi r5, r5, 0x3C3F /* 0xFD6C3C3F@l */
/* 805C8EA8  3C 60 D2 F0 */	lis r3, 0xD2F0 /* 0xD2F00A00@ha */
/* 805C8EAC  90 1D 00 04 */	stw r0, 4(r29)
/* 805C8EB0  38 03 0A 00 */	addi r0, r3, 0x0A00 /* 0xD2F00A00@l */
/* 805C8EB4  38 84 89 60 */	addi r4, r4, cal_hyoji_txt_table@l /* 0x806C8960@l */
/* 805C8EB8  90 BD 00 08 */	stw r5, 8(r29)
/* 805C8EBC  88 7E 10 5C */	lbz r3, 0x105c(r30)
/* 805C8EC0  20 A3 00 08 */	subfic r5, r3, 8
/* 805C8EC4  30 65 FF FF */	addic r3, r5, -1
/* 805C8EC8  7C 63 29 10 */	subfe r3, r3, r5
/* 805C8ECC  54 63 10 3A */	slwi r3, r3, 2
/* 805C8ED0  7C 64 18 2E */	lwzx r3, r4, r3
/* 805C8ED4  90 7D 00 0C */	stw r3, 0xc(r29)
/* 805C8ED8  90 1D 00 10 */	stw r0, 0x10(r29)
/* 805C8EDC  3B BD 00 18 */	addi r29, r29, 0x18
/* 805C8EE0  88 1E 10 5C */	lbz r0, 0x105c(r30)
/* 805C8EE4  28 00 00 04 */	cmplwi r0, 4
/* 805C8EE8  40 82 00 34 */	bne lbl_805C8F1C
/* 805C8EEC  4B E4 32 E9 */	bl Matrix_push
/* 805C8EF0  38 60 80 00 */	li r3, -32768
/* 805C8EF4  38 80 00 01 */	li r4, 1
/* 805C8EF8  4B E4 37 65 */	bl Matrix_RotateY
/* 805C8EFC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C8F00  7F BC EB 78 */	mr r28, r29
/* 805C8F04  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805C8F08  7F E3 FB 78 */	mr r3, r31
/* 805C8F0C  90 1D 00 00 */	stw r0, 0(r29)
/* 805C8F10  3B BD 00 08 */	addi r29, r29, 8
/* 805C8F14  4B E4 44 C1 */	bl _Matrix_to_Mtx_new
/* 805C8F18  90 7C 00 04 */	stw r3, 4(r28)
lbl_805C8F1C:
/* 805C8F1C  3C 00 DE 00 */	lis r0, 0xde00
/* 805C8F20  3C 60 80 A2 */	lis r3, cal_hyouji_stT_model@ha /* 0x80A1C500@ha */
/* 805C8F24  90 1D 00 00 */	stw r0, 0(r29)
/* 805C8F28  38 83 C5 00 */	addi r4, r3, cal_hyouji_stT_model@l /* 0x80A1C500@l */
/* 805C8F2C  3C 60 D5 02 */	lis r3, 0xd502
/* 805C8F30  38 00 00 00 */	li r0, 0
/* 805C8F34  90 9D 00 04 */	stw r4, 4(r29)
/* 805C8F38  90 7D 00 08 */	stw r3, 8(r29)
/* 805C8F3C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 805C8F40  3B BD 00 10 */	addi r29, r29, 0x10
/* 805C8F44  88 1E 10 5C */	lbz r0, 0x105c(r30)
/* 805C8F48  28 00 00 04 */	cmplwi r0, 4
/* 805C8F4C  40 82 00 28 */	bne lbl_805C8F74
/* 805C8F50  4B E4 32 C5 */	bl Matrix_pull
/* 805C8F54  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C8F58  7F BC EB 78 */	mr r28, r29
/* 805C8F5C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805C8F60  7F E3 FB 78 */	mr r3, r31
/* 805C8F64  90 1D 00 00 */	stw r0, 0(r29)
/* 805C8F68  3B BD 00 08 */	addi r29, r29, 8
/* 805C8F6C  4B E4 44 69 */	bl _Matrix_to_Mtx_new
/* 805C8F70  90 7C 00 04 */	stw r3, 4(r28)
lbl_805C8F74:
/* 805C8F74  93 BF 02 D0 */	stw r29, 0x2d0(r31)
/* 805C8F78  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805C8F7C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805C8F80  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805C8F84  39 61 00 20 */	addi r11, r1, 0x20
/* 805C8F88  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805C8F8C  4B AD 1F 91 */	bl func_8009AF1C
/* 805C8F90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805C8F94  7C 08 03 A6 */	mtlr r0
/* 805C8F98  38 21 00 40 */	addi r1, r1, 0x40
/* 805C8F9C  4E 80 00 20 */	blr 
