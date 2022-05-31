lbl_805E0BEC:
/* 805E0BEC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E0BF0  7C 08 02 A6 */	mflr r0
/* 805E0BF4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E0BF8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805E0BFC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805E0C00  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805E0C04  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805E0C08  39 61 00 20 */	addi r11, r1, 0x20
/* 805E0C0C  4B AB A2 C9 */	bl func_8009AED4
/* 805E0C10  3C A0 80 65 */	lis r5, data_8064B394@ha /* 0x8064B394@ha */
/* 805E0C14  FF C0 08 90 */	fmr f30, f1
/* 805E0C18  C0 25 B3 94 */	lfs f1, data_8064B394@l(r5)  /* 0x8064B394@l */
/* 805E0C1C  3C 80 80 65 */	lis r4, lit_485@ha /* 0x8064B398@ha */
/* 805E0C20  FF E0 10 90 */	fmr f31, f2
/* 805E0C24  7C 7D 1B 78 */	mr r29, r3
/* 805E0C28  FC 40 08 90 */	fmr f2, f1
/* 805E0C2C  C0 64 B3 98 */	lfs f3, lit_485@l(r4)  /* 0x8064B398@l */
/* 805E0C30  38 60 00 00 */	li r3, 0
/* 805E0C34  4B E2 B7 B9 */	bl Matrix_scale
/* 805E0C38  3C 60 80 65 */	lis r3, lit_486@ha /* 0x8064B39C@ha */
/* 805E0C3C  FC 20 F0 90 */	fmr f1, f30
/* 805E0C40  C0 63 B3 9C */	lfs f3, lit_486@l(r3)  /* 0x8064B39C@l */
/* 805E0C44  FC 40 F8 90 */	fmr f2, f31
/* 805E0C48  38 60 00 01 */	li r3, 1
/* 805E0C4C  4B E2 B6 B5 */	bl Matrix_translate
/* 805E0C50  83 FD 02 D0 */	lwz r31, 0x2d0(r29)
/* 805E0C54  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E0C58  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E0C5C  7F A3 EB 78 */	mr r3, r29
/* 805E0C60  90 1F 00 00 */	stw r0, 0(r31)
/* 805E0C64  7F FE FB 78 */	mr r30, r31
/* 805E0C68  3B FF 00 08 */	addi r31, r31, 8
/* 805E0C6C  4B E2 C7 69 */	bl _Matrix_to_Mtx_new
/* 805E0C70  90 7E 00 04 */	stw r3, 4(r30)
/* 805E0C74  7F E4 FB 78 */	mr r4, r31
/* 805E0C78  3C 00 DE 00 */	lis r0, 0xde00
/* 805E0C7C  3C 60 80 A7 */	lis r3, hni_den_model@ha /* 0x80A77FC0@ha */
/* 805E0C80  90 1F 00 00 */	stw r0, 0(r31)
/* 805E0C84  38 03 7F C0 */	addi r0, r3, hni_den_model@l /* 0x80A77FC0@l */
/* 805E0C88  3B FF 00 08 */	addi r31, r31, 8
/* 805E0C8C  90 04 00 04 */	stw r0, 4(r4)
/* 805E0C90  93 FD 02 D0 */	stw r31, 0x2d0(r29)
/* 805E0C94  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805E0C98  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805E0C9C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805E0CA0  39 61 00 20 */	addi r11, r1, 0x20
/* 805E0CA4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805E0CA8  4B AB A2 79 */	bl func_8009AF20
/* 805E0CAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E0CB0  7C 08 03 A6 */	mtlr r0
/* 805E0CB4  38 21 00 40 */	addi r1, r1, 0x40
/* 805E0CB8  4E 80 00 20 */	blr 
