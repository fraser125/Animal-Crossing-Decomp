lbl_804BCED0:
/* 804BCED0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804BCED4  7C 08 02 A6 */	mflr r0
/* 804BCED8  90 01 00 74 */	stw r0, 0x74(r1)
/* 804BCEDC  39 61 00 70 */	addi r11, r1, 0x70
/* 804BCEE0  4B BD DF CD */	bl func_8009AEAC
/* 804BCEE4  7C 98 23 78 */	mr r24, r4
/* 804BCEE8  38 00 00 04 */	li r0, 4
/* 804BCEEC  3C 98 00 01 */	addis r4, r24, 1
/* 804BCEF0  7C 77 1B 78 */	mr r23, r3
/* 804BCEF4  7C B9 2B 78 */	mr r25, r5
/* 804BCEF8  83 64 25 9C */	lwz r27, 0x259c(r4)
/* 804BCEFC  38 A4 39 F4 */	addi r5, r4, 0x39f4
/* 804BCF00  83 84 25 54 */	lwz r28, 0x2554(r4)
/* 804BCF04  38 80 00 00 */	li r4, 0
/* 804BCF08  7C 09 03 A6 */	mtctr r0
lbl_804BCF0C:
/* 804BCF0C  80 05 00 00 */	lwz r0, 0(r5)
/* 804BCF10  38 A5 00 04 */	addi r5, r5, 4
/* 804BCF14  1C 60 48 54 */	mulli r3, r0, 0x4854
/* 804BCF18  38 03 48 50 */	addi r0, r3, 0x4850
/* 804BCF1C  7C 98 03 2E */	sthx r4, r24, r0
/* 804BCF20  42 00 FF EC */	bdnz lbl_804BCF0C
/* 804BCF24  57 3E 07 BF */	clrlwi. r30, r25, 0x1e
/* 804BCF28  41 82 00 10 */	beq lbl_804BCF38
/* 804BCF2C  3C 78 00 01 */	addis r3, r24, 1
/* 804BCF30  38 63 37 D4 */	addi r3, r3, 0x37d4
/* 804BCF34  4B FF B5 F9 */	bl bIT_actor_shin_effect_check
lbl_804BCF38:
/* 804BCF38  38 60 00 00 */	li r3, 0
/* 804BCF3C  38 00 00 04 */	li r0, 4
/* 804BCF40  7C 65 1B 78 */	mr r5, r3
/* 804BCF44  38 E1 00 28 */	addi r7, r1, 0x28
/* 804BCF48  38 C1 00 18 */	addi r6, r1, 0x18
/* 804BCF4C  38 81 00 08 */	addi r4, r1, 8
/* 804BCF50  39 00 FF FE */	li r8, -2
/* 804BCF54  7C 09 03 A6 */	mtctr r0
lbl_804BCF58:
/* 804BCF58  7D 07 19 2E */	stwx r8, r7, r3
/* 804BCF5C  7D 06 19 2E */	stwx r8, r6, r3
/* 804BCF60  7C A4 19 2E */	stwx r5, r4, r3
/* 804BCF64  38 63 00 04 */	addi r3, r3, 4
/* 804BCF68  42 00 FF F0 */	bdnz lbl_804BCF58
/* 804BCF6C  57 20 07 BD */	rlwinm. r0, r25, 0, 0x1e, 0x1e
/* 804BCF70  41 82 01 EC */	beq lbl_804BD15C
/* 804BCF74  3A C1 00 28 */	addi r22, r1, 0x28
/* 804BCF78  3B E1 00 18 */	addi r31, r1, 0x18
/* 804BCF7C  3A 61 00 08 */	addi r19, r1, 8
/* 804BCF80  3B A0 00 00 */	li r29, 0
/* 804BCF84  3A A0 00 00 */	li r21, 0
/* 804BCF88  3A 80 00 01 */	li r20, 1
/* 804BCF8C  48 00 00 44 */	b lbl_804BCFD0
lbl_804BCF90:
/* 804BCF90  7F A3 EB 78 */	mr r3, r29
/* 804BCF94  4B EE A9 F1 */	bl mFI_GetOldItemTableIdx
/* 804BCF98  7C 76 A9 2E */	stwx r3, r22, r21
/* 804BCF9C  7C 16 A8 2E */	lwzx r0, r22, r21
/* 804BCFA0  2C 00 00 00 */	cmpwi r0, 0
/* 804BCFA4  41 80 00 24 */	blt lbl_804BCFC8
/* 804BCFA8  54 03 10 3A */	slwi r3, r0, 2
/* 804BCFAC  3C 63 00 01 */	addis r3, r3, 1
/* 804BCFB0  38 63 39 F4 */	addi r3, r3, 0x39f4
/* 804BCFB4  7C 18 18 2E */	lwzx r0, r24, r3
/* 804BCFB8  7C 1F A9 2E */	stwx r0, r31, r21
/* 804BCFBC  7C 1F A8 2E */	lwzx r0, r31, r21
/* 804BCFC0  54 00 10 3A */	slwi r0, r0, 2
/* 804BCFC4  7E 93 01 2E */	stwx r20, r19, r0
lbl_804BCFC8:
/* 804BCFC8  3B BD 00 01 */	addi r29, r29, 1
/* 804BCFCC  3A B5 00 04 */	addi r21, r21, 4
lbl_804BCFD0:
/* 804BCFD0  7C 1D E0 00 */	cmpw r29, r28
/* 804BCFD4  41 80 FF BC */	blt lbl_804BCF90
/* 804BCFD8  39 21 00 28 */	addi r9, r1, 0x28
/* 804BCFDC  39 60 00 00 */	li r11, 0
/* 804BCFE0  38 60 00 00 */	li r3, 0
/* 804BCFE4  38 80 00 00 */	li r4, 0
/* 804BCFE8  48 00 00 7C */	b lbl_804BD064
lbl_804BCFEC:
/* 804BCFEC  7C 09 20 2E */	lwzx r0, r9, r4
/* 804BCFF0  2C 00 00 00 */	cmpwi r0, 0
/* 804BCFF4  40 80 00 64 */	bge lbl_804BD058
/* 804BCFF8  38 00 00 04 */	li r0, 4
/* 804BCFFC  39 41 00 08 */	addi r10, r1, 8
/* 804BD000  39 80 00 00 */	li r12, 0
/* 804BD004  38 A0 00 00 */	li r5, 0
/* 804BD008  7C 09 03 A6 */	mtctr r0
lbl_804BD00C:
/* 804BD00C  7C 0A 28 2E */	lwzx r0, r10, r5
/* 804BD010  2C 00 00 00 */	cmpwi r0, 0
/* 804BD014  40 82 00 38 */	bne lbl_804BD04C
/* 804BD018  7C D8 1A 14 */	add r6, r24, r3
/* 804BD01C  38 E1 00 18 */	addi r7, r1, 0x18
/* 804BD020  1C 0C 48 54 */	mulli r0, r12, 0x4854
/* 804BD024  39 00 00 01 */	li r8, 1
/* 804BD028  3C C6 00 01 */	addis r6, r6, 1
/* 804BD02C  7D 0A 29 2E */	stwx r8, r10, r5
/* 804BD030  88 A6 25 58 */	lbz r5, 0x2558(r6)
/* 804BD034  7D 18 02 14 */	add r8, r24, r0
/* 804BD038  98 A8 48 52 */	stb r5, 0x4852(r8)
/* 804BD03C  88 06 25 59 */	lbz r0, 0x2559(r6)
/* 804BD040  7D 87 21 2E */	stwx r12, r7, r4
/* 804BD044  98 08 48 53 */	stb r0, 0x4853(r8)
/* 804BD048  48 00 00 10 */	b lbl_804BD058
lbl_804BD04C:
/* 804BD04C  39 8C 00 01 */	addi r12, r12, 1
/* 804BD050  38 A5 00 04 */	addi r5, r5, 4
/* 804BD054  42 00 FF B8 */	bdnz lbl_804BD00C
lbl_804BD058:
/* 804BD058  39 6B 00 01 */	addi r11, r11, 1
/* 804BD05C  38 63 00 10 */	addi r3, r3, 0x10
/* 804BD060  38 84 00 04 */	addi r4, r4, 4
lbl_804BD064:
/* 804BD064  7C 0B E0 00 */	cmpw r11, r28
/* 804BD068  41 80 FF 84 */	blt lbl_804BCFEC
/* 804BD06C  38 E1 00 18 */	addi r7, r1, 0x18
/* 804BD070  38 C1 00 28 */	addi r6, r1, 0x28
/* 804BD074  39 20 00 00 */	li r9, 0
/* 804BD078  38 60 00 00 */	li r3, 0
/* 804BD07C  38 A0 00 01 */	li r5, 1
/* 804BD080  7F 89 03 A6 */	mtctr r28
/* 804BD084  2C 1C 00 00 */	cmpwi r28, 0
/* 804BD088  40 81 00 3C */	ble lbl_804BD0C4
lbl_804BD08C:
/* 804BD08C  7C 06 18 2E */	lwzx r0, r6, r3
/* 804BD090  3D 03 00 01 */	addis r8, r3, 1
/* 804BD094  7C 87 18 2E */	lwzx r4, r7, r3
/* 804BD098  39 08 39 F4 */	addi r8, r8, 0x39f4
/* 804BD09C  2C 00 00 00 */	cmpwi r0, 0
/* 804BD0A0  7C 98 41 2E */	stwx r4, r24, r8
/* 804BD0A4  40 80 00 08 */	bge lbl_804BD0AC
/* 804BD0A8  39 20 00 01 */	li r9, 1
lbl_804BD0AC:
/* 804BD0AC  7C 18 40 2E */	lwzx r0, r24, r8
/* 804BD0B0  38 63 00 04 */	addi r3, r3, 4
/* 804BD0B4  1C 80 48 54 */	mulli r4, r0, 0x4854
/* 804BD0B8  38 04 48 50 */	addi r0, r4, 0x4850
/* 804BD0BC  7C B8 03 2E */	sthx r5, r24, r0
/* 804BD0C0  42 00 FF CC */	bdnz lbl_804BD08C
lbl_804BD0C4:
/* 804BD0C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804BD0C8  2C 09 00 00 */	cmpwi r9, 0
/* 804BD0CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804BD0D0  3C 63 00 03 */	addis r3, r3, 3
/* 804BD0D4  8B 43 85 90 */	lbz r26, -0x7a70(r3)
/* 804BD0D8  40 82 00 0C */	bne lbl_804BD0E4
/* 804BD0DC  28 1A 00 00 */	cmplwi r26, 0
/* 804BD0E0  41 82 00 7C */	beq lbl_804BD15C
lbl_804BD0E4:
/* 804BD0E4  3B E1 00 28 */	addi r31, r1, 0x28
/* 804BD0E8  3E 98 00 01 */	addis r20, r24, 1
/* 804BD0EC  3B A0 00 00 */	li r29, 0
/* 804BD0F0  3A C0 00 00 */	li r22, 0
/* 804BD0F4  3A A0 00 00 */	li r21, 0
/* 804BD0F8  3A 60 00 01 */	li r19, 1
/* 804BD0FC  48 00 00 58 */	b lbl_804BD154
lbl_804BD100:
/* 804BD100  7C 1F A8 2E */	lwzx r0, r31, r21
/* 804BD104  2C 00 00 00 */	cmpwi r0, 0
/* 804BD108  41 80 00 10 */	blt lbl_804BD118
/* 804BD10C  7E 60 E8 30 */	slw r0, r19, r29
/* 804BD110  7F 40 00 39 */	and. r0, r26, r0
/* 804BD114  41 82 00 34 */	beq lbl_804BD148
lbl_804BD118:
/* 804BD118  3C 75 00 01 */	addis r3, r21, 1
/* 804BD11C  3C B6 00 01 */	addis r5, r22, 1
/* 804BD120  38 63 39 F4 */	addi r3, r3, 0x39f4
/* 804BD124  80 F4 25 98 */	lwz r7, 0x2598(r20)
/* 804BD128  7C 18 18 2E */	lwzx r0, r24, r3
/* 804BD12C  38 A5 25 58 */	addi r5, r5, 0x2558
/* 804BD130  7E E3 BB 78 */	mr r3, r23
/* 804BD134  7F 66 DB 78 */	mr r6, r27
/* 804BD138  1C 00 48 54 */	mulli r0, r0, 0x4854
/* 804BD13C  7C B8 2A 14 */	add r5, r24, r5
/* 804BD140  7C 98 02 14 */	add r4, r24, r0
/* 804BD144  4B FF FB 35 */	bl bg_item_common_set_draw_tbl
lbl_804BD148:
/* 804BD148  3B BD 00 01 */	addi r29, r29, 1
/* 804BD14C  3A D6 00 10 */	addi r22, r22, 0x10
/* 804BD150  3A B5 00 04 */	addi r21, r21, 4
lbl_804BD154:
/* 804BD154  7C 1D E0 00 */	cmpw r29, r28
/* 804BD158  41 80 FF A8 */	blt lbl_804BD100
lbl_804BD15C:
/* 804BD15C  57 20 07 FF */	clrlwi. r0, r25, 0x1f
/* 804BD160  41 82 00 5C */	beq lbl_804BD1BC
/* 804BD164  3E B8 00 01 */	addis r21, r24, 1
/* 804BD168  3A 60 00 00 */	li r19, 0
/* 804BD16C  3B 20 00 00 */	li r25, 0
/* 804BD170  3B 40 00 00 */	li r26, 0
/* 804BD174  48 00 00 40 */	b lbl_804BD1B4
lbl_804BD178:
/* 804BD178  3C 7A 00 01 */	addis r3, r26, 1
/* 804BD17C  3C B9 00 01 */	addis r5, r25, 1
/* 804BD180  38 63 39 F4 */	addi r3, r3, 0x39f4
/* 804BD184  80 F5 25 98 */	lwz r7, 0x2598(r21)
/* 804BD188  7C 18 18 2E */	lwzx r0, r24, r3
/* 804BD18C  38 A5 25 58 */	addi r5, r5, 0x2558
/* 804BD190  7E E3 BB 78 */	mr r3, r23
/* 804BD194  7F 66 DB 78 */	mr r6, r27
/* 804BD198  1C 00 48 54 */	mulli r0, r0, 0x4854
/* 804BD19C  7C B8 2A 14 */	add r5, r24, r5
/* 804BD1A0  7C 98 02 14 */	add r4, r24, r0
/* 804BD1A4  4B FF FA D5 */	bl bg_item_common_set_draw_tbl
/* 804BD1A8  3A 73 00 01 */	addi r19, r19, 1
/* 804BD1AC  3B 39 00 10 */	addi r25, r25, 0x10
/* 804BD1B0  3B 5A 00 04 */	addi r26, r26, 4
lbl_804BD1B4:
/* 804BD1B4  7C 13 E0 00 */	cmpw r19, r28
/* 804BD1B8  41 80 FF C0 */	blt lbl_804BD178
lbl_804BD1BC:
/* 804BD1BC  2C 1E 00 00 */	cmpwi r30, 0
/* 804BD1C0  41 82 00 10 */	beq lbl_804BD1D0
/* 804BD1C4  7F 03 C3 78 */	mr r3, r24
/* 804BD1C8  7F 84 E3 78 */	mr r4, r28
/* 804BD1CC  4B FF FB 4D */	bl bg_shin_effect_being_check
lbl_804BD1D0:
/* 804BD1D0  39 61 00 70 */	addi r11, r1, 0x70
/* 804BD1D4  4B BD DD 25 */	bl func_8009AEF8
/* 804BD1D8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804BD1DC  7C 08 03 A6 */	mtlr r0
/* 804BD1E0  38 21 00 70 */	addi r1, r1, 0x70
/* 804BD1E4  4E 80 00 20 */	blr 
