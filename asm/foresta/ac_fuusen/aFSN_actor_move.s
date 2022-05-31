lbl_8050EB68:
/* 8050EB68  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8050EB6C  7C 08 02 A6 */	mflr r0
/* 8050EB70  90 01 00 44 */	stw r0, 0x44(r1)
/* 8050EB74  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8050EB78  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8050EB7C  39 61 00 30 */	addi r11, r1, 0x30
/* 8050EB80  4B B8 C3 4D */	bl func_8009AECC
/* 8050EB84  7C 7D 1B 78 */	mr r29, r3
/* 8050EB88  7C 9E 23 78 */	mr r30, r4
/* 8050EB8C  80 83 01 88 */	lwz r4, 0x188(r3)
/* 8050EB90  3B FD 01 A8 */	addi r31, r29, 0x1a8
/* 8050EB94  2C 04 00 00 */	cmpwi r4, 0
/* 8050EB98  40 82 00 0C */	bne lbl_8050EBA4
/* 8050EB9C  4B E6 57 79 */	bl Actor_position_moveF
/* 8050EBA0  48 00 00 10 */	b lbl_8050EBB0
lbl_8050EBA4:
/* 8050EBA4  40 81 00 0C */	ble lbl_8050EBB0
/* 8050EBA8  38 04 FF FF */	addi r0, r4, -1
/* 8050EBAC  90 1D 01 88 */	stw r0, 0x188(r29)
lbl_8050EBB0:
/* 8050EBB0  3C 60 81 16 */	lis r3, fuusen_DEBUG_mode_flag@ha /* 0x81167DA8@ha */
/* 8050EBB4  80 03 7D A8 */	lwz r0, fuusen_DEBUG_mode_flag@l(r3)  /* 0x81167DA8@l */
/* 8050EBB8  2C 00 00 00 */	cmpwi r0, 0
/* 8050EBBC  41 82 00 C8 */	beq lbl_8050EC84
/* 8050EBC0  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 8050EBC4  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 8050EBC8  2C 00 00 00 */	cmpwi r0, 0
/* 8050EBCC  41 82 00 B8 */	beq lbl_8050EC84
/* 8050EBD0  7F C3 F3 78 */	mr r3, r30
/* 8050EBD4  4B EC AA 6D */	bl get_player_actor_withoutCheck
/* 8050EBD8  A8 9D 00 B6 */	lha r4, 0xb6(r29)
/* 8050EBDC  7C 7C 1B 78 */	mr r28, r3
/* 8050EBE0  3F 64 00 01 */	addis r27, r4, 1
/* 8050EBE4  3B 7B 80 00 */	addi r27, r27, -32768
/* 8050EBE8  7F 63 07 34 */	extsh r3, r27
/* 8050EBEC  4B EA BE B1 */	bl cos_s
/* 8050EBF0  3C 80 80 65 */	lis r4, lit_798@ha /* 0x80648F98@ha */
/* 8050EBF4  A8 7D 00 B6 */	lha r3, 0xb6(r29)
/* 8050EBF8  C0 44 8F 98 */	lfs f2, lit_798@l(r4)  /* 0x80648F98@l */
/* 8050EBFC  3C 63 00 01 */	addis r3, r3, 1
/* 8050EC00  C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 8050EC04  EC 22 00 72 */	fmuls f1, f2, f1
/* 8050EC08  38 03 80 00 */	addi r0, r3, -32768
/* 8050EC0C  7C 03 07 34 */	extsh r3, r0
/* 8050EC10  EF E0 08 2A */	fadds f31, f0, f1
/* 8050EC14  4B EA BE DD */	bl sin_s
/* 8050EC18  3C 60 80 65 */	lis r3, lit_798@ha /* 0x80648F98@ha */
/* 8050EC1C  C0 1C 00 28 */	lfs f0, 0x28(r28)
/* 8050EC20  38 A3 8F 98 */	addi r5, r3, lit_798@l /* 0x80648F98@l */
/* 8050EC24  80 1E 00 00 */	lwz r0, 0(r30)
/* 8050EC28  C0 45 00 00 */	lfs f2, 0(r5)
/* 8050EC2C  3C 80 80 65 */	lis r4, lit_799@ha /* 0x80648F9C@ha */
/* 8050EC30  3C 60 80 65 */	lis r3, lit_447@ha /* 0x80648F04@ha */
/* 8050EC34  90 01 00 08 */	stw r0, 8(r1)
/* 8050EC38  EC 22 00 72 */	fmuls f1, f2, f1
/* 8050EC3C  C0 83 8F 04 */	lfs f4, lit_447@l(r3)  /* 0x80648F04@l */
/* 8050EC40  38 A4 8F 9C */	addi r5, r4, lit_799@l /* 0x80648F9C@l */
/* 8050EC44  FC 60 F8 90 */	fmr f3, f31
/* 8050EC48  C0 45 00 00 */	lfs f2, 0(r5)
/* 8050EC4C  FC A0 20 90 */	fmr f5, f4
/* 8050EC50  EC 20 08 2A */	fadds f1, f0, f1
/* 8050EC54  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8050EC58  FC C0 20 90 */	fmr f6, f4
/* 8050EC5C  7F 64 07 34 */	extsh r4, r27
/* 8050EC60  EC 42 00 2A */	fadds f2, f2, f0
/* 8050EC64  38 60 00 00 */	li r3, 0
/* 8050EC68  38 A0 00 00 */	li r5, 0
/* 8050EC6C  38 C0 00 FA */	li r6, 0xfa
/* 8050EC70  38 E0 00 64 */	li r7, 0x64
/* 8050EC74  39 00 00 78 */	li r8, 0x78
/* 8050EC78  39 20 00 80 */	li r9, 0x80
/* 8050EC7C  39 40 00 04 */	li r10, 4
/* 8050EC80  4B E8 74 41 */	bl Debug_Display_new
lbl_8050EC84:
/* 8050EC84  7F E3 FB 78 */	mr r3, r31
/* 8050EC88  4B E6 23 8D */	bl cKF_SkeletonInfo_R_play
/* 8050EC8C  81 9D 01 78 */	lwz r12, 0x178(r29)
/* 8050EC90  7F A3 EB 78 */	mr r3, r29
/* 8050EC94  7F C4 F3 78 */	mr r4, r30
/* 8050EC98  7D 89 03 A6 */	mtctr r12
/* 8050EC9C  4E 80 04 21 */	bctrl 
/* 8050ECA0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8050ECA4  39 61 00 30 */	addi r11, r1, 0x30
/* 8050ECA8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8050ECAC  4B B8 C2 6D */	bl func_8009AF18
/* 8050ECB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8050ECB4  7C 08 03 A6 */	mtlr r0
/* 8050ECB8  38 21 00 40 */	addi r1, r1, 0x40
/* 8050ECBC  4E 80 00 20 */	blr 
