lbl_804BBB88:
/* 804BBB88  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804BBB8C  7C 08 02 A6 */	mflr r0
/* 804BBB90  90 01 00 44 */	stw r0, 0x44(r1)
/* 804BBB94  39 61 00 40 */	addi r11, r1, 0x40
/* 804BBB98  4B BD F3 21 */	bl func_8009AEB8
/* 804BBB9C  7C BE 2B 79 */	or. r30, r5, r5
/* 804BBBA0  83 81 00 48 */	lwz r28, 0x48(r1)
/* 804BBBA4  83 A1 00 4C */	lwz r29, 0x4c(r1)
/* 804BBBA8  7C 76 1B 78 */	mr r22, r3
/* 804BBBAC  7C D7 33 78 */	mr r23, r6
/* 804BBBB0  7C F8 3B 78 */	mr r24, r7
/* 804BBBB4  7D 19 43 78 */	mr r25, r8
/* 804BBBB8  7D 3A 4B 78 */	mr r26, r9
/* 804BBBBC  7D 5B 53 78 */	mr r27, r10
/* 804BBBC0  41 82 01 98 */	beq lbl_804BBD58
/* 804BBBC4  A8 1E 00 02 */	lha r0, 2(r30)
/* 804BBBC8  2C 00 00 7A */	cmpwi r0, 0x7a
/* 804BBBCC  41 82 01 8C */	beq lbl_804BBD58
/* 804BBBD0  7C 00 07 35 */	extsh. r0, r0
/* 804BBBD4  40 80 00 08 */	bge lbl_804BBBDC
/* 804BBBD8  48 00 01 80 */	b lbl_804BBD58
lbl_804BBBDC:
/* 804BBBDC  4B F5 05 F9 */	bl Matrix_push
/* 804BBBE0  A8 1E 00 02 */	lha r0, 2(r30)
/* 804BBBE4  3C 80 80 69 */	lis r4, draw_part_table_a@ha /* 0x80695274@ha */
/* 804BBBE8  3C 60 81 1D */	lis r3, draw_pos@ha /* 0x811CFAB8@ha */
/* 804BBBEC  88 BE 00 00 */	lbz r5, 0(r30)
/* 804BBBF0  54 00 18 38 */	slwi r0, r0, 3
/* 804BBBF4  38 84 52 74 */	addi r4, r4, draw_part_table_a@l /* 0x80695274@l */
/* 804BBBF8  7F E4 00 2E */	lwzx r31, r4, r0
/* 804BBBFC  38 83 FA B8 */	addi r4, r3, draw_pos@l /* 0x811CFAB8@l */
/* 804BBC00  38 00 00 00 */	li r0, 0
/* 804BBC04  38 60 00 00 */	li r3, 0
/* 804BBC08  83 DF 00 00 */	lwz r30, 0(r31)
/* 804BBC0C  98 A4 00 44 */	stb r5, 0x44(r4)
/* 804BBC10  B0 04 00 40 */	sth r0, 0x40(r4)
/* 804BBC14  9B 44 00 42 */	stb r26, 0x42(r4)
/* 804BBC18  C0 37 00 00 */	lfs f1, 0(r23)
/* 804BBC1C  C0 57 00 04 */	lfs f2, 4(r23)
/* 804BBC20  C0 77 00 08 */	lfs f3, 8(r23)
/* 804BBC24  4B F5 06 DD */	bl Matrix_translate
/* 804BBC28  A8 78 00 02 */	lha r3, 2(r24)
/* 804BBC2C  38 80 00 01 */	li r4, 1
/* 804BBC30  4B F5 0A 2D */	bl Matrix_RotateY
/* 804BBC34  A8 78 00 00 */	lha r3, 0(r24)
/* 804BBC38  38 80 00 01 */	li r4, 1
/* 804BBC3C  4B F5 08 7D */	bl Matrix_RotateX
/* 804BBC40  A8 78 00 04 */	lha r3, 4(r24)
/* 804BBC44  38 80 00 01 */	li r4, 1
/* 804BBC48  4B F5 0B A9 */	bl Matrix_RotateZ
/* 804BBC4C  C0 39 00 00 */	lfs f1, 0(r25)
/* 804BBC50  38 60 00 01 */	li r3, 1
/* 804BBC54  C0 59 00 04 */	lfs f2, 4(r25)
/* 804BBC58  C0 79 00 08 */	lfs f3, 8(r25)
/* 804BBC5C  4B F5 07 91 */	bl Matrix_scale
/* 804BBC60  3C 60 81 1D */	lis r3, draw_pos@ha /* 0x811CFAB8@ha */
/* 804BBC64  38 63 FA B8 */	addi r3, r3, draw_pos@l /* 0x811CFAB8@l */
/* 804BBC68  4B F5 05 C5 */	bl Matrix_get
/* 804BBC6C  28 1B 00 00 */	cmplwi r27, 0
/* 804BBC70  41 82 00 64 */	beq lbl_804BBCD4
/* 804BBC74  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 804BBC78  28 00 00 FF */	cmplwi r0, 0xff
/* 804BBC7C  40 82 00 30 */	bne lbl_804BBCAC
/* 804BBC80  82 F6 00 00 */	lwz r23, 0(r22)
/* 804BBC84  7F 6C DB 78 */	mr r12, r27
/* 804BBC88  7F A4 EB 78 */	mr r4, r29
/* 804BBC8C  38 61 00 08 */	addi r3, r1, 8
/* 804BBC90  80 17 02 D0 */	lwz r0, 0x2d0(r23)
/* 804BBC94  90 01 00 08 */	stw r0, 8(r1)
/* 804BBC98  7D 89 03 A6 */	mtctr r12
/* 804BBC9C  4E 80 04 21 */	bctrl 
/* 804BBCA0  80 01 00 08 */	lwz r0, 8(r1)
/* 804BBCA4  90 17 02 D0 */	stw r0, 0x2d0(r23)
/* 804BBCA8  48 00 00 2C */	b lbl_804BBCD4
lbl_804BBCAC:
/* 804BBCAC  82 F6 00 00 */	lwz r23, 0(r22)
/* 804BBCB0  7F 6C DB 78 */	mr r12, r27
/* 804BBCB4  7F A4 EB 78 */	mr r4, r29
/* 804BBCB8  38 61 00 08 */	addi r3, r1, 8
/* 804BBCBC  80 17 02 E0 */	lwz r0, 0x2e0(r23)
/* 804BBCC0  90 01 00 08 */	stw r0, 8(r1)
/* 804BBCC4  7D 89 03 A6 */	mtctr r12
/* 804BBCC8  4E 80 04 21 */	bctrl 
/* 804BBCCC  80 01 00 08 */	lwz r0, 8(r1)
/* 804BBCD0  90 17 02 E0 */	stw r0, 0x2e0(r23)
lbl_804BBCD4:
/* 804BBCD4  3C 80 81 1D */	lis r4, draw_pos@ha /* 0x811CFAB8@ha */
/* 804BBCD8  80 76 00 00 */	lwz r3, 0(r22)
/* 804BBCDC  38 84 FA B8 */	addi r4, r4, draw_pos@l /* 0x811CFAB8@l */
/* 804BBCE0  7F E5 FB 78 */	mr r5, r31
/* 804BBCE4  7F C6 F3 78 */	mr r6, r30
/* 804BBCE8  4B FF FD 41 */	bl bit_cmn_single_draw_item_body
/* 804BBCEC  28 1C 00 00 */	cmplwi r28, 0
/* 804BBCF0  41 82 00 64 */	beq lbl_804BBD54
/* 804BBCF4  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 804BBCF8  28 00 00 FF */	cmplwi r0, 0xff
/* 804BBCFC  40 82 00 30 */	bne lbl_804BBD2C
/* 804BBD00  82 D6 00 00 */	lwz r22, 0(r22)
/* 804BBD04  7F 8C E3 78 */	mr r12, r28
/* 804BBD08  7F A4 EB 78 */	mr r4, r29
/* 804BBD0C  38 61 00 08 */	addi r3, r1, 8
/* 804BBD10  80 16 02 D0 */	lwz r0, 0x2d0(r22)
/* 804BBD14  90 01 00 08 */	stw r0, 8(r1)
/* 804BBD18  7D 89 03 A6 */	mtctr r12
/* 804BBD1C  4E 80 04 21 */	bctrl 
/* 804BBD20  80 01 00 08 */	lwz r0, 8(r1)
/* 804BBD24  90 16 02 D0 */	stw r0, 0x2d0(r22)
/* 804BBD28  48 00 00 2C */	b lbl_804BBD54
lbl_804BBD2C:
/* 804BBD2C  82 D6 00 00 */	lwz r22, 0(r22)
/* 804BBD30  7F 8C E3 78 */	mr r12, r28
/* 804BBD34  7F A4 EB 78 */	mr r4, r29
/* 804BBD38  38 61 00 08 */	addi r3, r1, 8
/* 804BBD3C  80 16 02 E0 */	lwz r0, 0x2e0(r22)
/* 804BBD40  90 01 00 08 */	stw r0, 8(r1)
/* 804BBD44  7D 89 03 A6 */	mtctr r12
/* 804BBD48  4E 80 04 21 */	bctrl 
/* 804BBD4C  80 01 00 08 */	lwz r0, 8(r1)
/* 804BBD50  90 16 02 E0 */	stw r0, 0x2e0(r22)
lbl_804BBD54:
/* 804BBD54  4B F5 04 C1 */	bl Matrix_pull
lbl_804BBD58:
/* 804BBD58  39 61 00 40 */	addi r11, r1, 0x40
/* 804BBD5C  4B BD F1 A9 */	bl func_8009AF04
/* 804BBD60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804BBD64  7C 08 03 A6 */	mtlr r0
/* 804BBD68  38 21 00 40 */	addi r1, r1, 0x40
/* 804BBD6C  4E 80 00 20 */	blr 
