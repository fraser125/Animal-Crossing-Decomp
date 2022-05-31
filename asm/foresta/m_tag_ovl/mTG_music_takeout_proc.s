lbl_805F4E74:
/* 805F4E74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805F4E78  7C 08 02 A6 */	mflr r0
/* 805F4E7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805F4E80  39 61 00 40 */	addi r11, r1, 0x40
/* 805F4E84  4B AA 60 31 */	bl func_8009AEB4
/* 805F4E88  7C 75 1B 78 */	mr r21, r3
/* 805F4E8C  7C 96 23 78 */	mr r22, r4
/* 805F4E90  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F4E94  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F4E98  38 63 00 08 */	addi r3, r3, 8
/* 805F4E9C  4B FF AC C5 */	bl mTG_get_table_idx
/* 805F4EA0  80 95 00 2C */	lwz r4, 0x2c(r21)
/* 805F4EA4  38 00 00 37 */	li r0, 0x37
/* 805F4EA8  7C 7F 1B 78 */	mr r31, r3
/* 805F4EAC  38 A0 00 00 */	li r5, 0
/* 805F4EB0  82 E4 09 D0 */	lwz r23, 0x9d0(r4)
/* 805F4EB4  38 80 00 00 */	li r4, 0
/* 805F4EB8  7C 09 03 A6 */	mtctr r0
lbl_805F4EBC:
/* 805F4EBC  7C 83 2E 70 */	srawi r3, r4, 5
/* 805F4EC0  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 805F4EC4  7C 63 01 94 */	addze r3, r3
/* 805F4EC8  54 63 17 7A */	rlwinm r3, r3, 2, 0x1d, 0x1d
/* 805F4ECC  38 63 00 14 */	addi r3, r3, 0x14
/* 805F4ED0  7C 77 18 2E */	lwzx r3, r23, r3
/* 805F4ED4  7C 60 04 30 */	srw r0, r3, r0
/* 805F4ED8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F4EDC  41 82 00 08 */	beq lbl_805F4EE4
/* 805F4EE0  38 A5 00 01 */	addi r5, r5, 1
lbl_805F4EE4:
/* 805F4EE4  38 84 00 01 */	addi r4, r4, 1
/* 805F4EE8  42 00 FF D4 */	bdnz lbl_805F4EBC
/* 805F4EEC  28 05 00 00 */	cmplwi r5, 0
/* 805F4EF0  41 82 00 28 */	beq lbl_805F4F18
/* 805F4EF4  7F E3 2E 70 */	srawi r3, r31, 5
/* 805F4EF8  57 E0 06 FE */	clrlwi r0, r31, 0x1b
/* 805F4EFC  7C 63 01 94 */	addze r3, r3
/* 805F4F00  54 63 17 7A */	rlwinm r3, r3, 2, 0x1d, 0x1d
/* 805F4F04  7C 77 1A 14 */	add r3, r23, r3
/* 805F4F08  80 63 00 14 */	lwz r3, 0x14(r3)
/* 805F4F0C  7C 60 04 30 */	srw r0, r3, r0
/* 805F4F10  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F4F14  40 82 00 F0 */	bne lbl_805F5004
lbl_805F4F18:
/* 805F4F18  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F4F1C  38 80 00 00 */	li r4, 0
/* 805F4F20  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F4F24  3F A3 00 02 */	addis r29, r3, 2
/* 805F4F28  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 805F4F2C  4B DE BA 65 */	bl mPr_GetPossessionItemSum
/* 805F4F30  28 03 00 01 */	cmplwi r3, 1
/* 805F4F34  41 80 00 BC */	blt lbl_805F4FF0
/* 805F4F38  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 805F4F3C  38 80 00 00 */	li r4, 0
/* 805F4F40  4B DE B7 E9 */	bl mPr_GetPossessionItemIdx
/* 805F4F44  7C 77 1B 79 */	or. r23, r3, r3
/* 805F4F48  41 80 00 84 */	blt lbl_805F4FCC
/* 805F4F4C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F4F50  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F4F54  80 03 00 14 */	lwz r0, 0x14(r3)
/* 805F4F58  2C 00 00 2F */	cmpwi r0, 0x2f
/* 805F4F5C  40 82 00 10 */	bne lbl_805F4F6C
/* 805F4F60  3C E3 00 02 */	addis r7, r3, 2
/* 805F4F64  38 E7 32 14 */	addi r7, r7, 0x3214
/* 805F4F68  48 00 00 28 */	b lbl_805F4F90
lbl_805F4F6C:
/* 805F4F6C  3C 63 00 02 */	addis r3, r3, 2
/* 805F4F70  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 805F4F74  4B DB E6 45 */	bl mHS_get_arrange_idx
/* 805F4F78  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 805F4F7C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F4F80  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805F4F84  7C 60 22 14 */	add r3, r0, r4
/* 805F4F88  3C E3 00 01 */	addis r7, r3, 1
/* 805F4F8C  38 E7 C3 6C */	addi r7, r7, -15508
lbl_805F4F90:
/* 805F4F90  7F E3 2E 70 */	srawi r3, r31, 5
/* 805F4F94  38 1F 2A 00 */	addi r0, r31, 0x2a00
/* 805F4F98  7C 83 01 94 */	addze r4, r3
/* 805F4F9C  54 86 17 7A */	rlwinm r6, r4, 2, 0x1d, 0x1d
/* 805F4FA0  57 E3 06 FE */	clrlwi r3, r31, 0x1b
/* 805F4FA4  38 80 00 01 */	li r4, 1
/* 805F4FA8  7C A7 30 2E */	lwzx r5, r7, r6
/* 805F4FAC  7C 83 18 30 */	slw r3, r4, r3
/* 805F4FB0  7C A3 18 78 */	andc r3, r5, r3
/* 805F4FB4  7E E4 BB 78 */	mr r4, r23
/* 805F4FB8  7C 67 31 2E */	stwx r3, r7, r6
/* 805F4FBC  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 805F4FC0  38 C0 00 00 */	li r6, 0
/* 805F4FC4  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 805F4FC8  4B DE BE 61 */	bl mPr_SetPossessionItem
lbl_805F4FCC:
/* 805F4FCC  7E A3 AB 78 */	mr r3, r21
/* 805F4FD0  38 80 00 00 */	li r4, 0
/* 805F4FD4  38 A0 00 00 */	li r5, 0
/* 805F4FD8  4B FF A7 DD */	bl mTG_return_tag_init
/* 805F4FDC  7E A3 AB 78 */	mr r3, r21
/* 805F4FE0  7E C4 B3 78 */	mr r4, r22
/* 805F4FE4  38 A0 00 01 */	li r5, 1
/* 805F4FE8  4B FF E0 2D */	bl mTG_close_window
/* 805F4FEC  48 00 01 28 */	b lbl_805F5114
lbl_805F4FF0:
/* 805F4FF0  7E A3 AB 78 */	mr r3, r21
/* 805F4FF4  7E C4 B3 78 */	mr r4, r22
/* 805F4FF8  38 A0 00 10 */	li r5, 0x10
/* 805F4FFC  4B FF DE 25 */	bl mTG_open_warning_window
/* 805F5000  48 00 01 14 */	b lbl_805F5114
lbl_805F5004:
/* 805F5004  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F5008  38 80 00 00 */	li r4, 0
/* 805F500C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F5010  3F 83 00 02 */	addis r28, r3, 2
/* 805F5014  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 805F5018  4B DE B9 79 */	bl mPr_GetPossessionItemSum
/* 805F501C  28 03 00 01 */	cmplwi r3, 1
/* 805F5020  41 80 00 E4 */	blt lbl_805F5104
/* 805F5024  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F5028  3B 20 00 00 */	li r25, 0
/* 805F502C  3B E3 85 38 */	addi r31, r3, common_data@l /* 0x81138538@l */
/* 805F5030  3F DF 00 02 */	addis r30, r31, 2
/* 805F5034  7F DD F3 78 */	mr r29, r30
/* 805F5038  3B DE 32 14 */	addi r30, r30, 0x3214
lbl_805F503C:
/* 805F503C  7F 20 2E 70 */	srawi r0, r25, 5
/* 805F5040  57 3B 06 FE */	clrlwi r27, r25, 0x1b
/* 805F5044  7C 00 01 94 */	addze r0, r0
/* 805F5048  54 1A 17 7A */	rlwinm r26, r0, 2, 0x1d, 0x1d
/* 805F504C  38 1A 00 14 */	addi r0, r26, 0x14
/* 805F5050  7C 17 00 2E */	lwzx r0, r23, r0
/* 805F5054  7C 00 DC 30 */	srw r0, r0, r27
/* 805F5058  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F505C  41 82 00 78 */	beq lbl_805F50D4
/* 805F5060  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 805F5064  38 80 00 00 */	li r4, 0
/* 805F5068  4B DE B6 C1 */	bl mPr_GetPossessionItemIdx
/* 805F506C  7C 78 1B 79 */	or. r24, r3, r3
/* 805F5070  41 80 00 64 */	blt lbl_805F50D4
/* 805F5074  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 805F5078  2C 00 00 2F */	cmpwi r0, 0x2f
/* 805F507C  40 82 00 0C */	bne lbl_805F5088
/* 805F5080  7F C5 F3 78 */	mr r5, r30
/* 805F5084  48 00 00 24 */	b lbl_805F50A8
lbl_805F5088:
/* 805F5088  88 7D 60 03 */	lbz r3, 0x6003(r29)
/* 805F508C  4B DB E5 2D */	bl mHS_get_arrange_idx
/* 805F5090  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 805F5094  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F5098  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805F509C  7C 60 22 14 */	add r3, r0, r4
/* 805F50A0  3C A3 00 01 */	addis r5, r3, 1
/* 805F50A4  38 A5 C3 6C */	addi r5, r5, -15508
lbl_805F50A8:
/* 805F50A8  38 00 00 01 */	li r0, 1
/* 805F50AC  7C 85 D0 2E */	lwzx r4, r5, r26
/* 805F50B0  7C 03 D8 30 */	slw r3, r0, r27
/* 805F50B4  38 19 2A 00 */	addi r0, r25, 0x2a00
/* 805F50B8  7C 83 18 78 */	andc r3, r4, r3
/* 805F50BC  7F 04 C3 78 */	mr r4, r24
/* 805F50C0  7C 65 D1 2E */	stwx r3, r5, r26
/* 805F50C4  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 805F50C8  38 C0 00 00 */	li r6, 0
/* 805F50CC  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 805F50D0  4B DE BD 59 */	bl mPr_SetPossessionItem
lbl_805F50D4:
/* 805F50D4  3B 39 00 01 */	addi r25, r25, 1
/* 805F50D8  2C 19 00 37 */	cmpwi r25, 0x37
/* 805F50DC  41 80 FF 60 */	blt lbl_805F503C
/* 805F50E0  7E A3 AB 78 */	mr r3, r21
/* 805F50E4  38 80 00 00 */	li r4, 0
/* 805F50E8  38 A0 00 00 */	li r5, 0
/* 805F50EC  4B FF A6 C9 */	bl mTG_return_tag_init
/* 805F50F0  7E A3 AB 78 */	mr r3, r21
/* 805F50F4  7E C4 B3 78 */	mr r4, r22
/* 805F50F8  38 A0 00 01 */	li r5, 1
/* 805F50FC  4B FF DF 19 */	bl mTG_close_window
/* 805F5100  48 00 00 14 */	b lbl_805F5114
lbl_805F5104:
/* 805F5104  7E A3 AB 78 */	mr r3, r21
/* 805F5108  7E C4 B3 78 */	mr r4, r22
/* 805F510C  38 A0 00 10 */	li r5, 0x10
/* 805F5110  4B FF DD 11 */	bl mTG_open_warning_window
lbl_805F5114:
/* 805F5114  39 61 00 40 */	addi r11, r1, 0x40
/* 805F5118  4B AA 5D E9 */	bl func_8009AF00
/* 805F511C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805F5120  7C 08 03 A6 */	mtlr r0
/* 805F5124  38 21 00 40 */	addi r1, r1, 0x40
/* 805F5128  4E 80 00 20 */	blr 
