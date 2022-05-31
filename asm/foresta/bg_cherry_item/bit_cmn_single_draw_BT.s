lbl_804B4804:
/* 804B4804  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B4808  7C 08 02 A6 */	mflr r0
/* 804B480C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B4810  39 61 00 40 */	addi r11, r1, 0x40
/* 804B4814  4B BE 66 A5 */	bl func_8009AEB8
/* 804B4818  7C BE 2B 79 */	or. r30, r5, r5
/* 804B481C  83 81 00 48 */	lwz r28, 0x48(r1)
/* 804B4820  83 A1 00 4C */	lwz r29, 0x4c(r1)
/* 804B4824  7C 76 1B 78 */	mr r22, r3
/* 804B4828  7C D7 33 78 */	mr r23, r6
/* 804B482C  7C F8 3B 78 */	mr r24, r7
/* 804B4830  7D 19 43 78 */	mr r25, r8
/* 804B4834  7D 3A 4B 78 */	mr r26, r9
/* 804B4838  7D 5B 53 78 */	mr r27, r10
/* 804B483C  41 82 01 98 */	beq lbl_804B49D4
/* 804B4840  A8 1E 00 02 */	lha r0, 2(r30)
/* 804B4844  2C 00 00 7A */	cmpwi r0, 0x7a
/* 804B4848  41 82 01 8C */	beq lbl_804B49D4
/* 804B484C  7C 00 07 35 */	extsh. r0, r0
/* 804B4850  40 80 00 08 */	bge lbl_804B4858
/* 804B4854  48 00 01 80 */	b lbl_804B49D4
lbl_804B4858:
/* 804B4858  4B F5 79 7D */	bl Matrix_push
/* 804B485C  A8 1E 00 02 */	lha r0, 2(r30)
/* 804B4860  3C 80 80 69 */	lis r4, draw_part_table_a@ha /* 0x80692314@ha */
/* 804B4864  3C 60 81 1D */	lis r3, draw_pos@ha /* 0x811CF628@ha */
/* 804B4868  88 BE 00 00 */	lbz r5, 0(r30)
/* 804B486C  54 00 18 38 */	slwi r0, r0, 3
/* 804B4870  38 84 23 14 */	addi r4, r4, draw_part_table_a@l /* 0x80692314@l */
/* 804B4874  7F E4 00 2E */	lwzx r31, r4, r0
/* 804B4878  38 83 F6 28 */	addi r4, r3, draw_pos@l /* 0x811CF628@l */
/* 804B487C  38 00 00 00 */	li r0, 0
/* 804B4880  38 60 00 00 */	li r3, 0
/* 804B4884  83 DF 00 00 */	lwz r30, 0(r31)
/* 804B4888  98 A4 00 44 */	stb r5, 0x44(r4)
/* 804B488C  B0 04 00 40 */	sth r0, 0x40(r4)
/* 804B4890  9B 44 00 42 */	stb r26, 0x42(r4)
/* 804B4894  C0 37 00 00 */	lfs f1, 0(r23)
/* 804B4898  C0 57 00 04 */	lfs f2, 4(r23)
/* 804B489C  C0 77 00 08 */	lfs f3, 8(r23)
/* 804B48A0  4B F5 7A 61 */	bl Matrix_translate
/* 804B48A4  A8 78 00 02 */	lha r3, 2(r24)
/* 804B48A8  38 80 00 01 */	li r4, 1
/* 804B48AC  4B F5 7D B1 */	bl Matrix_RotateY
/* 804B48B0  A8 78 00 00 */	lha r3, 0(r24)
/* 804B48B4  38 80 00 01 */	li r4, 1
/* 804B48B8  4B F5 7C 01 */	bl Matrix_RotateX
/* 804B48BC  A8 78 00 04 */	lha r3, 4(r24)
/* 804B48C0  38 80 00 01 */	li r4, 1
/* 804B48C4  4B F5 7F 2D */	bl Matrix_RotateZ
/* 804B48C8  C0 39 00 00 */	lfs f1, 0(r25)
/* 804B48CC  38 60 00 01 */	li r3, 1
/* 804B48D0  C0 59 00 04 */	lfs f2, 4(r25)
/* 804B48D4  C0 79 00 08 */	lfs f3, 8(r25)
/* 804B48D8  4B F5 7B 15 */	bl Matrix_scale
/* 804B48DC  3C 60 81 1D */	lis r3, draw_pos@ha /* 0x811CF628@ha */
/* 804B48E0  38 63 F6 28 */	addi r3, r3, draw_pos@l /* 0x811CF628@l */
/* 804B48E4  4B F5 79 49 */	bl Matrix_get
/* 804B48E8  28 1B 00 00 */	cmplwi r27, 0
/* 804B48EC  41 82 00 64 */	beq lbl_804B4950
/* 804B48F0  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 804B48F4  28 00 00 FF */	cmplwi r0, 0xff
/* 804B48F8  40 82 00 30 */	bne lbl_804B4928
/* 804B48FC  82 F6 00 00 */	lwz r23, 0(r22)
/* 804B4900  7F 6C DB 78 */	mr r12, r27
/* 804B4904  7F A4 EB 78 */	mr r4, r29
/* 804B4908  38 61 00 08 */	addi r3, r1, 8
/* 804B490C  80 17 02 D0 */	lwz r0, 0x2d0(r23)
/* 804B4910  90 01 00 08 */	stw r0, 8(r1)
/* 804B4914  7D 89 03 A6 */	mtctr r12
/* 804B4918  4E 80 04 21 */	bctrl 
/* 804B491C  80 01 00 08 */	lwz r0, 8(r1)
/* 804B4920  90 17 02 D0 */	stw r0, 0x2d0(r23)
/* 804B4924  48 00 00 2C */	b lbl_804B4950
lbl_804B4928:
/* 804B4928  82 F6 00 00 */	lwz r23, 0(r22)
/* 804B492C  7F 6C DB 78 */	mr r12, r27
/* 804B4930  7F A4 EB 78 */	mr r4, r29
/* 804B4934  38 61 00 08 */	addi r3, r1, 8
/* 804B4938  80 17 02 E0 */	lwz r0, 0x2e0(r23)
/* 804B493C  90 01 00 08 */	stw r0, 8(r1)
/* 804B4940  7D 89 03 A6 */	mtctr r12
/* 804B4944  4E 80 04 21 */	bctrl 
/* 804B4948  80 01 00 08 */	lwz r0, 8(r1)
/* 804B494C  90 17 02 E0 */	stw r0, 0x2e0(r23)
lbl_804B4950:
/* 804B4950  3C 80 81 1D */	lis r4, draw_pos@ha /* 0x811CF628@ha */
/* 804B4954  80 76 00 00 */	lwz r3, 0(r22)
/* 804B4958  38 84 F6 28 */	addi r4, r4, draw_pos@l /* 0x811CF628@l */
/* 804B495C  7F E5 FB 78 */	mr r5, r31
/* 804B4960  7F C6 F3 78 */	mr r6, r30
/* 804B4964  4B FF FD 41 */	bl bit_cmn_single_draw_item_body
/* 804B4968  28 1C 00 00 */	cmplwi r28, 0
/* 804B496C  41 82 00 64 */	beq lbl_804B49D0
/* 804B4970  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 804B4974  28 00 00 FF */	cmplwi r0, 0xff
/* 804B4978  40 82 00 30 */	bne lbl_804B49A8
/* 804B497C  82 D6 00 00 */	lwz r22, 0(r22)
/* 804B4980  7F 8C E3 78 */	mr r12, r28
/* 804B4984  7F A4 EB 78 */	mr r4, r29
/* 804B4988  38 61 00 08 */	addi r3, r1, 8
/* 804B498C  80 16 02 D0 */	lwz r0, 0x2d0(r22)
/* 804B4990  90 01 00 08 */	stw r0, 8(r1)
/* 804B4994  7D 89 03 A6 */	mtctr r12
/* 804B4998  4E 80 04 21 */	bctrl 
/* 804B499C  80 01 00 08 */	lwz r0, 8(r1)
/* 804B49A0  90 16 02 D0 */	stw r0, 0x2d0(r22)
/* 804B49A4  48 00 00 2C */	b lbl_804B49D0
lbl_804B49A8:
/* 804B49A8  82 D6 00 00 */	lwz r22, 0(r22)
/* 804B49AC  7F 8C E3 78 */	mr r12, r28
/* 804B49B0  7F A4 EB 78 */	mr r4, r29
/* 804B49B4  38 61 00 08 */	addi r3, r1, 8
/* 804B49B8  80 16 02 E0 */	lwz r0, 0x2e0(r22)
/* 804B49BC  90 01 00 08 */	stw r0, 8(r1)
/* 804B49C0  7D 89 03 A6 */	mtctr r12
/* 804B49C4  4E 80 04 21 */	bctrl 
/* 804B49C8  80 01 00 08 */	lwz r0, 8(r1)
/* 804B49CC  90 16 02 E0 */	stw r0, 0x2e0(r22)
lbl_804B49D0:
/* 804B49D0  4B F5 78 45 */	bl Matrix_pull
lbl_804B49D4:
/* 804B49D4  39 61 00 40 */	addi r11, r1, 0x40
/* 804B49D8  4B BE 65 2D */	bl func_8009AF04
/* 804B49DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B49E0  7C 08 03 A6 */	mtlr r0
/* 804B49E4  38 21 00 40 */	addi r1, r1, 0x40
/* 804B49E8  4E 80 00 20 */	blr 
