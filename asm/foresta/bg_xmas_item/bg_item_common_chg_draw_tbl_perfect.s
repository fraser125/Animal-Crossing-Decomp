lbl_804CBDE0:
/* 804CBDE0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804CBDE4  7C 08 02 A6 */	mflr r0
/* 804CBDE8  90 01 00 74 */	stw r0, 0x74(r1)
/* 804CBDEC  39 61 00 70 */	addi r11, r1, 0x70
/* 804CBDF0  4B BC F0 BD */	bl func_8009AEAC
/* 804CBDF4  7C 98 23 78 */	mr r24, r4
/* 804CBDF8  38 00 00 04 */	li r0, 4
/* 804CBDFC  3C 98 00 01 */	addis r4, r24, 1
/* 804CBE00  7C 77 1B 78 */	mr r23, r3
/* 804CBE04  7C B9 2B 78 */	mr r25, r5
/* 804CBE08  83 64 25 9C */	lwz r27, 0x259c(r4)
/* 804CBE0C  38 A4 39 F4 */	addi r5, r4, 0x39f4
/* 804CBE10  83 84 25 54 */	lwz r28, 0x2554(r4)
/* 804CBE14  38 80 00 00 */	li r4, 0
/* 804CBE18  7C 09 03 A6 */	mtctr r0
lbl_804CBE1C:
/* 804CBE1C  80 05 00 00 */	lwz r0, 0(r5)
/* 804CBE20  38 A5 00 04 */	addi r5, r5, 4
/* 804CBE24  1C 60 48 54 */	mulli r3, r0, 0x4854
/* 804CBE28  38 03 48 50 */	addi r0, r3, 0x4850
/* 804CBE2C  7C 98 03 2E */	sthx r4, r24, r0
/* 804CBE30  42 00 FF EC */	bdnz lbl_804CBE1C
/* 804CBE34  57 3E 07 BF */	clrlwi. r30, r25, 0x1e
/* 804CBE38  41 82 00 10 */	beq lbl_804CBE48
/* 804CBE3C  3C 78 00 01 */	addis r3, r24, 1
/* 804CBE40  38 63 37 D4 */	addi r3, r3, 0x37d4
/* 804CBE44  4B FF B5 F9 */	bl bIT_actor_shin_effect_check
lbl_804CBE48:
/* 804CBE48  38 60 00 00 */	li r3, 0
/* 804CBE4C  38 00 00 04 */	li r0, 4
/* 804CBE50  7C 65 1B 78 */	mr r5, r3
/* 804CBE54  38 E1 00 28 */	addi r7, r1, 0x28
/* 804CBE58  38 C1 00 18 */	addi r6, r1, 0x18
/* 804CBE5C  38 81 00 08 */	addi r4, r1, 8
/* 804CBE60  39 00 FF FE */	li r8, -2
/* 804CBE64  7C 09 03 A6 */	mtctr r0
lbl_804CBE68:
/* 804CBE68  7D 07 19 2E */	stwx r8, r7, r3
/* 804CBE6C  7D 06 19 2E */	stwx r8, r6, r3
/* 804CBE70  7C A4 19 2E */	stwx r5, r4, r3
/* 804CBE74  38 63 00 04 */	addi r3, r3, 4
/* 804CBE78  42 00 FF F0 */	bdnz lbl_804CBE68
/* 804CBE7C  57 20 07 BD */	rlwinm. r0, r25, 0, 0x1e, 0x1e
/* 804CBE80  41 82 01 EC */	beq lbl_804CC06C
/* 804CBE84  3A C1 00 28 */	addi r22, r1, 0x28
/* 804CBE88  3B E1 00 18 */	addi r31, r1, 0x18
/* 804CBE8C  3A 61 00 08 */	addi r19, r1, 8
/* 804CBE90  3B A0 00 00 */	li r29, 0
/* 804CBE94  3A A0 00 00 */	li r21, 0
/* 804CBE98  3A 80 00 01 */	li r20, 1
/* 804CBE9C  48 00 00 44 */	b lbl_804CBEE0
lbl_804CBEA0:
/* 804CBEA0  7F A3 EB 78 */	mr r3, r29
/* 804CBEA4  4B ED BA E1 */	bl mFI_GetOldItemTableIdx
/* 804CBEA8  7C 76 A9 2E */	stwx r3, r22, r21
/* 804CBEAC  7C 16 A8 2E */	lwzx r0, r22, r21
/* 804CBEB0  2C 00 00 00 */	cmpwi r0, 0
/* 804CBEB4  41 80 00 24 */	blt lbl_804CBED8
/* 804CBEB8  54 03 10 3A */	slwi r3, r0, 2
/* 804CBEBC  3C 63 00 01 */	addis r3, r3, 1
/* 804CBEC0  38 63 39 F4 */	addi r3, r3, 0x39f4
/* 804CBEC4  7C 18 18 2E */	lwzx r0, r24, r3
/* 804CBEC8  7C 1F A9 2E */	stwx r0, r31, r21
/* 804CBECC  7C 1F A8 2E */	lwzx r0, r31, r21
/* 804CBED0  54 00 10 3A */	slwi r0, r0, 2
/* 804CBED4  7E 93 01 2E */	stwx r20, r19, r0
lbl_804CBED8:
/* 804CBED8  3B BD 00 01 */	addi r29, r29, 1
/* 804CBEDC  3A B5 00 04 */	addi r21, r21, 4
lbl_804CBEE0:
/* 804CBEE0  7C 1D E0 00 */	cmpw r29, r28
/* 804CBEE4  41 80 FF BC */	blt lbl_804CBEA0
/* 804CBEE8  39 21 00 28 */	addi r9, r1, 0x28
/* 804CBEEC  39 60 00 00 */	li r11, 0
/* 804CBEF0  38 60 00 00 */	li r3, 0
/* 804CBEF4  38 80 00 00 */	li r4, 0
/* 804CBEF8  48 00 00 7C */	b lbl_804CBF74
lbl_804CBEFC:
/* 804CBEFC  7C 09 20 2E */	lwzx r0, r9, r4
/* 804CBF00  2C 00 00 00 */	cmpwi r0, 0
/* 804CBF04  40 80 00 64 */	bge lbl_804CBF68
/* 804CBF08  38 00 00 04 */	li r0, 4
/* 804CBF0C  39 41 00 08 */	addi r10, r1, 8
/* 804CBF10  39 80 00 00 */	li r12, 0
/* 804CBF14  38 A0 00 00 */	li r5, 0
/* 804CBF18  7C 09 03 A6 */	mtctr r0
lbl_804CBF1C:
/* 804CBF1C  7C 0A 28 2E */	lwzx r0, r10, r5
/* 804CBF20  2C 00 00 00 */	cmpwi r0, 0
/* 804CBF24  40 82 00 38 */	bne lbl_804CBF5C
/* 804CBF28  7C D8 1A 14 */	add r6, r24, r3
/* 804CBF2C  38 E1 00 18 */	addi r7, r1, 0x18
/* 804CBF30  1C 0C 48 54 */	mulli r0, r12, 0x4854
/* 804CBF34  39 00 00 01 */	li r8, 1
/* 804CBF38  3C C6 00 01 */	addis r6, r6, 1
/* 804CBF3C  7D 0A 29 2E */	stwx r8, r10, r5
/* 804CBF40  88 A6 25 58 */	lbz r5, 0x2558(r6)
/* 804CBF44  7D 18 02 14 */	add r8, r24, r0
/* 804CBF48  98 A8 48 52 */	stb r5, 0x4852(r8)
/* 804CBF4C  88 06 25 59 */	lbz r0, 0x2559(r6)
/* 804CBF50  7D 87 21 2E */	stwx r12, r7, r4
/* 804CBF54  98 08 48 53 */	stb r0, 0x4853(r8)
/* 804CBF58  48 00 00 10 */	b lbl_804CBF68
lbl_804CBF5C:
/* 804CBF5C  39 8C 00 01 */	addi r12, r12, 1
/* 804CBF60  38 A5 00 04 */	addi r5, r5, 4
/* 804CBF64  42 00 FF B8 */	bdnz lbl_804CBF1C
lbl_804CBF68:
/* 804CBF68  39 6B 00 01 */	addi r11, r11, 1
/* 804CBF6C  38 63 00 10 */	addi r3, r3, 0x10
/* 804CBF70  38 84 00 04 */	addi r4, r4, 4
lbl_804CBF74:
/* 804CBF74  7C 0B E0 00 */	cmpw r11, r28
/* 804CBF78  41 80 FF 84 */	blt lbl_804CBEFC
/* 804CBF7C  38 E1 00 18 */	addi r7, r1, 0x18
/* 804CBF80  38 C1 00 28 */	addi r6, r1, 0x28
/* 804CBF84  39 20 00 00 */	li r9, 0
/* 804CBF88  38 60 00 00 */	li r3, 0
/* 804CBF8C  38 A0 00 01 */	li r5, 1
/* 804CBF90  7F 89 03 A6 */	mtctr r28
/* 804CBF94  2C 1C 00 00 */	cmpwi r28, 0
/* 804CBF98  40 81 00 3C */	ble lbl_804CBFD4
lbl_804CBF9C:
/* 804CBF9C  7C 06 18 2E */	lwzx r0, r6, r3
/* 804CBFA0  3D 03 00 01 */	addis r8, r3, 1
/* 804CBFA4  7C 87 18 2E */	lwzx r4, r7, r3
/* 804CBFA8  39 08 39 F4 */	addi r8, r8, 0x39f4
/* 804CBFAC  2C 00 00 00 */	cmpwi r0, 0
/* 804CBFB0  7C 98 41 2E */	stwx r4, r24, r8
/* 804CBFB4  40 80 00 08 */	bge lbl_804CBFBC
/* 804CBFB8  39 20 00 01 */	li r9, 1
lbl_804CBFBC:
/* 804CBFBC  7C 18 40 2E */	lwzx r0, r24, r8
/* 804CBFC0  38 63 00 04 */	addi r3, r3, 4
/* 804CBFC4  1C 80 48 54 */	mulli r4, r0, 0x4854
/* 804CBFC8  38 04 48 50 */	addi r0, r4, 0x4850
/* 804CBFCC  7C B8 03 2E */	sthx r5, r24, r0
/* 804CBFD0  42 00 FF CC */	bdnz lbl_804CBF9C
lbl_804CBFD4:
/* 804CBFD4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804CBFD8  2C 09 00 00 */	cmpwi r9, 0
/* 804CBFDC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804CBFE0  3C 63 00 03 */	addis r3, r3, 3
/* 804CBFE4  8B 43 85 90 */	lbz r26, -0x7a70(r3)
/* 804CBFE8  40 82 00 0C */	bne lbl_804CBFF4
/* 804CBFEC  28 1A 00 00 */	cmplwi r26, 0
/* 804CBFF0  41 82 00 7C */	beq lbl_804CC06C
lbl_804CBFF4:
/* 804CBFF4  3B E1 00 28 */	addi r31, r1, 0x28
/* 804CBFF8  3E 98 00 01 */	addis r20, r24, 1
/* 804CBFFC  3B A0 00 00 */	li r29, 0
/* 804CC000  3A C0 00 00 */	li r22, 0
/* 804CC004  3A A0 00 00 */	li r21, 0
/* 804CC008  3A 60 00 01 */	li r19, 1
/* 804CC00C  48 00 00 58 */	b lbl_804CC064
lbl_804CC010:
/* 804CC010  7C 1F A8 2E */	lwzx r0, r31, r21
/* 804CC014  2C 00 00 00 */	cmpwi r0, 0
/* 804CC018  41 80 00 10 */	blt lbl_804CC028
/* 804CC01C  7E 60 E8 30 */	slw r0, r19, r29
/* 804CC020  7F 40 00 39 */	and. r0, r26, r0
/* 804CC024  41 82 00 34 */	beq lbl_804CC058
lbl_804CC028:
/* 804CC028  3C 75 00 01 */	addis r3, r21, 1
/* 804CC02C  3C B6 00 01 */	addis r5, r22, 1
/* 804CC030  38 63 39 F4 */	addi r3, r3, 0x39f4
/* 804CC034  80 F4 25 98 */	lwz r7, 0x2598(r20)
/* 804CC038  7C 18 18 2E */	lwzx r0, r24, r3
/* 804CC03C  38 A5 25 58 */	addi r5, r5, 0x2558
/* 804CC040  7E E3 BB 78 */	mr r3, r23
/* 804CC044  7F 66 DB 78 */	mr r6, r27
/* 804CC048  1C 00 48 54 */	mulli r0, r0, 0x4854
/* 804CC04C  7C B8 2A 14 */	add r5, r24, r5
/* 804CC050  7C 98 02 14 */	add r4, r24, r0
/* 804CC054  4B FF FB 35 */	bl bg_item_common_set_draw_tbl
lbl_804CC058:
/* 804CC058  3B BD 00 01 */	addi r29, r29, 1
/* 804CC05C  3A D6 00 10 */	addi r22, r22, 0x10
/* 804CC060  3A B5 00 04 */	addi r21, r21, 4
lbl_804CC064:
/* 804CC064  7C 1D E0 00 */	cmpw r29, r28
/* 804CC068  41 80 FF A8 */	blt lbl_804CC010
lbl_804CC06C:
/* 804CC06C  57 20 07 FF */	clrlwi. r0, r25, 0x1f
/* 804CC070  41 82 00 5C */	beq lbl_804CC0CC
/* 804CC074  3E B8 00 01 */	addis r21, r24, 1
/* 804CC078  3A 60 00 00 */	li r19, 0
/* 804CC07C  3B 20 00 00 */	li r25, 0
/* 804CC080  3B 40 00 00 */	li r26, 0
/* 804CC084  48 00 00 40 */	b lbl_804CC0C4
lbl_804CC088:
/* 804CC088  3C 7A 00 01 */	addis r3, r26, 1
/* 804CC08C  3C B9 00 01 */	addis r5, r25, 1
/* 804CC090  38 63 39 F4 */	addi r3, r3, 0x39f4
/* 804CC094  80 F5 25 98 */	lwz r7, 0x2598(r21)
/* 804CC098  7C 18 18 2E */	lwzx r0, r24, r3
/* 804CC09C  38 A5 25 58 */	addi r5, r5, 0x2558
/* 804CC0A0  7E E3 BB 78 */	mr r3, r23
/* 804CC0A4  7F 66 DB 78 */	mr r6, r27
/* 804CC0A8  1C 00 48 54 */	mulli r0, r0, 0x4854
/* 804CC0AC  7C B8 2A 14 */	add r5, r24, r5
/* 804CC0B0  7C 98 02 14 */	add r4, r24, r0
/* 804CC0B4  4B FF FA D5 */	bl bg_item_common_set_draw_tbl
/* 804CC0B8  3A 73 00 01 */	addi r19, r19, 1
/* 804CC0BC  3B 39 00 10 */	addi r25, r25, 0x10
/* 804CC0C0  3B 5A 00 04 */	addi r26, r26, 4
lbl_804CC0C4:
/* 804CC0C4  7C 13 E0 00 */	cmpw r19, r28
/* 804CC0C8  41 80 FF C0 */	blt lbl_804CC088
lbl_804CC0CC:
/* 804CC0CC  2C 1E 00 00 */	cmpwi r30, 0
/* 804CC0D0  41 82 00 10 */	beq lbl_804CC0E0
/* 804CC0D4  7F 03 C3 78 */	mr r3, r24
/* 804CC0D8  7F 84 E3 78 */	mr r4, r28
/* 804CC0DC  4B FF FB 4D */	bl bg_shin_effect_being_check
lbl_804CC0E0:
/* 804CC0E0  39 61 00 70 */	addi r11, r1, 0x70
/* 804CC0E4  4B BC EE 15 */	bl func_8009AEF8
/* 804CC0E8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804CC0EC  7C 08 03 A6 */	mtlr r0
/* 804CC0F0  38 21 00 70 */	addi r1, r1, 0x70
/* 804CC0F4  4E 80 00 20 */	blr 
