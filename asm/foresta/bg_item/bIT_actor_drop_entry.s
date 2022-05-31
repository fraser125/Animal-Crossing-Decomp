lbl_804BA5C0:
/* 804BA5C0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 804BA5C4  7C 08 02 A6 */	mflr r0
/* 804BA5C8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 804BA5CC  39 61 00 E0 */	addi r11, r1, 0xe0
/* 804BA5D0  4B BE 08 F9 */	bl func_8009AEC8
/* 804BA5D4  B0 81 00 22 */	sth r4, 0x22(r1)
/* 804BA5D8  3B C1 00 28 */	addi r30, r1, 0x28
/* 804BA5DC  7C 7D 1B 78 */	mr r29, r3
/* 804BA5E0  7C DA 33 78 */	mr r26, r6
/* 804BA5E4  7C FB 3B 78 */	mr r27, r7
/* 804BA5E8  7D 1C 43 78 */	mr r28, r8
/* 804BA5EC  7F C3 F3 78 */	mr r3, r30
/* 804BA5F0  7C A4 2B 78 */	mr r4, r5
/* 804BA5F4  4B F0 08 C9 */	bl xyz_t_move
/* 804BA5F8  3B E1 00 34 */	addi r31, r1, 0x34
/* 804BA5FC  7F 44 D3 78 */	mr r4, r26
/* 804BA600  7F E3 FB 78 */	mr r3, r31
/* 804BA604  4B F0 08 B9 */	bl xyz_t_move
/* 804BA608  3C 60 80 64 */	lis r3, lit_1188@ha /* 0x806460D0@ha */
/* 804BA60C  57 60 06 31 */	rlwinm. r0, r27, 0, 0x18, 0x18
/* 804BA610  C0 03 60 D0 */	lfs f0, lit_1188@l(r3)  /* 0x806460D0@l */
/* 804BA614  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 804BA618  B3 61 00 80 */	sth r27, 0x80(r1)
/* 804BA61C  B3 81 00 A6 */	sth r28, 0xa6(r1)
/* 804BA620  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 804BA624  41 82 00 10 */	beq lbl_804BA634
/* 804BA628  38 00 00 2E */	li r0, 0x2e
/* 804BA62C  B0 01 00 94 */	sth r0, 0x94(r1)
/* 804BA630  48 00 00 0C */	b lbl_804BA63C
lbl_804BA634:
/* 804BA634  38 00 00 00 */	li r0, 0
/* 804BA638  B0 01 00 94 */	sth r0, 0x94(r1)
lbl_804BA63C:
/* 804BA63C  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 804BA640  41 82 00 24 */	beq lbl_804BA664
/* 804BA644  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x806460D4@ha */
/* 804BA648  38 80 00 1A */	li r4, 0x1a
/* 804BA64C  C0 03 60 D4 */	lfs f0, lit_1311@l(r3)  /* 0x806460D4@l */
/* 804BA650  38 00 00 00 */	li r0, 0
/* 804BA654  B0 81 00 64 */	sth r4, 0x64(r1)
/* 804BA658  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804BA65C  B0 01 00 82 */	sth r0, 0x82(r1)
/* 804BA660  48 00 00 20 */	b lbl_804BA680
lbl_804BA664:
/* 804BA664  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x806460D8@ha */
/* 804BA668  38 80 00 0E */	li r4, 0xe
/* 804BA66C  C0 03 60 D8 */	lfs f0, lit_1312@l(r3)  /* 0x806460D8@l */
/* 804BA670  38 00 00 01 */	li r0, 1
/* 804BA674  B0 81 00 64 */	sth r4, 0x64(r1)
/* 804BA678  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804BA67C  B0 01 00 82 */	sth r0, 0x82(r1)
lbl_804BA680:
/* 804BA680  A0 61 00 22 */	lhz r3, 0x22(r1)
/* 804BA684  38 00 00 00 */	li r0, 0
/* 804BA688  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 804BA68C  28 03 00 08 */	cmplwi r3, 8
/* 804BA690  41 80 00 0C */	blt lbl_804BA69C
/* 804BA694  28 03 00 0A */	cmplwi r3, 0xa
/* 804BA698  40 81 00 14 */	ble lbl_804BA6AC
lbl_804BA69C:
/* 804BA69C  28 03 25 14 */	cmplwi r3, 0x2514
/* 804BA6A0  41 80 00 24 */	blt lbl_804BA6C4
/* 804BA6A4  28 03 25 1B */	cmplwi r3, 0x251b
/* 804BA6A8  41 81 00 1C */	bgt lbl_804BA6C4
lbl_804BA6AC:
/* 804BA6AC  7F E5 FB 78 */	mr r5, r31
/* 804BA6B0  38 81 00 08 */	addi r4, r1, 8
/* 804BA6B4  4B FF DB A1 */	bl bIT_actor_rand_pos_get_plus
/* 804BA6B8  7F E3 FB 78 */	mr r3, r31
/* 804BA6BC  38 81 00 08 */	addi r4, r1, 8
/* 804BA6C0  4B F0 07 FD */	bl xyz_t_move
lbl_804BA6C4:
/* 804BA6C4  7F E3 FB 78 */	mr r3, r31
/* 804BA6C8  7F C4 F3 78 */	mr r4, r30
/* 804BA6CC  4B F0 09 C1 */	bl search_position_distanceXZ
/* 804BA6D0  A8 81 00 64 */	lha r4, 0x64(r1)
/* 804BA6D4  3C 00 43 30 */	lis r0, 0x4330
/* 804BA6D8  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806460AC@ha */
/* 804BA6DC  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 804BA6E0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804BA6E4  C0 81 00 38 */	lfs f4, 0x38(r1)
/* 804BA6E8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804BA6EC  38 83 60 AC */	addi r4, r3, lit_770@l /* 0x806460AC@l */
/* 804BA6F0  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 804BA6F4  38 61 00 74 */	addi r3, r1, 0x74
/* 804BA6F8  C8 64 00 00 */	lfd f3, 0(r4)
/* 804BA6FC  38 81 00 78 */	addi r4, r1, 0x78
/* 804BA700  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 804BA704  EC 44 10 28 */	fsubs f2, f4, f2
/* 804BA708  C0 81 00 7C */	lfs f4, 0x7c(r1)
/* 804BA70C  EC 60 18 28 */	fsubs f3, f0, f3
/* 804BA710  4B FF E5 95 */	bl func_calc_spec_drop_time
/* 804BA714  7F A3 EB 78 */	mr r3, r29
/* 804BA718  38 81 00 14 */	addi r4, r1, 0x14
/* 804BA71C  4B FF E5 D1 */	bl bIT_actor_drop_entry_main
/* 804BA720  39 61 00 E0 */	addi r11, r1, 0xe0
/* 804BA724  4B BE 07 F1 */	bl func_8009AF14
/* 804BA728  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 804BA72C  7C 08 03 A6 */	mtlr r0
/* 804BA730  38 21 00 E0 */	addi r1, r1, 0xe0
/* 804BA734  4E 80 00 20 */	blr 
