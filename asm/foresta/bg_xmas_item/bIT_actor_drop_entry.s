lbl_804C94D0:
/* 804C94D0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 804C94D4  7C 08 02 A6 */	mflr r0
/* 804C94D8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 804C94DC  39 61 00 E0 */	addi r11, r1, 0xe0
/* 804C94E0  4B BD 19 E9 */	bl func_8009AEC8
/* 804C94E4  B0 81 00 22 */	sth r4, 0x22(r1)
/* 804C94E8  3B C1 00 28 */	addi r30, r1, 0x28
/* 804C94EC  7C 7D 1B 78 */	mr r29, r3
/* 804C94F0  7C DA 33 78 */	mr r26, r6
/* 804C94F4  7C FB 3B 78 */	mr r27, r7
/* 804C94F8  7D 1C 43 78 */	mr r28, r8
/* 804C94FC  7F C3 F3 78 */	mr r3, r30
/* 804C9500  7C A4 2B 78 */	mr r4, r5
/* 804C9504  4B EF 19 B9 */	bl xyz_t_move
/* 804C9508  3B E1 00 34 */	addi r31, r1, 0x34
/* 804C950C  7F 44 D3 78 */	mr r4, r26
/* 804C9510  7F E3 FB 78 */	mr r3, r31
/* 804C9514  4B EF 19 A9 */	bl xyz_t_move
/* 804C9518  3C 60 80 64 */	lis r3, lit_1188@ha /* 0x80646220@ha */
/* 804C951C  57 60 06 31 */	rlwinm. r0, r27, 0, 0x18, 0x18
/* 804C9520  C0 03 62 20 */	lfs f0, lit_1188@l(r3)  /* 0x80646220@l */
/* 804C9524  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 804C9528  B3 61 00 80 */	sth r27, 0x80(r1)
/* 804C952C  B3 81 00 A6 */	sth r28, 0xa6(r1)
/* 804C9530  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 804C9534  41 82 00 10 */	beq lbl_804C9544
/* 804C9538  38 00 00 2E */	li r0, 0x2e
/* 804C953C  B0 01 00 94 */	sth r0, 0x94(r1)
/* 804C9540  48 00 00 0C */	b lbl_804C954C
lbl_804C9544:
/* 804C9544  38 00 00 00 */	li r0, 0
/* 804C9548  B0 01 00 94 */	sth r0, 0x94(r1)
lbl_804C954C:
/* 804C954C  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 804C9550  41 82 00 24 */	beq lbl_804C9574
/* 804C9554  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x80646224@ha */
/* 804C9558  38 80 00 1A */	li r4, 0x1a
/* 804C955C  C0 03 62 24 */	lfs f0, lit_1311@l(r3)  /* 0x80646224@l */
/* 804C9560  38 00 00 00 */	li r0, 0
/* 804C9564  B0 81 00 64 */	sth r4, 0x64(r1)
/* 804C9568  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804C956C  B0 01 00 82 */	sth r0, 0x82(r1)
/* 804C9570  48 00 00 20 */	b lbl_804C9590
lbl_804C9574:
/* 804C9574  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646228@ha */
/* 804C9578  38 80 00 0E */	li r4, 0xe
/* 804C957C  C0 03 62 28 */	lfs f0, lit_1312@l(r3)  /* 0x80646228@l */
/* 804C9580  38 00 00 01 */	li r0, 1
/* 804C9584  B0 81 00 64 */	sth r4, 0x64(r1)
/* 804C9588  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804C958C  B0 01 00 82 */	sth r0, 0x82(r1)
lbl_804C9590:
/* 804C9590  A0 61 00 22 */	lhz r3, 0x22(r1)
/* 804C9594  38 00 00 00 */	li r0, 0
/* 804C9598  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 804C959C  28 03 00 08 */	cmplwi r3, 8
/* 804C95A0  41 80 00 0C */	blt lbl_804C95AC
/* 804C95A4  28 03 00 0A */	cmplwi r3, 0xa
/* 804C95A8  40 81 00 14 */	ble lbl_804C95BC
lbl_804C95AC:
/* 804C95AC  28 03 25 14 */	cmplwi r3, 0x2514
/* 804C95B0  41 80 00 24 */	blt lbl_804C95D4
/* 804C95B4  28 03 25 1B */	cmplwi r3, 0x251b
/* 804C95B8  41 81 00 1C */	bgt lbl_804C95D4
lbl_804C95BC:
/* 804C95BC  7F E5 FB 78 */	mr r5, r31
/* 804C95C0  38 81 00 08 */	addi r4, r1, 8
/* 804C95C4  4B FF DB A1 */	bl bIT_actor_rand_pos_get_plus
/* 804C95C8  7F E3 FB 78 */	mr r3, r31
/* 804C95CC  38 81 00 08 */	addi r4, r1, 8
/* 804C95D0  4B EF 18 ED */	bl xyz_t_move
lbl_804C95D4:
/* 804C95D4  7F E3 FB 78 */	mr r3, r31
/* 804C95D8  7F C4 F3 78 */	mr r4, r30
/* 804C95DC  4B EF 1A B1 */	bl search_position_distanceXZ
/* 804C95E0  A8 81 00 64 */	lha r4, 0x64(r1)
/* 804C95E4  3C 00 43 30 */	lis r0, 0x4330
/* 804C95E8  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806461FC@ha */
/* 804C95EC  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 804C95F0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804C95F4  C0 81 00 38 */	lfs f4, 0x38(r1)
/* 804C95F8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804C95FC  38 83 61 FC */	addi r4, r3, lit_770@l /* 0x806461FC@l */
/* 804C9600  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 804C9604  38 61 00 74 */	addi r3, r1, 0x74
/* 804C9608  C8 64 00 00 */	lfd f3, 0(r4)
/* 804C960C  38 81 00 78 */	addi r4, r1, 0x78
/* 804C9610  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 804C9614  EC 44 10 28 */	fsubs f2, f4, f2
/* 804C9618  C0 81 00 7C */	lfs f4, 0x7c(r1)
/* 804C961C  EC 60 18 28 */	fsubs f3, f0, f3
/* 804C9620  4B FF E5 95 */	bl func_calc_spec_drop_time
/* 804C9624  7F A3 EB 78 */	mr r3, r29
/* 804C9628  38 81 00 14 */	addi r4, r1, 0x14
/* 804C962C  4B FF E5 D1 */	bl bIT_actor_drop_entry_main
/* 804C9630  39 61 00 E0 */	addi r11, r1, 0xe0
/* 804C9634  4B BD 18 E1 */	bl func_8009AF14
/* 804C9638  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 804C963C  7C 08 03 A6 */	mtlr r0
/* 804C9640  38 21 00 E0 */	addi r1, r1, 0xe0
/* 804C9644  4E 80 00 20 */	blr 
