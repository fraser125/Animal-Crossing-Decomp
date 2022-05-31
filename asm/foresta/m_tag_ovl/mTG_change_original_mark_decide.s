lbl_805FCDB4:
/* 805FCDB4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805FCDB8  7C 08 02 A6 */	mflr r0
/* 805FCDBC  90 01 00 64 */	stw r0, 0x64(r1)
/* 805FCDC0  39 61 00 60 */	addi r11, r1, 0x60
/* 805FCDC4  4B A9 E0 D5 */	bl __save_gpr
/* 805FCDC8  7C 72 1B 78 */	mr r18, r3
/* 805FCDCC  7C D5 33 78 */	mr r21, r6
/* 805FCDD0  1C 75 00 24 */	mulli r3, r21, 0x24
/* 805FCDD4  80 D2 00 2C */	lwz r6, 0x2c(r18)
/* 805FCDD8  7C B4 2B 78 */	mr r20, r5
/* 805FCDDC  83 26 09 7C */	lwz r25, 0x97c(r6)
/* 805FCDE0  7C 93 23 78 */	mr r19, r4
/* 805FCDE4  3A C3 03 90 */	addi r22, r3, 0x390
/* 805FCDE8  8B 05 00 04 */	lbz r24, 4(r5)
/* 805FCDEC  38 79 03 90 */	addi r3, r25, 0x390
/* 805FCDF0  7E D9 B2 14 */	add r22, r25, r22
/* 805FCDF4  39 01 00 0C */	addi r8, r1, 0xc
/* 805FCDF8  39 20 00 00 */	li r9, 0
/* 805FCDFC  38 80 00 00 */	li r4, 0
lbl_805FCE00:
/* 805FCE00  7C E3 22 14 */	add r7, r3, r4
/* 805FCE04  38 00 FF FF */	li r0, -1
/* 805FCE08  A8 C7 00 2C */	lha r6, 0x2c(r7)
/* 805FCE0C  39 40 00 00 */	li r10, 0
/* 805FCE10  7C 08 23 2E */	sthx r0, r8, r4
/* 805FCE14  38 A0 00 01 */	li r5, 1
/* 805FCE18  7C C9 03 A6 */	mtctr r6
/* 805FCE1C  2C 06 00 00 */	cmpwi r6, 0
/* 805FCE20  40 81 00 3C */	ble lbl_805FCE5C
lbl_805FCE24:
/* 805FCE24  A0 C7 00 28 */	lhz r6, 0x28(r7)
/* 805FCE28  7C A0 50 30 */	slw r0, r5, r10
/* 805FCE2C  7C C0 00 39 */	and. r0, r6, r0
/* 805FCE30  41 82 00 24 */	beq lbl_805FCE54
/* 805FCE34  20 09 00 01 */	subfic r0, r9, 1
/* 805FCE38  38 C4 00 20 */	addi r6, r4, 0x20
/* 805FCE3C  54 00 08 3C */	slwi r0, r0, 1
/* 805FCE40  38 A1 00 08 */	addi r5, r1, 8
/* 805FCE44  7D 56 33 2E */	sthx r10, r22, r6
/* 805FCE48  7D 48 23 2E */	sthx r10, r8, r4
/* 805FCE4C  7D 45 03 2E */	sthx r10, r5, r0
/* 805FCE50  48 00 00 0C */	b lbl_805FCE5C
lbl_805FCE54:
/* 805FCE54  39 4A 00 01 */	addi r10, r10, 1
/* 805FCE58  42 00 FF CC */	bdnz lbl_805FCE24
lbl_805FCE5C:
/* 805FCE5C  39 29 00 01 */	addi r9, r9, 1
/* 805FCE60  38 84 00 02 */	addi r4, r4, 2
/* 805FCE64  2C 09 00 02 */	cmpwi r9, 2
/* 805FCE68  41 80 FF 98 */	blt lbl_805FCE00
/* 805FCE6C  A8 01 00 0C */	lha r0, 0xc(r1)
/* 805FCE70  2C 00 00 00 */	cmpwi r0, 0
/* 805FCE74  40 80 00 1C */	bge lbl_805FCE90
/* 805FCE78  A8 01 00 0E */	lha r0, 0xe(r1)
/* 805FCE7C  2C 00 00 00 */	cmpwi r0, 0
/* 805FCE80  40 80 00 10 */	bge lbl_805FCE90
/* 805FCE84  38 00 00 00 */	li r0, 0
/* 805FCE88  B0 03 00 30 */	sth r0, 0x30(r3)
/* 805FCE8C  48 00 01 20 */	b lbl_805FCFAC
lbl_805FCE90:
/* 805FCE90  3C A0 80 65 */	lis r5, data_8064B814@ha /* 0x8064B814@ha */
/* 805FCE94  3C 80 80 6D */	lis r4, table_no_4875@ha /* 0x806D100C@ha */
/* 805FCE98  C0 05 B8 14 */	lfs f0, data_8064B814@l(r5)  /* 0x8064B814@l */
/* 805FCE9C  38 00 00 02 */	li r0, 2
/* 805FCEA0  3B A4 10 0C */	addi r29, r4, table_no_4875@l /* 0x806D100C@l */
/* 805FCEA4  3B C1 00 0C */	addi r30, r1, 0xc
/* 805FCEA8  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 805FCEAC  3B E1 00 08 */	addi r31, r1, 8
/* 805FCEB0  3B 40 00 00 */	li r26, 0
/* 805FCEB4  3A 20 00 00 */	li r17, 0
/* 805FCEB8  B0 03 00 30 */	sth r0, 0x30(r3)
/* 805FCEBC  3A 00 00 00 */	li r16, 0
/* 805FCEC0  39 E0 00 00 */	li r15, 0
/* 805FCEC4  39 C0 00 00 */	li r14, 0
lbl_805FCEC8:
/* 805FCEC8  7F 7E 8A AE */	lhax r27, r30, r17
/* 805FCECC  7F 96 7A 14 */	add r28, r22, r15
/* 805FCED0  7C BD 80 2E */	lwzx r5, r29, r16
/* 805FCED4  7E 43 93 78 */	mr r3, r18
/* 805FCED8  7F 84 E3 78 */	mr r4, r28
/* 805FCEDC  7F 66 DB 78 */	mr r6, r27
/* 805FCEE0  3A EE 03 78 */	addi r23, r14, 0x378
/* 805FCEE4  4B FF 27 CD */	bl mTG_set_hand_pos
/* 805FCEE8  20 1A 00 01 */	subfic r0, r26, 1
/* 805FCEEC  7C DF 8A AE */	lhax r6, r31, r17
/* 805FCEF0  54 00 10 3A */	slwi r0, r0, 2
/* 805FCEF4  7E 43 93 78 */	mr r3, r18
/* 805FCEF8  7C BD 00 2E */	lwzx r5, r29, r0
/* 805FCEFC  38 9C 00 10 */	addi r4, r28, 0x10
/* 805FCF00  4B FF 27 B1 */	bl mTG_set_hand_pos
/* 805FCF04  2C 1A 00 01 */	cmpwi r26, 1
/* 805FCF08  41 82 00 38 */	beq lbl_805FCF40
/* 805FCF0C  40 80 00 68 */	bge lbl_805FCF74
/* 805FCF10  2C 1A 00 00 */	cmpwi r26, 0
/* 805FCF14  40 80 00 08 */	bge lbl_805FCF1C
/* 805FCF18  48 00 00 5C */	b lbl_805FCF74
lbl_805FCF1C:
/* 805FCF1C  3C 9B 00 01 */	addis r4, r27, 1
/* 805FCF20  7E 43 93 78 */	mr r3, r18
/* 805FCF24  38 04 FE 31 */	addi r0, r4, -463
/* 805FCF28  7C 19 BB 2E */	sthx r0, r25, r23
/* 805FCF2C  7F 64 DB 78 */	mr r4, r27
/* 805FCF30  4B FE C7 BD */	bl mNW_on_hide_flg
/* 805FCF34  7E 43 93 78 */	mr r3, r18
/* 805FCF38  4B FE C8 41 */	bl mNW_clear_mark_flg
/* 805FCF3C  48 00 00 38 */	b lbl_805FCF74
lbl_805FCF40:
/* 805FCF40  7E 43 93 78 */	mr r3, r18
/* 805FCF44  4B FD 03 05 */	bl mCO_top_folder
/* 805FCF48  1C C3 00 0C */	mulli r6, r3, 0xc
/* 805FCF4C  7E 43 93 78 */	mr r3, r18
/* 805FCF50  7F 04 C3 78 */	mr r4, r24
/* 805FCF54  7F 65 DB 78 */	mr r5, r27
/* 805FCF58  3C 06 00 01 */	addis r0, r6, 1
/* 805FCF5C  7C C0 DA 14 */	add r6, r0, r27
/* 805FCF60  38 06 FE 39 */	addi r0, r6, -455
/* 805FCF64  7C 19 BB 2E */	sthx r0, r25, r23
/* 805FCF68  4B FD 03 75 */	bl mCO_on_hide_flg
/* 805FCF6C  7E 43 93 78 */	mr r3, r18
/* 805FCF70  4B FD 03 25 */	bl mCO_clear_mark_flg
lbl_805FCF74:
/* 805FCF74  7E 43 93 78 */	mr r3, r18
/* 805FCF78  7E 64 9B 78 */	mr r4, r19
/* 805FCF7C  7E 85 A3 78 */	mr r5, r20
/* 805FCF80  7E A6 AB 78 */	mr r6, r21
/* 805FCF84  4B FF FC 11 */	bl mTG_change_original_mark_move
/* 805FCF88  3B 5A 00 01 */	addi r26, r26, 1
/* 805FCF8C  3A 10 00 04 */	addi r16, r16, 4
/* 805FCF90  2C 1A 00 02 */	cmpwi r26, 2
/* 805FCF94  39 EF 00 08 */	addi r15, r15, 8
/* 805FCF98  39 CE 00 0C */	addi r14, r14, 0xc
/* 805FCF9C  3A 31 00 02 */	addi r17, r17, 2
/* 805FCFA0  41 80 FF 28 */	blt lbl_805FCEC8
/* 805FCFA4  7E 43 93 78 */	mr r3, r18
/* 805FCFA8  4B FF 45 F5 */	bl mTG_init_tag_data_item_win
lbl_805FCFAC:
/* 805FCFAC  39 61 00 60 */	addi r11, r1, 0x60
/* 805FCFB0  4B A9 DF 35 */	bl __restore_gpr
/* 805FCFB4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805FCFB8  7C 08 03 A6 */	mtlr r0
/* 805FCFBC  38 21 00 60 */	addi r1, r1, 0x60
/* 805FCFC0  4E 80 00 20 */	blr 
