lbl_8041572C:
/* 8041572C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80415730  7C 08 02 A6 */	mflr r0
/* 80415734  90 01 00 44 */	stw r0, 0x44(r1)
/* 80415738  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8041573C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80415740  39 61 00 30 */	addi r11, r1, 0x30
/* 80415744  4B C8 57 89 */	bl func_8009AECC
/* 80415748  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8041574C  3C 80 80 64 */	lis r4, data_80643AAC@ha /* 0x80643AAC@ha */
/* 80415750  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80415754  7C 7E 1B 78 */	mr r30, r3
/* 80415758  3F A5 00 02 */	addis r29, r5, 2
/* 8041575C  38 64 3A AC */	addi r3, r4, data_80643AAC@l /* 0x80643AAC@l */
/* 80415760  80 9D 61 3C */	lwz r4, 0x613c(r29)
/* 80415764  83 9E 01 90 */	lwz r28, 0x190(r30)
/* 80415768  8B 64 00 14 */	lbz r27, 0x14(r4)
/* 8041576C  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80415770  7F 7B 07 74 */	extsb r27, r27
lbl_80415774:
/* 80415774  4B C4 75 81 */	bl fqrand
/* 80415778  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8041577C  2C 1C 00 00 */	cmpwi r28, 0
/* 80415780  FC 00 00 1E */	fctiwz f0, f0
/* 80415784  D8 01 00 08 */	stfd f0, 8(r1)
/* 80415788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041578C  40 82 00 18 */	bne lbl_804157A4
/* 80415790  88 1D 3E 21 */	lbz r0, 0x3e21(r29)
/* 80415794  7C 1F 00 00 */	cmpw r31, r0
/* 80415798  41 82 FF DC */	beq lbl_80415774
/* 8041579C  9B FD 3E 21 */	stb r31, 0x3e21(r29)
/* 804157A0  48 00 00 14 */	b lbl_804157B4
lbl_804157A4:
/* 804157A4  88 1D 3E 22 */	lbz r0, 0x3e22(r29)
/* 804157A8  7C 1F 00 00 */	cmpw r31, r0
/* 804157AC  41 82 FF C8 */	beq lbl_80415774
/* 804157B0  9B FD 3E 22 */	stb r31, 0x3e22(r29)
lbl_804157B4:
/* 804157B4  3C 80 80 68 */	lis r4, player_pattern_table@ha /* 0x806816CC@ha */
/* 804157B8  3C 60 80 68 */	lis r3, sing_1st_part_bgm_no@ha /* 0x806816DC@ha */
/* 804157BC  57 86 18 38 */	slwi r6, r28, 3
/* 804157C0  57 65 10 3A */	slwi r5, r27, 2
/* 804157C4  38 84 16 CC */	addi r4, r4, player_pattern_table@l /* 0x806816CC@l */
/* 804157C8  38 03 16 DC */	addi r0, r3, sing_1st_part_bgm_no@l /* 0x806816DC@l */
/* 804157CC  7C 64 32 14 */	add r3, r4, r6
/* 804157D0  7F 63 28 2E */	lwzx r27, r3, r5
/* 804157D4  38 80 01 68 */	li r4, 0x168
/* 804157D8  1C 7B 00 05 */	mulli r3, r27, 5
/* 804157DC  9B 7E 01 B0 */	stb r27, 0x1b0(r30)
/* 804157E0  7C 60 1A 14 */	add r3, r0, r3
/* 804157E4  7C 63 F8 AE */	lbzx r3, r3, r31
/* 804157E8  4B F6 62 71 */	bl mBGMPsComp_make_ps_lost_fanfare
/* 804157EC  3C 60 80 68 */	lis r3, sing_1st_part_msg_base_no@ha /* 0x806816F0@ha */
/* 804157F0  57 60 10 3A */	slwi r0, r27, 2
/* 804157F4  38 63 16 F0 */	addi r3, r3, sing_1st_part_msg_base_no@l /* 0x806816F0@l */
/* 804157F8  7C 03 00 2E */	lwzx r0, r3, r0
/* 804157FC  7C 1F 02 14 */	add r0, r31, r0
/* 80415800  90 1E 01 B4 */	stw r0, 0x1b4(r30)
/* 80415804  4B C4 74 F1 */	bl fqrand
/* 80415808  3C 60 80 64 */	lis r3, lit_685@ha /* 0x80643AB0@ha */
/* 8041580C  C0 03 3A B0 */	lfs f0, lit_685@l(r3)  /* 0x80643AB0@l */
/* 80415810  EC 00 00 72 */	fmuls f0, f0, f1
/* 80415814  FC 00 00 1E */	fctiwz f0, f0
/* 80415818  D8 01 00 08 */	stfd f0, 8(r1)
/* 8041581C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80415820  98 1E 01 B1 */	stb r0, 0x1b1(r30)
/* 80415824  4B C4 74 D1 */	bl fqrand
/* 80415828  3C 60 80 64 */	lis r3, lit_685@ha /* 0x80643AB0@ha */
/* 8041582C  38 00 03 A2 */	li r0, 0x3a2
/* 80415830  C0 03 3A B0 */	lfs f0, lit_685@l(r3)  /* 0x80643AB0@l */
/* 80415834  EC 00 00 72 */	fmuls f0, f0, f1
/* 80415838  FC 00 00 1E */	fctiwz f0, f0
/* 8041583C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80415840  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80415844  98 7E 01 B2 */	stb r3, 0x1b2(r30)
/* 80415848  90 1E 01 80 */	stw r0, 0x180(r30)
/* 8041584C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80415850  39 61 00 30 */	addi r11, r1, 0x30
/* 80415854  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80415858  4B C8 56 C1 */	bl func_8009AF18
/* 8041585C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80415860  7C 08 03 A6 */	mtlr r0
/* 80415864  38 21 00 40 */	addi r1, r1, 0x40
/* 80415868  4E 80 00 20 */	blr 
