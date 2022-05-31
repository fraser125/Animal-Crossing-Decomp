lbl_8063ECCC:
/* 8063ECCC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8063ECD0  7C 08 02 A6 */	mflr r0
/* 8063ECD4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8063ECD8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8063ECDC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8063ECE0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8063ECE4  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8063ECE8  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 8063ECEC  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 8063ECF0  39 61 00 30 */	addi r11, r1, 0x30
/* 8063ECF4  4B A5 C1 E1 */	bl func_8009AED4
/* 8063ECF8  3C 80 80 65 */	lis r4, lit_7073@ha /* 0x8064D3D0@ha */
/* 8063ECFC  2C 05 00 02 */	cmpwi r5, 2
/* 8063ED00  38 A4 D3 D0 */	addi r5, r4, lit_7073@l /* 0x8064D3D0@l */
/* 8063ED04  7C 7D 1B 78 */	mr r29, r3
/* 8063ED08  80 85 00 00 */	lwz r4, 0(r5)
/* 8063ED0C  80 65 00 04 */	lwz r3, 4(r5)
/* 8063ED10  80 05 00 08 */	lwz r0, 8(r5)
/* 8063ED14  90 81 00 08 */	stw r4, 8(r1)
/* 8063ED18  90 61 00 0C */	stw r3, 0xc(r1)
/* 8063ED1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8063ED20  40 82 00 C0 */	bne lbl_8063EDE0
/* 8063ED24  3C 60 80 65 */	lis r3, lit_920@ha /* 0x8064D2B4@ha */
/* 8063ED28  C0 48 08 14 */	lfs f2, 0x814(r8)
/* 8063ED2C  C0 63 D2 B4 */	lfs f3, lit_920@l(r3)  /* 0x8064D2B4@l */
/* 8063ED30  38 61 00 08 */	addi r3, r1, 8
/* 8063ED34  C0 28 08 18 */	lfs f1, 0x818(r8)
/* 8063ED38  38 81 00 14 */	addi r4, r1, 0x14
/* 8063ED3C  C0 08 08 1C */	lfs f0, 0x81c(r8)
/* 8063ED40  EF E3 00 B2 */	fmuls f31, f3, f2
/* 8063ED44  EF C3 00 72 */	fmuls f30, f3, f1
/* 8063ED48  83 DD 00 00 */	lwz r30, 0(r29)
/* 8063ED4C  EF A3 00 32 */	fmuls f29, f3, f0
/* 8063ED50  4B DC E6 B5 */	bl Matrix_Position
/* 8063ED54  4B DC D4 81 */	bl Matrix_push
/* 8063ED58  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8063ED5C  38 60 00 00 */	li r3, 0
/* 8063ED60  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8063ED64  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 8063ED68  4B DC D5 99 */	bl Matrix_translate
/* 8063ED6C  38 7D 20 4C */	addi r3, r29, 0x204c
/* 8063ED70  38 80 00 01 */	li r4, 1
/* 8063ED74  4B DC D5 25 */	bl Matrix_mult
/* 8063ED78  38 60 40 00 */	li r3, 0x4000
/* 8063ED7C  38 80 00 01 */	li r4, 1
/* 8063ED80  4B DC D8 DD */	bl Matrix_RotateY
/* 8063ED84  FC 20 F8 90 */	fmr f1, f31
/* 8063ED88  38 60 00 01 */	li r3, 1
/* 8063ED8C  FC 40 F0 90 */	fmr f2, f30
/* 8063ED90  FC 60 E8 90 */	fmr f3, f29
/* 8063ED94  4B DC D6 59 */	bl Matrix_scale
/* 8063ED98  83 FE 02 E0 */	lwz r31, 0x2e0(r30)
/* 8063ED9C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063EDA0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063EDA4  38 7F 00 08 */	addi r3, r31, 8
/* 8063EDA8  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8063EDAC  90 1F 00 00 */	stw r0, 0(r31)
/* 8063EDB0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063EDB4  4B DC E6 21 */	bl _Matrix_to_Mtx_new
/* 8063EDB8  90 7F 00 04 */	stw r3, 4(r31)
/* 8063EDBC  4B DC D4 59 */	bl Matrix_pull
/* 8063EDC0  80 DE 02 E0 */	lwz r6, 0x2e0(r30)
/* 8063EDC4  3C 60 80 FD */	lis r3, sugi_fireto_model@ha /* 0x80FD1838@ha */
/* 8063EDC8  3C 80 DE 00 */	lis r4, 0xde00
/* 8063EDCC  38 A6 00 08 */	addi r5, r6, 8
/* 8063EDD0  38 03 18 38 */	addi r0, r3, sugi_fireto_model@l /* 0x80FD1838@l */
/* 8063EDD4  90 BE 02 E0 */	stw r5, 0x2e0(r30)
/* 8063EDD8  90 86 00 00 */	stw r4, 0(r6)
/* 8063EDDC  90 06 00 04 */	stw r0, 4(r6)
lbl_8063EDE0:
/* 8063EDE0  38 60 00 01 */	li r3, 1
/* 8063EDE4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8063EDE8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8063EDEC  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8063EDF0  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8063EDF4  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 8063EDF8  39 61 00 30 */	addi r11, r1, 0x30
/* 8063EDFC  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 8063EE00  4B A5 C1 21 */	bl func_8009AF20
/* 8063EE04  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8063EE08  7C 08 03 A6 */	mtlr r0
/* 8063EE0C  38 21 00 60 */	addi r1, r1, 0x60
/* 8063EE10  4E 80 00 20 */	blr 
