lbl_8039F744:
/* 8039F744  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8039F748  7C 08 02 A6 */	mflr r0
/* 8039F74C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8039F750  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8039F754  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8039F758  39 61 00 40 */	addi r11, r1, 0x40
/* 8039F75C  4B CF B7 61 */	bl func_8009AEBC
/* 8039F760  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8039F764  7C 7A 1B 78 */	mr r26, r3
/* 8039F768  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8039F76C  7C 9B 23 78 */	mr r27, r4
/* 8039F770  3F E3 00 01 */	addis r31, r3, 1
/* 8039F774  3B C0 00 00 */	li r30, 0
/* 8039F778  3B A0 00 00 */	li r29, 0
/* 8039F77C  3B 80 00 00 */	li r28, 0
/* 8039F780  3A E0 00 00 */	li r23, 0
/* 8039F784  3B 20 00 01 */	li r25, 1
/* 8039F788  3B FF 74 38 */	addi r31, r31, 0x7438
lbl_8039F78C:
/* 8039F78C  7F E3 FB 78 */	mr r3, r31
/* 8039F790  48 02 BC 4D */	bl mNpc_CheckFreeAnimalPersonalID
/* 8039F794  2C 03 00 00 */	cmpwi r3, 0
/* 8039F798  40 82 00 14 */	bne lbl_8039F7AC
/* 8039F79C  7F 20 B8 30 */	slw r0, r25, r23
/* 8039F7A0  3B BD 00 01 */	addi r29, r29, 1
/* 8039F7A4  7F 80 03 78 */	or r0, r28, r0
/* 8039F7A8  54 1C 04 3E */	clrlwi r28, r0, 0x10
lbl_8039F7AC:
/* 8039F7AC  3A F7 00 01 */	addi r23, r23, 1
/* 8039F7B0  3B FF 09 88 */	addi r31, r31, 0x988
/* 8039F7B4  2C 17 00 0F */	cmpwi r23, 0xf
/* 8039F7B8  41 80 FF D4 */	blt lbl_8039F78C
/* 8039F7BC  7F BB E8 51 */	subf. r29, r27, r29
/* 8039F7C0  3F FF FF FF */	addis r31, r31, 0xffff
/* 8039F7C4  3B FF 71 08 */	addi r31, r31, 0x7108
/* 8039F7C8  40 81 00 70 */	ble lbl_8039F838
/* 8039F7CC  48 01 43 3D */	bl mLd_PlayerManKindCheck
/* 8039F7D0  2C 03 00 00 */	cmpwi r3, 0
/* 8039F7D4  40 82 00 64 */	bne lbl_8039F838
/* 8039F7D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039F7DC  3A E0 00 00 */	li r23, 0
/* 8039F7E0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039F7E4  3B 20 00 01 */	li r25, 1
/* 8039F7E8  3F 03 00 02 */	addis r24, r3, 2
lbl_8039F7EC:
/* 8039F7EC  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 8039F7F0  7C 00 BE 30 */	sraw r0, r0, r23
/* 8039F7F4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8039F7F8  2C 00 00 01 */	cmpwi r0, 1
/* 8039F7FC  40 82 00 2C */	bne lbl_8039F828
/* 8039F800  80 98 61 3C */	lwz r4, 0x613c(r24)
/* 8039F804  38 7F 00 10 */	addi r3, r31, 0x10
/* 8039F808  4B FF FE F1 */	bl mEvMN_CheckCanJointEvent
/* 8039F80C  2C 03 00 00 */	cmpwi r3, 0
/* 8039F810  40 82 00 18 */	bne lbl_8039F828
/* 8039F814  7F 20 B8 30 */	slw r0, r25, r23
/* 8039F818  37 BD FF FF */	addic. r29, r29, -1
/* 8039F81C  7F 80 00 78 */	andc r0, r28, r0
/* 8039F820  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 8039F824  40 81 00 14 */	ble lbl_8039F838
lbl_8039F828:
/* 8039F828  3A F7 00 01 */	addi r23, r23, 1
/* 8039F82C  3B FF 09 88 */	addi r31, r31, 0x988
/* 8039F830  2C 17 00 0F */	cmpwi r23, 0xf
/* 8039F834  41 80 FF B8 */	blt lbl_8039F7EC
lbl_8039F838:
/* 8039F838  38 00 00 0F */	li r0, 0xf
/* 8039F83C  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 8039F840  38 80 00 00 */	li r4, 0
/* 8039F844  7C 09 03 A6 */	mtctr r0
lbl_8039F848:
/* 8039F848  7C 60 26 30 */	sraw r0, r3, r4
/* 8039F84C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8039F850  2C 00 00 01 */	cmpwi r0, 1
/* 8039F854  40 82 00 08 */	bne lbl_8039F85C
/* 8039F858  3B DE 00 01 */	addi r30, r30, 1
lbl_8039F85C:
/* 8039F85C  38 84 00 01 */	addi r4, r4, 1
/* 8039F860  42 00 FF E8 */	bdnz lbl_8039F848
/* 8039F864  7C 1E D8 00 */	cmpw r30, r27
/* 8039F868  40 80 00 08 */	bge lbl_8039F870
/* 8039F86C  7F DB F3 78 */	mr r27, r30
lbl_8039F870:
/* 8039F870  3C 60 80 64 */	lis r3, data_80641E4C@ha /* 0x80641E4C@ha */
/* 8039F874  3F A0 43 30 */	lis r29, 0x4330
/* 8039F878  CB E3 1E 4C */	lfd f31, data_80641E4C@l(r3)  /* 0x80641E4C@l */
/* 8039F87C  48 00 00 94 */	b lbl_8039F910
lbl_8039F880:
/* 8039F880  57 80 04 3F */	clrlwi. r0, r28, 0x10
/* 8039F884  41 82 00 9C */	beq lbl_8039F920
/* 8039F888  4B CB D4 6D */	bl fqrand
/* 8039F88C  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 8039F890  93 A1 00 08 */	stw r29, 8(r1)
/* 8039F894  38 00 00 0F */	li r0, 0xf
/* 8039F898  57 84 04 3E */	clrlwi r4, r28, 0x10
/* 8039F89C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8039F8A0  38 60 00 00 */	li r3, 0
/* 8039F8A4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8039F8A8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8039F8AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8039F8B0  FC 00 00 1E */	fctiwz f0, f0
/* 8039F8B4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8039F8B8  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8039F8BC  7C 09 03 A6 */	mtctr r0
lbl_8039F8C0:
/* 8039F8C0  7C 80 1E 30 */	sraw r0, r4, r3
/* 8039F8C4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8039F8C8  2C 00 00 01 */	cmpwi r0, 1
/* 8039F8CC  40 82 00 2C */	bne lbl_8039F8F8
/* 8039F8D0  2C 05 00 00 */	cmpwi r5, 0
/* 8039F8D4  41 81 00 20 */	bgt lbl_8039F8F4
/* 8039F8D8  38 00 00 01 */	li r0, 1
/* 8039F8DC  98 7A 00 00 */	stb r3, 0(r26)
/* 8039F8E0  7C 00 18 30 */	slw r0, r0, r3
/* 8039F8E4  3B DE FF FF */	addi r30, r30, -1
/* 8039F8E8  7F 80 00 78 */	andc r0, r28, r0
/* 8039F8EC  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 8039F8F0  48 00 00 10 */	b lbl_8039F900
lbl_8039F8F4:
/* 8039F8F4  38 A5 FF FF */	addi r5, r5, -1
lbl_8039F8F8:
/* 8039F8F8  38 63 00 01 */	addi r3, r3, 1
/* 8039F8FC  42 00 FF C4 */	bdnz lbl_8039F8C0
lbl_8039F900:
/* 8039F900  2C 03 00 0F */	cmpwi r3, 0xf
/* 8039F904  41 82 00 1C */	beq lbl_8039F920
/* 8039F908  3B 7B FF FF */	addi r27, r27, -1
/* 8039F90C  3B 5A 00 01 */	addi r26, r26, 1
lbl_8039F910:
/* 8039F910  2C 1E 00 00 */	cmpwi r30, 0
/* 8039F914  40 81 00 0C */	ble lbl_8039F920
/* 8039F918  2C 1B 00 00 */	cmpwi r27, 0
/* 8039F91C  41 81 FF 64 */	bgt lbl_8039F880
lbl_8039F920:
/* 8039F920  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8039F924  39 61 00 40 */	addi r11, r1, 0x40
/* 8039F928  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8039F92C  4B CF B5 DD */	bl func_8009AF08
/* 8039F930  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8039F934  7C 08 03 A6 */	mtlr r0
/* 8039F938  38 21 00 50 */	addi r1, r1, 0x50
/* 8039F93C  4E 80 00 20 */	blr 
