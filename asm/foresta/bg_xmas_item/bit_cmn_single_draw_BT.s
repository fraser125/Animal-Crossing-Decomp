lbl_804CAA98:
/* 804CAA98  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CAA9C  7C 08 02 A6 */	mflr r0
/* 804CAAA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CAAA4  39 61 00 40 */	addi r11, r1, 0x40
/* 804CAAA8  4B BD 04 11 */	bl func_8009AEB8
/* 804CAAAC  7C BE 2B 79 */	or. r30, r5, r5
/* 804CAAB0  83 81 00 48 */	lwz r28, 0x48(r1)
/* 804CAAB4  83 A1 00 4C */	lwz r29, 0x4c(r1)
/* 804CAAB8  7C 76 1B 78 */	mr r22, r3
/* 804CAABC  7C D7 33 78 */	mr r23, r6
/* 804CAAC0  7C F8 3B 78 */	mr r24, r7
/* 804CAAC4  7D 19 43 78 */	mr r25, r8
/* 804CAAC8  7D 3A 4B 78 */	mr r26, r9
/* 804CAACC  7D 5B 53 78 */	mr r27, r10
/* 804CAAD0  41 82 01 98 */	beq lbl_804CAC68
/* 804CAAD4  A8 1E 00 02 */	lha r0, 2(r30)
/* 804CAAD8  2C 00 00 7C */	cmpwi r0, 0x7c
/* 804CAADC  41 82 01 8C */	beq lbl_804CAC68
/* 804CAAE0  7C 00 07 35 */	extsh. r0, r0
/* 804CAAE4  40 80 00 08 */	bge lbl_804CAAEC
/* 804CAAE8  48 00 01 80 */	b lbl_804CAC68
lbl_804CAAEC:
/* 804CAAEC  4B F4 16 E9 */	bl Matrix_push
/* 804CAAF0  A8 1E 00 02 */	lha r0, 2(r30)
/* 804CAAF4  3C 80 80 6A */	lis r4, draw_part_table_a@ha /* 0x8069B434@ha */
/* 804CAAF8  3C 60 81 1D */	lis r3, draw_pos@ha /* 0x811D03F8@ha */
/* 804CAAFC  88 BE 00 00 */	lbz r5, 0(r30)
/* 804CAB00  54 00 18 38 */	slwi r0, r0, 3
/* 804CAB04  38 84 B4 34 */	addi r4, r4, draw_part_table_a@l /* 0x8069B434@l */
/* 804CAB08  7F E4 00 2E */	lwzx r31, r4, r0
/* 804CAB0C  38 83 03 F8 */	addi r4, r3, draw_pos@l /* 0x811D03F8@l */
/* 804CAB10  38 00 00 00 */	li r0, 0
/* 804CAB14  38 60 00 00 */	li r3, 0
/* 804CAB18  83 DF 00 00 */	lwz r30, 0(r31)
/* 804CAB1C  98 A4 00 44 */	stb r5, 0x44(r4)
/* 804CAB20  B0 04 00 40 */	sth r0, 0x40(r4)
/* 804CAB24  9B 44 00 42 */	stb r26, 0x42(r4)
/* 804CAB28  C0 37 00 00 */	lfs f1, 0(r23)
/* 804CAB2C  C0 57 00 04 */	lfs f2, 4(r23)
/* 804CAB30  C0 77 00 08 */	lfs f3, 8(r23)
/* 804CAB34  4B F4 17 CD */	bl Matrix_translate
/* 804CAB38  A8 78 00 02 */	lha r3, 2(r24)
/* 804CAB3C  38 80 00 01 */	li r4, 1
/* 804CAB40  4B F4 1B 1D */	bl Matrix_RotateY
/* 804CAB44  A8 78 00 00 */	lha r3, 0(r24)
/* 804CAB48  38 80 00 01 */	li r4, 1
/* 804CAB4C  4B F4 19 6D */	bl Matrix_RotateX
/* 804CAB50  A8 78 00 04 */	lha r3, 4(r24)
/* 804CAB54  38 80 00 01 */	li r4, 1
/* 804CAB58  4B F4 1C 99 */	bl Matrix_RotateZ
/* 804CAB5C  C0 39 00 00 */	lfs f1, 0(r25)
/* 804CAB60  38 60 00 01 */	li r3, 1
/* 804CAB64  C0 59 00 04 */	lfs f2, 4(r25)
/* 804CAB68  C0 79 00 08 */	lfs f3, 8(r25)
/* 804CAB6C  4B F4 18 81 */	bl Matrix_scale
/* 804CAB70  3C 60 81 1D */	lis r3, draw_pos@ha /* 0x811D03F8@ha */
/* 804CAB74  38 63 03 F8 */	addi r3, r3, draw_pos@l /* 0x811D03F8@l */
/* 804CAB78  4B F4 16 B5 */	bl Matrix_get
/* 804CAB7C  28 1B 00 00 */	cmplwi r27, 0
/* 804CAB80  41 82 00 64 */	beq lbl_804CABE4
/* 804CAB84  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 804CAB88  28 00 00 FF */	cmplwi r0, 0xff
/* 804CAB8C  40 82 00 30 */	bne lbl_804CABBC
/* 804CAB90  82 F6 00 00 */	lwz r23, 0(r22)
/* 804CAB94  7F 6C DB 78 */	mr r12, r27
/* 804CAB98  7F A4 EB 78 */	mr r4, r29
/* 804CAB9C  38 61 00 08 */	addi r3, r1, 8
/* 804CABA0  80 17 02 D0 */	lwz r0, 0x2d0(r23)
/* 804CABA4  90 01 00 08 */	stw r0, 8(r1)
/* 804CABA8  7D 89 03 A6 */	mtctr r12
/* 804CABAC  4E 80 04 21 */	bctrl 
/* 804CABB0  80 01 00 08 */	lwz r0, 8(r1)
/* 804CABB4  90 17 02 D0 */	stw r0, 0x2d0(r23)
/* 804CABB8  48 00 00 2C */	b lbl_804CABE4
lbl_804CABBC:
/* 804CABBC  82 F6 00 00 */	lwz r23, 0(r22)
/* 804CABC0  7F 6C DB 78 */	mr r12, r27
/* 804CABC4  7F A4 EB 78 */	mr r4, r29
/* 804CABC8  38 61 00 08 */	addi r3, r1, 8
/* 804CABCC  80 17 02 E0 */	lwz r0, 0x2e0(r23)
/* 804CABD0  90 01 00 08 */	stw r0, 8(r1)
/* 804CABD4  7D 89 03 A6 */	mtctr r12
/* 804CABD8  4E 80 04 21 */	bctrl 
/* 804CABDC  80 01 00 08 */	lwz r0, 8(r1)
/* 804CABE0  90 17 02 E0 */	stw r0, 0x2e0(r23)
lbl_804CABE4:
/* 804CABE4  3C 80 81 1D */	lis r4, draw_pos@ha /* 0x811D03F8@ha */
/* 804CABE8  80 76 00 00 */	lwz r3, 0(r22)
/* 804CABEC  38 84 03 F8 */	addi r4, r4, draw_pos@l /* 0x811D03F8@l */
/* 804CABF0  7F E5 FB 78 */	mr r5, r31
/* 804CABF4  7F C6 F3 78 */	mr r6, r30
/* 804CABF8  4B FF FD 41 */	bl bit_cmn_single_draw_item_body
/* 804CABFC  28 1C 00 00 */	cmplwi r28, 0
/* 804CAC00  41 82 00 64 */	beq lbl_804CAC64
/* 804CAC04  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 804CAC08  28 00 00 FF */	cmplwi r0, 0xff
/* 804CAC0C  40 82 00 30 */	bne lbl_804CAC3C
/* 804CAC10  82 D6 00 00 */	lwz r22, 0(r22)
/* 804CAC14  7F 8C E3 78 */	mr r12, r28
/* 804CAC18  7F A4 EB 78 */	mr r4, r29
/* 804CAC1C  38 61 00 08 */	addi r3, r1, 8
/* 804CAC20  80 16 02 D0 */	lwz r0, 0x2d0(r22)
/* 804CAC24  90 01 00 08 */	stw r0, 8(r1)
/* 804CAC28  7D 89 03 A6 */	mtctr r12
/* 804CAC2C  4E 80 04 21 */	bctrl 
/* 804CAC30  80 01 00 08 */	lwz r0, 8(r1)
/* 804CAC34  90 16 02 D0 */	stw r0, 0x2d0(r22)
/* 804CAC38  48 00 00 2C */	b lbl_804CAC64
lbl_804CAC3C:
/* 804CAC3C  82 D6 00 00 */	lwz r22, 0(r22)
/* 804CAC40  7F 8C E3 78 */	mr r12, r28
/* 804CAC44  7F A4 EB 78 */	mr r4, r29
/* 804CAC48  38 61 00 08 */	addi r3, r1, 8
/* 804CAC4C  80 16 02 E0 */	lwz r0, 0x2e0(r22)
/* 804CAC50  90 01 00 08 */	stw r0, 8(r1)
/* 804CAC54  7D 89 03 A6 */	mtctr r12
/* 804CAC58  4E 80 04 21 */	bctrl 
/* 804CAC5C  80 01 00 08 */	lwz r0, 8(r1)
/* 804CAC60  90 16 02 E0 */	stw r0, 0x2e0(r22)
lbl_804CAC64:
/* 804CAC64  4B F4 15 B1 */	bl Matrix_pull
lbl_804CAC68:
/* 804CAC68  39 61 00 40 */	addi r11, r1, 0x40
/* 804CAC6C  4B BD 02 99 */	bl func_8009AF04
/* 804CAC70  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CAC74  7C 08 03 A6 */	mtlr r0
/* 804CAC78  38 21 00 40 */	addi r1, r1, 0x40
/* 804CAC7C  4E 80 00 20 */	blr 
