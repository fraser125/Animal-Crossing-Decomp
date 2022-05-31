lbl_804135AC:
/* 804135AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804135B0  7C 08 02 A6 */	mflr r0
/* 804135B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804135B8  39 61 00 20 */	addi r11, r1, 0x20
/* 804135BC  4B C8 79 19 */	bl func_8009AED4
/* 804135C0  7C 7E 1B 78 */	mr r30, r3
/* 804135C4  7C 9F 23 78 */	mr r31, r4
/* 804135C8  80 03 00 98 */	lwz r0, 0x98(r3)
/* 804135CC  54 1D AE BE */	rlwinm r29, r0, 0x15, 0x1a, 0x1f
/* 804135D0  4B FF FC C9 */	bl aBALL_set_spd_relations_in_water
/* 804135D4  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 804135D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804135DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804135E0  D0 1E 01 F4 */	stfs f0, 0x1f4(r30)
/* 804135E4  3C 63 00 02 */	addis r3, r3, 2
/* 804135E8  80 83 60 B8 */	lwz r4, 0x60b8(r3)
/* 804135EC  28 04 00 00 */	cmplwi r4, 0
/* 804135F0  41 82 00 24 */	beq lbl_80413614
/* 804135F4  3C 60 80 64 */	lis r3, lit_658@ha /* 0x80643A20@ha */
/* 804135F8  81 84 00 0C */	lwz r12, 0xc(r4)
/* 804135FC  38 83 3A 20 */	addi r4, r3, lit_658@l /* 0x80643A20@l */
/* 80413600  38 7E 00 28 */	addi r3, r30, 0x28
/* 80413604  C0 24 00 00 */	lfs f1, 0(r4)
/* 80413608  38 80 00 01 */	li r4, 1
/* 8041360C  7D 89 03 A6 */	mtctr r12
/* 80413610  4E 80 04 21 */	bctrl 
lbl_80413614:
/* 80413614  88 1E 00 98 */	lbz r0, 0x98(r30)
/* 80413618  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8041361C  41 82 00 30 */	beq lbl_8041364C
/* 80413620  88 1E 00 9A */	lbz r0, 0x9a(r30)
/* 80413624  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80413628  40 82 00 4C */	bne lbl_80413674
/* 8041362C  28 1D 00 0B */	cmplwi r29, 0xb
/* 80413630  41 82 00 44 */	beq lbl_80413674
/* 80413634  28 1D 00 16 */	cmplwi r29, 0x16
/* 80413638  41 82 00 3C */	beq lbl_80413674
/* 8041363C  7F C3 F3 78 */	mr r3, r30
/* 80413640  7F E4 FB 78 */	mr r4, r31
/* 80413644  4B FF F8 39 */	bl aBALL_process_ground_init
/* 80413648  48 00 00 2C */	b lbl_80413674
lbl_8041364C:
/* 8041364C  88 1E 00 9A */	lbz r0, 0x9a(r30)
/* 80413650  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80413654  40 82 00 14 */	bne lbl_80413668
/* 80413658  7F C3 F3 78 */	mr r3, r30
/* 8041365C  7F E4 FB 78 */	mr r4, r31
/* 80413660  4B FF F6 B1 */	bl aBALL_process_air_init
/* 80413664  48 00 00 10 */	b lbl_80413674
lbl_80413668:
/* 80413668  7F C3 F3 78 */	mr r3, r30
/* 8041366C  7F E4 FB 78 */	mr r4, r31
/* 80413670  4B FF FD F5 */	bl aBALL_process_air_water_init
lbl_80413674:
/* 80413674  28 1D 00 0B */	cmplwi r29, 0xb
/* 80413678  41 82 00 0C */	beq lbl_80413684
/* 8041367C  28 1D 00 16 */	cmplwi r29, 0x16
/* 80413680  40 82 00 64 */	bne lbl_804136E4
lbl_80413684:
/* 80413684  3C 60 80 64 */	lis r3, lit_671@ha /* 0x80643A24@ha */
/* 80413688  C0 1E 01 D4 */	lfs f0, 0x1d4(r30)
/* 8041368C  C0 23 3A 24 */	lfs f1, lit_671@l(r3)  /* 0x80643A24@l */
/* 80413690  28 1D 00 16 */	cmplwi r29, 0x16
/* 80413694  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 80413698  EC 01 00 32 */	fmuls f0, f1, f0
/* 8041369C  EC 02 00 2A */	fadds f0, f2, f0
/* 804136A0  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 804136A4  40 82 00 40 */	bne lbl_804136E4
/* 804136A8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x806439AC@ha */
/* 804136AC  C0 3E 01 D4 */	lfs f1, 0x1d4(r30)
/* 804136B0  C0 03 39 AC */	lfs f0, lit_472@l(r3)  /* 0x806439AC@l */
/* 804136B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804136B8  4C 41 13 82 */	cror 2, 1, 2
/* 804136BC  40 82 00 08 */	bne lbl_804136C4
/* 804136C0  48 00 00 08 */	b lbl_804136C8
lbl_804136C4:
/* 804136C4  FC 20 08 50 */	fneg f1, f1
lbl_804136C8:
/* 804136C8  3C 60 80 64 */	lis r3, lit_549@ha /* 0x806439EC@ha */
/* 804136CC  C0 03 39 EC */	lfs f0, lit_549@l(r3)  /* 0x806439EC@l */
/* 804136D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804136D4  40 80 00 10 */	bge lbl_804136E4
/* 804136D8  7F C3 F3 78 */	mr r3, r30
/* 804136DC  7F E4 FB 78 */	mr r4, r31
/* 804136E0  4B FF F7 9D */	bl aBALL_process_ground_init
lbl_804136E4:
/* 804136E4  39 61 00 20 */	addi r11, r1, 0x20
/* 804136E8  4B C8 78 39 */	bl func_8009AF20
/* 804136EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804136F0  7C 08 03 A6 */	mtlr r0
/* 804136F4  38 21 00 20 */	addi r1, r1, 0x20
/* 804136F8  4E 80 00 20 */	blr 
