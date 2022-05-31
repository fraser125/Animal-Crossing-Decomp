lbl_80535E2C:
/* 80535E2C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80535E30  7C 08 02 A6 */	mflr r0
/* 80535E34  90 01 00 44 */	stw r0, 0x44(r1)
/* 80535E38  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80535E3C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80535E40  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80535E44  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80535E48  39 61 00 20 */	addi r11, r1, 0x20
/* 80535E4C  4B B6 50 89 */	bl func_8009AED4
/* 80535E50  A0 03 00 06 */	lhz r0, 6(r3)
/* 80535E54  7C 7F 1B 78 */	mr r31, r3
/* 80535E58  7C 9D 23 78 */	mr r29, r4
/* 80535E5C  3B C0 00 00 */	li r30, 0
/* 80535E60  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80535E64  2C 00 00 0E */	cmpwi r0, 0xe
/* 80535E68  40 82 01 24 */	bne lbl_80535F8C
/* 80535E6C  4B FF 69 D5 */	bl func_8052C840
/* 80535E70  2C 03 00 00 */	cmpwi r3, 0
/* 80535E74  40 82 01 18 */	bne lbl_80535F8C
/* 80535E78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80535E7C  C3 FF 00 28 */	lfs f31, 0x28(r31)
/* 80535E80  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80535E84  C3 DF 00 30 */	lfs f30, 0x30(r31)
/* 80535E88  3C 83 00 02 */	addis r4, r3, 2
/* 80535E8C  38 60 00 00 */	li r3, 0
/* 80535E90  80 84 60 B8 */	lwz r4, 0x60b8(r4)
/* 80535E94  28 04 00 00 */	cmplwi r4, 0
/* 80535E98  41 82 00 18 */	beq lbl_80535EB0
/* 80535E9C  81 84 00 18 */	lwz r12, 0x18(r4)
/* 80535EA0  FC 20 F8 90 */	fmr f1, f31
/* 80535EA4  FC 40 F0 90 */	fmr f2, f30
/* 80535EA8  7D 89 03 A6 */	mtctr r12
/* 80535EAC  4E 80 04 21 */	bctrl 
lbl_80535EB0:
/* 80535EB0  28 03 00 00 */	cmplwi r3, 0
/* 80535EB4  41 82 00 54 */	beq lbl_80535F08
/* 80535EB8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80535EBC  3C 80 80 65 */	lis r4, lit_3774@ha /* 0x80649344@ha */
/* 80535EC0  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80535EC4  EC 40 F8 28 */	fsubs f2, f0, f31
/* 80535EC8  C0 04 93 44 */	lfs f0, lit_3774@l(r4)  /* 0x80649344@l */
/* 80535ECC  EC 21 F0 28 */	fsubs f1, f1, f30
/* 80535ED0  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80535ED4  EC 21 00 72 */	fmuls f1, f1, f1
/* 80535ED8  EC 22 08 2A */	fadds f1, f2, f1
/* 80535EDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80535EE0  40 80 00 AC */	bge lbl_80535F8C
/* 80535EE4  3C 80 80 6A */	lis r4, req_gyo_data@ha /* 0x806A2880@ha */
/* 80535EE8  7F E3 FB 78 */	mr r3, r31
/* 80535EEC  38 E4 28 80 */	addi r7, r4, req_gyo_data@l /* 0x806A2880@l */
/* 80535EF0  38 A0 00 06 */	li r5, 6
/* 80535EF4  38 80 00 01 */	li r4, 1
/* 80535EF8  38 C0 00 02 */	li r6, 2
/* 80535EFC  4B FF B7 01 */	bl aNPC_set_request_act
/* 80535F00  3B C0 00 01 */	li r30, 1
/* 80535F04  48 00 00 88 */	b lbl_80535F8C
lbl_80535F08:
/* 80535F08  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80535F0C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80535F10  3C 63 00 02 */	addis r3, r3, 2
/* 80535F14  80 63 60 88 */	lwz r3, 0x6088(r3)
/* 80535F18  28 03 00 00 */	cmplwi r3, 0
/* 80535F1C  41 82 00 70 */	beq lbl_80535F8C
/* 80535F20  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 80535F24  FC 20 F8 90 */	fmr f1, f31
/* 80535F28  FC 40 F0 90 */	fmr f2, f30
/* 80535F2C  7F A3 EB 78 */	mr r3, r29
/* 80535F30  7D 89 03 A6 */	mtctr r12
/* 80535F34  4E 80 04 21 */	bctrl 
/* 80535F38  28 03 00 00 */	cmplwi r3, 0
/* 80535F3C  41 82 00 50 */	beq lbl_80535F8C
/* 80535F40  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80535F44  3C 80 80 65 */	lis r4, lit_2435@ha /* 0x80649320@ha */
/* 80535F48  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80535F4C  EC 40 F8 28 */	fsubs f2, f0, f31
/* 80535F50  C0 04 93 20 */	lfs f0, lit_2435@l(r4)  /* 0x80649320@l */
/* 80535F54  EC 21 F0 28 */	fsubs f1, f1, f30
/* 80535F58  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80535F5C  EC 21 00 72 */	fmuls f1, f1, f1
/* 80535F60  EC 22 08 2A */	fadds f1, f2, f1
/* 80535F64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80535F68  40 80 00 24 */	bge lbl_80535F8C
/* 80535F6C  3C 80 80 6A */	lis r4, req_ins_data@ha /* 0x806A288C@ha */
/* 80535F70  7F E3 FB 78 */	mr r3, r31
/* 80535F74  38 E4 28 8C */	addi r7, r4, req_ins_data@l /* 0x806A288C@l */
/* 80535F78  38 A0 00 05 */	li r5, 5
/* 80535F7C  38 80 00 01 */	li r4, 1
/* 80535F80  38 C0 00 02 */	li r6, 2
/* 80535F84  4B FF B6 79 */	bl aNPC_set_request_act
/* 80535F88  3B C0 00 01 */	li r30, 1
lbl_80535F8C:
/* 80535F8C  7F C3 F3 78 */	mr r3, r30
/* 80535F90  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80535F94  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80535F98  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80535F9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80535FA0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80535FA4  4B B6 4F 7D */	bl func_8009AF20
/* 80535FA8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80535FAC  7C 08 03 A6 */	mtlr r0
/* 80535FB0  38 21 00 40 */	addi r1, r1, 0x40
/* 80535FB4  4E 80 00 20 */	blr 
