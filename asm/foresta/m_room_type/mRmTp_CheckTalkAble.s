lbl_803E6DD8:
/* 803E6DD8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803E6DDC  7C 08 02 A6 */	mflr r0
/* 803E6DE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 803E6DE4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803E6DE8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803E6DEC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 803E6DF0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 803E6DF4  39 61 00 20 */	addi r11, r1, 0x20
/* 803E6DF8  4B CB 40 DD */	bl func_8009AED4
/* 803E6DFC  FF C0 08 90 */	fmr f30, f1
/* 803E6E00  7C 7D 1B 78 */	mr r29, r3
/* 803E6E04  7C 9E 23 78 */	mr r30, r4
/* 803E6E08  7C BF 2B 78 */	mr r31, r5
/* 803E6E0C  7C C3 33 78 */	mr r3, r6
/* 803E6E10  4B FF 28 31 */	bl get_player_actor_withoutCheck
/* 803E6E14  A8 C3 00 DE */	lha r6, 0xde(r3)
/* 803E6E18  38 00 00 00 */	li r0, 0
/* 803E6E1C  3C 80 80 66 */	lis r4, direct_table@ha /* 0x8065D4D4@ha */
/* 803E6E20  57 E5 07 BE */	clrlwi r5, r31, 0x1e
/* 803E6E24  B0 1D 00 00 */	sth r0, 0(r29)
/* 803E6E28  54 C0 B6 BA */	rlwinm r0, r6, 0x16, 0x1a, 0x1d
/* 803E6E2C  38 84 D4 D4 */	addi r4, r4, direct_table@l /* 0x8065D4D4@l */
/* 803E6E30  7C 04 00 2E */	lwzx r0, r4, r0
/* 803E6E34  7C 05 00 00 */	cmpw r5, r0
/* 803E6E38  40 82 00 BC */	bne lbl_803E6EF4
/* 803E6E3C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 803E6E40  3C 80 80 64 */	lis r4, data_80643154@ha /* 0x80643154@ha */
/* 803E6E44  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 803E6E48  C0 7E 00 08 */	lfs f3, 8(r30)
/* 803E6E4C  EC 42 00 28 */	fsubs f2, f2, f0
/* 803E6E50  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 803E6E54  C0 04 31 54 */	lfs f0, data_80643154@l(r4)  /* 0x80643154@l */
/* 803E6E58  EC 23 08 28 */	fsubs f1, f3, f1
/* 803E6E5C  EC 82 00 B2 */	fmuls f4, f2, f2
/* 803E6E60  EC 61 00 72 */	fmuls f3, f1, f1
/* 803E6E64  EF E4 18 2A */	fadds f31, f4, f3
/* 803E6E68  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 803E6E6C  40 81 00 68 */	ble lbl_803E6ED4
/* 803E6E70  FC 60 F8 34 */	frsqrte f3, f31
/* 803E6E74  3C 60 80 64 */	lis r3, lit_945@ha /* 0x8064315C@ha */
/* 803E6E78  38 83 31 5C */	addi r4, r3, lit_945@l /* 0x8064315C@l */
/* 803E6E7C  3C 60 80 64 */	lis r3, lit_946@ha /* 0x80643164@ha */
/* 803E6E80  C8 A4 00 00 */	lfd f5, 0(r4)
/* 803E6E84  FC 03 00 F2 */	fmul f0, f3, f3
/* 803E6E88  C8 83 31 64 */	lfd f4, lit_946@l(r3)  /* 0x80643164@l */
/* 803E6E8C  FC 65 00 F2 */	fmul f3, f5, f3
/* 803E6E90  FC 1F 00 32 */	fmul f0, f31, f0
/* 803E6E94  FC 04 00 28 */	fsub f0, f4, f0
/* 803E6E98  FC 63 00 32 */	fmul f3, f3, f0
/* 803E6E9C  FC 03 00 F2 */	fmul f0, f3, f3
/* 803E6EA0  FC 65 00 F2 */	fmul f3, f5, f3
/* 803E6EA4  FC 1F 00 32 */	fmul f0, f31, f0
/* 803E6EA8  FC 04 00 28 */	fsub f0, f4, f0
/* 803E6EAC  FC 63 00 32 */	fmul f3, f3, f0
/* 803E6EB0  FC 03 00 F2 */	fmul f0, f3, f3
/* 803E6EB4  FC 65 00 F2 */	fmul f3, f5, f3
/* 803E6EB8  FC 1F 00 32 */	fmul f0, f31, f0
/* 803E6EBC  FC 04 00 28 */	fsub f0, f4, f0
/* 803E6EC0  FC 03 00 32 */	fmul f0, f3, f0
/* 803E6EC4  FC 1F 00 32 */	fmul f0, f31, f0
/* 803E6EC8  FC 00 00 18 */	frsp f0, f0
/* 803E6ECC  D0 01 00 08 */	stfs f0, 8(r1)
/* 803E6ED0  C3 E1 00 08 */	lfs f31, 8(r1)
lbl_803E6ED4:
/* 803E6ED4  48 02 51 2D */	bl atans_table
/* 803E6ED8  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 803E6EDC  B0 7D 00 00 */	sth r3, 0(r29)
/* 803E6EE0  40 80 00 0C */	bge lbl_803E6EEC
/* 803E6EE4  38 60 00 01 */	li r3, 1
/* 803E6EE8  48 00 00 10 */	b lbl_803E6EF8
lbl_803E6EEC:
/* 803E6EEC  38 60 00 00 */	li r3, 0
/* 803E6EF0  48 00 00 08 */	b lbl_803E6EF8
lbl_803E6EF4:
/* 803E6EF4  38 60 00 00 */	li r3, 0
lbl_803E6EF8:
/* 803E6EF8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803E6EFC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803E6F00  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 803E6F04  39 61 00 20 */	addi r11, r1, 0x20
/* 803E6F08  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 803E6F0C  4B CB 40 15 */	bl func_8009AF20
/* 803E6F10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803E6F14  7C 08 03 A6 */	mtlr r0
/* 803E6F18  38 21 00 40 */	addi r1, r1, 0x40
/* 803E6F1C  4E 80 00 20 */	blr 
