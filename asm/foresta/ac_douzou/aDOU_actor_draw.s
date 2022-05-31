lbl_805AE410:
/* 805AE410  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805AE414  7C 08 02 A6 */	mflr r0
/* 805AE418  90 01 00 54 */	stw r0, 0x54(r1)
/* 805AE41C  39 61 00 50 */	addi r11, r1, 0x50
/* 805AE420  4B AE CA 89 */	bl func_8009AEA8
/* 805AE424  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805AE428  7C 7F 1B 78 */	mr r31, r3
/* 805AE42C  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 805AE430  7C 97 23 78 */	mr r23, r4
/* 805AE434  3C 63 00 02 */	addis r3, r3, 2
/* 805AE438  3C 80 80 6C */	lis r4, data_806C4CF0@ha /* 0x806C4CF0@ha */
/* 805AE43C  80 63 60 98 */	lwz r3, 0x6098(r3)
/* 805AE440  3B 84 4C F0 */	addi r28, r4, data_806C4CF0@l /* 0x806C4CF0@l */
/* 805AE444  3A BF 01 78 */	addi r21, r31, 0x178
/* 805AE448  82 D7 00 00 */	lwz r22, 0(r23)
/* 805AE44C  81 83 00 A4 */	lwz r12, 0xa4(r3)
/* 805AE450  38 60 00 59 */	li r3, 0x59
/* 805AE454  7D 89 03 A6 */	mtctr r12
/* 805AE458  4E 80 04 21 */	bctrl 
/* 805AE45C  80 95 00 18 */	lwz r4, 0x18(r21)
/* 805AE460  7C 7D 1B 78 */	mr r29, r3
/* 805AE464  7E C3 B3 78 */	mr r3, r22
/* 805AE468  8A 44 00 01 */	lbz r18, 1(r4)
/* 805AE46C  4B E3 6C 9D */	bl _texture_z_light_fog_prim
/* 805AE470  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AE474  56 5B 30 32 */	slwi r27, r18, 6
/* 805AE478  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805AE47C  3A 60 00 00 */	li r19, 0
/* 805AE480  3F 43 00 02 */	addis r26, r3, 2
/* 805AE484  3B C0 00 00 */	li r30, 0
lbl_805AE488:
/* 805AE488  7E 63 9B 78 */	mr r3, r19
/* 805AE48C  4B FF F2 95 */	bl func_805AD720
/* 805AE490  2C 03 00 00 */	cmpwi r3, 0
/* 805AE494  41 82 01 60 */	beq lbl_805AE5F4
/* 805AE498  80 16 02 D4 */	lwz r0, 0x2d4(r22)
/* 805AE49C  7C 1B 00 51 */	subf. r0, r27, r0
/* 805AE4A0  90 16 02 D4 */	stw r0, 0x2d4(r22)
/* 805AE4A4  7C 14 03 78 */	mr r20, r0
/* 805AE4A8  41 82 01 5C */	beq lbl_805AE604
/* 805AE4AC  7E 63 9B 78 */	mr r3, r19
/* 805AE4B0  4B FF F3 6D */	bl aDOU_get_douzou_type
/* 805AE4B4  90 7F 02 B8 */	stw r3, 0x2b8(r31)
/* 805AE4B8  80 1F 02 D8 */	lwz r0, 0x2d8(r31)
/* 805AE4BC  80 7F 02 B8 */	lwz r3, 0x2b8(r31)
/* 805AE4C0  28 00 00 03 */	cmplwi r0, 3
/* 805AE4C4  7C 79 1B 78 */	mr r25, r3
/* 805AE4C8  7C 78 1B 78 */	mr r24, r3
/* 805AE4CC  40 82 00 0C */	bne lbl_805AE4D8
/* 805AE4D0  3B 23 00 10 */	addi r25, r3, 0x10
/* 805AE4D4  7F 38 CB 78 */	mr r24, r25
lbl_805AE4D8:
/* 805AE4D8  7E 63 9B 78 */	mr r3, r19
/* 805AE4DC  4B FF F3 21 */	bl aDOU_get_color
/* 805AE4E0  90 7F 02 BC */	stw r3, 0x2bc(r31)
/* 805AE4E4  4B E5 DC F1 */	bl Matrix_push
/* 805AE4E8  82 56 02 D0 */	lwz r18, 0x2d0(r22)
/* 805AE4EC  3C 00 E7 00 */	lis r0, 0xe700
/* 805AE4F0  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060028@ha */
/* 805AE4F4  3C 60 80 65 */	lis r3, lit_745@ha /* 0x8064A6F8@ha */
/* 805AE4F8  90 12 00 00 */	stw r0, 0(r18)
/* 805AE4FC  38 A3 A6 F8 */	addi r5, r3, lit_745@l /* 0x8064A6F8@l */
/* 805AE500  38 00 00 00 */	li r0, 0
/* 805AE504  3C 60 80 65 */	lis r3, data_8064A6D4@ha /* 0x8064A6D4@ha */
/* 805AE508  90 12 00 04 */	stw r0, 4(r18)
/* 805AE50C  38 83 A6 D4 */	addi r4, r3, data_8064A6D4@l /* 0x8064A6D4@l */
/* 805AE510  38 06 00 28 */	addi r0, r6, 0x0028 /* 0xDB060028@l */
/* 805AE514  57 09 10 3A */	slwi r9, r24, 2
/* 805AE518  90 12 00 08 */	stw r0, 8(r18)
/* 805AE51C  57 20 10 3A */	slwi r0, r25, 2
/* 805AE520  38 66 00 20 */	addi r3, r6, 0x20
/* 805AE524  38 E6 00 24 */	addi r7, r6, 0x24
/* 805AE528  93 B2 00 0C */	stw r29, 0xc(r18)
/* 805AE52C  39 1C 00 24 */	addi r8, r28, 0x24
/* 805AE530  C0 65 00 00 */	lfs f3, 0(r5)
/* 805AE534  38 DC 00 A4 */	addi r6, r28, 0xa4
/* 805AE538  90 72 00 10 */	stw r3, 0x10(r18)
/* 805AE53C  3B 3C 01 34 */	addi r25, r28, 0x134
/* 805AE540  3B 1C 01 24 */	addi r24, r28, 0x124
/* 805AE544  C0 44 00 00 */	lfs f2, 0(r4)
/* 805AE548  7C A8 48 2E */	lwzx r5, r8, r9
/* 805AE54C  38 60 00 01 */	li r3, 1
/* 805AE550  90 B2 00 14 */	stw r5, 0x14(r18)
/* 805AE554  90 F2 00 18 */	stw r7, 0x18(r18)
/* 805AE558  7C 06 00 2E */	lwzx r0, r6, r0
/* 805AE55C  90 12 00 1C */	stw r0, 0x1c(r18)
/* 805AE560  3A 52 00 20 */	addi r18, r18, 0x20
/* 805AE564  7C 39 F4 2E */	lfsx f1, r25, r30
/* 805AE568  7C 18 F4 2E */	lfsx f0, r24, r30
/* 805AE56C  EC 23 00 72 */	fmuls f1, f3, f1
/* 805AE570  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AE574  4B E5 DD 8D */	bl Matrix_translate
/* 805AE578  92 56 02 D0 */	stw r18, 0x2d0(r22)
/* 805AE57C  38 61 00 08 */	addi r3, r1, 8
/* 805AE580  38 9F 00 28 */	addi r4, r31, 0x28
/* 805AE584  4B E0 C9 39 */	bl xyz_t_move
/* 805AE588  C0 61 00 08 */	lfs f3, 8(r1)
/* 805AE58C  7E E4 BB 78 */	mr r4, r23
/* 805AE590  7C 59 F4 2E */	lfsx f2, r25, r30
/* 805AE594  38 61 00 08 */	addi r3, r1, 8
/* 805AE598  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 805AE59C  7C 18 F4 2E */	lfsx f0, r24, r30
/* 805AE5A0  EC 43 10 2A */	fadds f2, f3, f2
/* 805AE5A4  EC 01 00 2A */	fadds f0, f1, f0
/* 805AE5A8  D0 41 00 08 */	stfs f2, 8(r1)
/* 805AE5AC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805AE5B0  4B DC 79 CD */	bl Setpos_HiliteReflect_init
/* 805AE5B4  3C 80 80 5B */	lis r4, func_805AE298@ha /* 0x805AE298@ha */
/* 805AE5B8  7E E3 BB 78 */	mr r3, r23
/* 805AE5BC  38 C4 E2 98 */	addi r6, r4, func_805AE298@l /* 0x805AE298@l */
/* 805AE5C0  7E 85 A3 78 */	mr r5, r20
/* 805AE5C4  7E A4 AB 78 */	mr r4, r21
/* 805AE5C8  7F E8 FB 78 */	mr r8, r31
/* 805AE5CC  38 E0 00 00 */	li r7, 0
/* 805AE5D0  4B DC 31 69 */	bl cKF_Si3_draw_R_SV
/* 805AE5D4  80 DA 60 80 */	lwz r6, 0x6080(r26)
/* 805AE5D8  7E E3 BB 78 */	mr r3, r23
/* 805AE5DC  38 9C 01 4C */	addi r4, r28, 0x14c
/* 805AE5E0  38 A0 00 00 */	li r5, 0
/* 805AE5E4  81 86 00 04 */	lwz r12, 4(r6)
/* 805AE5E8  7D 89 03 A6 */	mtctr r12
/* 805AE5EC  4E 80 04 21 */	bctrl 
/* 805AE5F0  4B E5 DC 25 */	bl Matrix_pull
lbl_805AE5F4:
/* 805AE5F4  3A 73 00 01 */	addi r19, r19, 1
/* 805AE5F8  3B DE 00 04 */	addi r30, r30, 4
/* 805AE5FC  2C 13 00 04 */	cmpwi r19, 4
/* 805AE600  41 80 FE 88 */	blt lbl_805AE488
lbl_805AE604:
/* 805AE604  39 61 00 50 */	addi r11, r1, 0x50
/* 805AE608  4B AE C8 ED */	bl func_8009AEF4
/* 805AE60C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805AE610  7C 08 03 A6 */	mtlr r0
/* 805AE614  38 21 00 50 */	addi r1, r1, 0x50
/* 805AE618  4E 80 00 20 */	blr 
