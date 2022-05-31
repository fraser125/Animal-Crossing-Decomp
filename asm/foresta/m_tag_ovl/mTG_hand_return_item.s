lbl_805FBE08:
/* 805FBE08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FBE0C  7C 08 02 A6 */	mflr r0
/* 805FBE10  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FBE14  39 61 00 20 */	addi r11, r1, 0x20
/* 805FBE18  4B A9 F0 B9 */	bl func_8009AED0
/* 805FBE1C  7C 7C 1B 78 */	mr r28, r3
/* 805FBE20  7C 9D 23 78 */	mr r29, r4
/* 805FBE24  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805FBE28  83 E3 09 80 */	lwz r31, 0x980(r3)
/* 805FBE2C  88 1F 03 64 */	lbz r0, 0x364(r31)
/* 805FBE30  A3 DF 02 34 */	lhz r30, 0x234(r31)
/* 805FBE34  28 00 00 1A */	cmplwi r0, 0x1a
/* 805FBE38  41 81 02 E4 */	bgt lbl_805FC11C
/* 805FBE3C  3C 60 80 6D */	lis r3, lit_4628@ha /* 0x806D0ED4@ha */
/* 805FBE40  54 00 10 3A */	slwi r0, r0, 2
/* 805FBE44  38 63 0E D4 */	addi r3, r3, lit_4628@l /* 0x806D0ED4@l */
/* 805FBE48  7C 03 00 2E */	lwzx r0, r3, r0
/* 805FBE4C  7C 09 03 A6 */	mtctr r0
/* 805FBE50  4E 80 04 20 */	bctr 
lbl_805FBE54:
/* 805FBE54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FBE58  88 1F 03 65 */	lbz r0, 0x365(r31)
/* 805FBE5C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805FBE60  3C 63 00 02 */	addis r3, r3, 2
/* 805FBE64  54 04 0D FC */	rlwinm r4, r0, 1, 0x17, 0x1e
/* 805FBE68  80 A3 61 3C */	lwz r5, 0x613c(r3)
/* 805FBE6C  7C 65 22 14 */	add r3, r5, r4
/* 805FBE70  A0 63 00 68 */	lhz r3, 0x68(r3)
/* 805FBE74  28 03 00 00 */	cmplwi r3, 0
/* 805FBE78  40 82 00 10 */	bne lbl_805FBE88
/* 805FBE7C  38 00 00 01 */	li r0, 1
/* 805FBE80  98 1F 03 66 */	stb r0, 0x366(r31)
/* 805FBE84  48 00 02 98 */	b lbl_805FC11C
lbl_805FBE88:
/* 805FBE88  80 1F 03 60 */	lwz r0, 0x360(r31)
/* 805FBE8C  28 00 00 00 */	cmplwi r0, 0
/* 805FBE90  40 82 02 8C */	bne lbl_805FC11C
/* 805FBE94  80 05 00 88 */	lwz r0, 0x88(r5)
/* 805FBE98  7C 00 24 30 */	srw r0, r0, r4
/* 805FBE9C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 805FBEA0  40 82 02 7C */	bne lbl_805FC11C
/* 805FBEA4  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 805FBEA8  2C 00 00 02 */	cmpwi r0, 2
/* 805FBEAC  40 82 00 64 */	bne lbl_805FBF10
/* 805FBEB0  57 C0 C7 3E */	rlwinm r0, r30, 0x18, 0x1c, 0x1f
/* 805FBEB4  2C 00 00 0C */	cmpwi r0, 0xc
/* 805FBEB8  40 82 00 58 */	bne lbl_805FBF10
/* 805FBEBC  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 805FBEC0  2C 00 00 02 */	cmpwi r0, 2
/* 805FBEC4  40 82 00 4C */	bne lbl_805FBF10
/* 805FBEC8  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 805FBECC  2C 00 00 0C */	cmpwi r0, 0xc
/* 805FBED0  40 82 00 40 */	bne lbl_805FBF10
/* 805FBED4  57 C5 EF 3E */	rlwinm r5, r30, 0x1d, 0x1c, 0x1f
/* 805FBED8  54 64 EF 3E */	rlwinm r4, r3, 0x1d, 0x1c, 0x1f
/* 805FBEDC  38 A5 00 01 */	addi r5, r5, 1
/* 805FBEE0  38 04 00 01 */	addi r0, r4, 1
/* 805FBEE4  7C 05 00 00 */	cmpw r5, r0
/* 805FBEE8  40 82 00 28 */	bne lbl_805FBF10
/* 805FBEEC  57 C4 07 7E */	clrlwi r4, r30, 0x1d
/* 805FBEF0  54 60 07 7E */	clrlwi r0, r3, 0x1d
/* 805FBEF4  7C 80 22 14 */	add r4, r0, r4
/* 805FBEF8  38 04 00 02 */	addi r0, r4, 2
/* 805FBEFC  2C 00 00 05 */	cmpwi r0, 5
/* 805FBF00  41 81 00 10 */	bgt lbl_805FBF10
/* 805FBF04  38 00 00 01 */	li r0, 1
/* 805FBF08  98 1F 03 66 */	stb r0, 0x366(r31)
/* 805FBF0C  48 00 02 10 */	b lbl_805FC11C
lbl_805FBF10:
/* 805FBF10  28 1E 2D 28 */	cmplwi r30, 0x2d28
/* 805FBF14  41 80 00 84 */	blt lbl_805FBF98
/* 805FBF18  28 1E 2D 2C */	cmplwi r30, 0x2d2c
/* 805FBF1C  41 81 00 7C */	bgt lbl_805FBF98
/* 805FBF20  28 03 2D 28 */	cmplwi r3, 0x2d28
/* 805FBF24  41 80 00 74 */	blt lbl_805FBF98
/* 805FBF28  28 03 2D 2C */	cmplwi r3, 0x2d2c
/* 805FBF2C  41 81 00 6C */	bgt lbl_805FBF98
/* 805FBF30  28 1E 2D 28 */	cmplwi r30, 0x2d28
/* 805FBF34  38 00 00 00 */	li r0, 0
/* 805FBF38  41 80 00 10 */	blt lbl_805FBF48
/* 805FBF3C  28 1E 2D 2C */	cmplwi r30, 0x2d2c
/* 805FBF40  41 81 00 08 */	bgt lbl_805FBF48
/* 805FBF44  38 00 00 01 */	li r0, 1
lbl_805FBF48:
/* 805FBF48  20 00 00 00 */	subfic r0, r0, 0
/* 805FBF4C  28 03 2D 28 */	cmplwi r3, 0x2d28
/* 805FBF50  7C 80 01 10 */	subfe r4, r0, r0
/* 805FBF54  38 1E D2 D9 */	addi r0, r30, -11559
/* 805FBF58  7C 05 20 38 */	and r5, r0, r4
/* 805FBF5C  38 00 00 00 */	li r0, 0
/* 805FBF60  41 80 00 10 */	blt lbl_805FBF70
/* 805FBF64  28 03 2D 2C */	cmplwi r3, 0x2d2c
/* 805FBF68  41 81 00 08 */	bgt lbl_805FBF70
/* 805FBF6C  38 00 00 01 */	li r0, 1
lbl_805FBF70:
/* 805FBF70  20 80 00 00 */	subfic r4, r0, 0
/* 805FBF74  38 03 D2 D9 */	addi r0, r3, -11559
/* 805FBF78  7C 84 21 10 */	subfe r4, r4, r4
/* 805FBF7C  7C 00 20 38 */	and r0, r0, r4
/* 805FBF80  7C 00 2A 14 */	add r0, r0, r5
/* 805FBF84  2C 00 00 05 */	cmpwi r0, 5
/* 805FBF88  41 81 00 10 */	bgt lbl_805FBF98
/* 805FBF8C  38 00 00 01 */	li r0, 1
/* 805FBF90  98 1F 03 66 */	stb r0, 0x366(r31)
/* 805FBF94  48 00 01 88 */	b lbl_805FC11C
lbl_805FBF98:
/* 805FBF98  28 1E 20 00 */	cmplwi r30, 0x2000
/* 805FBF9C  41 80 01 80 */	blt lbl_805FC11C
/* 805FBFA0  28 1E 20 FF */	cmplwi r30, 0x20ff
/* 805FBFA4  41 81 01 78 */	bgt lbl_805FC11C
/* 805FBFA8  28 03 20 00 */	cmplwi r3, 0x2000
/* 805FBFAC  41 80 01 70 */	blt lbl_805FC11C
/* 805FBFB0  28 03 20 FF */	cmplwi r3, 0x20ff
/* 805FBFB4  41 81 01 68 */	bgt lbl_805FC11C
/* 805FBFB8  38 DE E0 00 */	addi r6, r30, -8192
/* 805FBFBC  38 E3 E0 00 */	addi r7, r3, -8192
/* 805FBFC0  54 C4 D0 0A */	slwi r4, r6, 0x1a
/* 805FBFC4  54 C5 0F FE */	srwi r5, r6, 0x1f
/* 805FBFC8  54 E0 D0 0A */	slwi r0, r7, 0x1a
/* 805FBFCC  54 E3 0F FE */	srwi r3, r7, 0x1f
/* 805FBFD0  7C 85 20 50 */	subf r4, r5, r4
/* 805FBFD4  7C 03 00 50 */	subf r0, r3, r0
/* 805FBFD8  54 84 30 3E */	rotlwi r4, r4, 6
/* 805FBFDC  54 00 30 3E */	rotlwi r0, r0, 6
/* 805FBFE0  7C 84 2A 14 */	add r4, r4, r5
/* 805FBFE4  7C 00 1A 14 */	add r0, r0, r3
/* 805FBFE8  7C 04 00 00 */	cmpw r4, r0
/* 805FBFEC  40 82 01 30 */	bne lbl_805FC11C
/* 805FBFF0  7C E0 36 70 */	srawi r0, r7, 6
/* 805FBFF4  7C 60 01 94 */	addze r3, r0
/* 805FBFF8  7C C0 36 70 */	srawi r0, r6, 6
/* 805FBFFC  7C 00 01 94 */	addze r0, r0
/* 805FC000  7C 60 1A 14 */	add r3, r0, r3
/* 805FC004  38 03 00 02 */	addi r0, r3, 2
/* 805FC008  2C 00 00 04 */	cmpwi r0, 4
/* 805FC00C  41 81 01 10 */	bgt lbl_805FC11C
/* 805FC010  38 00 00 01 */	li r0, 1
/* 805FC014  98 1F 03 66 */	stb r0, 0x366(r31)
/* 805FC018  48 00 01 04 */	b lbl_805FC11C
lbl_805FC01C:
/* 805FC01C  38 00 00 01 */	li r0, 1
/* 805FC020  98 1F 03 66 */	stb r0, 0x366(r31)
/* 805FC024  48 00 00 F8 */	b lbl_805FC11C
lbl_805FC028:
/* 805FC028  7F 83 E3 78 */	mr r3, r28
/* 805FC02C  7F E4 FB 78 */	mr r4, r31
/* 805FC030  4B FF 3F 91 */	bl mTG_get_mail_pointer
/* 805FC034  4B DC 07 6D */	bl mMl_check_not_used_mail
/* 805FC038  2C 03 00 01 */	cmpwi r3, 1
/* 805FC03C  41 82 00 2C */	beq lbl_805FC068
/* 805FC040  28 1E 00 00 */	cmplwi r30, 0
/* 805FC044  41 82 00 D8 */	beq lbl_805FC11C
/* 805FC048  80 9F 03 60 */	lwz r4, 0x360(r31)
/* 805FC04C  7F C3 F3 78 */	mr r3, r30
/* 805FC050  4B FF 62 4D */	bl mTG_check_item_on_mail
/* 805FC054  2C 03 00 00 */	cmpwi r3, 0
/* 805FC058  41 82 00 C4 */	beq lbl_805FC11C
/* 805FC05C  38 00 00 01 */	li r0, 1
/* 805FC060  98 1F 03 66 */	stb r0, 0x366(r31)
/* 805FC064  48 00 00 B8 */	b lbl_805FC11C
lbl_805FC068:
/* 805FC068  38 7F 02 36 */	addi r3, r31, 0x236
/* 805FC06C  4B DC 07 35 */	bl mMl_check_not_used_mail
/* 805FC070  2C 03 00 01 */	cmpwi r3, 1
/* 805FC074  41 82 00 A8 */	beq lbl_805FC11C
/* 805FC078  38 00 00 01 */	li r0, 1
/* 805FC07C  98 1F 03 66 */	stb r0, 0x366(r31)
/* 805FC080  48 00 00 9C */	b lbl_805FC11C
lbl_805FC084:
/* 805FC084  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 805FC088  2C 00 00 02 */	cmpwi r0, 2
/* 805FC08C  40 82 00 90 */	bne lbl_805FC11C
/* 805FC090  57 C0 C7 3E */	rlwinm r0, r30, 0x18, 0x1c, 0x1f
/* 805FC094  2C 00 00 01 */	cmpwi r0, 1
/* 805FC098  40 82 00 84 */	bne lbl_805FC11C
/* 805FC09C  80 1F 03 60 */	lwz r0, 0x360(r31)
/* 805FC0A0  28 00 00 00 */	cmplwi r0, 0
/* 805FC0A4  40 82 00 78 */	bne lbl_805FC11C
/* 805FC0A8  7F C3 F3 78 */	mr r3, r30
/* 805FC0AC  4B FF 72 69 */	bl mTG_itemNo_to_amount
/* 805FC0B0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805FC0B4  3C 80 00 02 */	lis r4, 0x0002 /* 0x0001869F@ha */
/* 805FC0B8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805FC0BC  3C A5 00 02 */	addis r5, r5, 2
/* 805FC0C0  38 04 86 9F */	addi r0, r4, 0x869F /* 0x0001869F@l */
/* 805FC0C4  80 85 61 3C */	lwz r4, 0x613c(r5)
/* 805FC0C8  80 84 00 8C */	lwz r4, 0x8c(r4)
/* 805FC0CC  7C 64 1A 14 */	add r3, r4, r3
/* 805FC0D0  7C 03 00 40 */	cmplw r3, r0
/* 805FC0D4  41 81 00 48 */	bgt lbl_805FC11C
/* 805FC0D8  38 00 00 01 */	li r0, 1
/* 805FC0DC  98 1F 03 66 */	stb r0, 0x366(r31)
/* 805FC0E0  48 00 00 3C */	b lbl_805FC11C
lbl_805FC0E4:
/* 805FC0E4  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 805FC0E8  2C 00 00 02 */	cmpwi r0, 2
/* 805FC0EC  40 82 00 30 */	bne lbl_805FC11C
/* 805FC0F0  57 C0 C7 3E */	rlwinm r0, r30, 0x18, 0x1c, 0x1f
/* 805FC0F4  2C 00 00 02 */	cmpwi r0, 2
/* 805FC0F8  40 82 00 24 */	bne lbl_805FC11C
/* 805FC0FC  80 1F 03 60 */	lwz r0, 0x360(r31)
/* 805FC100  28 00 00 00 */	cmplwi r0, 0
/* 805FC104  40 82 00 18 */	bne lbl_805FC11C
/* 805FC108  38 00 00 01 */	li r0, 1
/* 805FC10C  98 1F 03 66 */	stb r0, 0x366(r31)
/* 805FC110  48 00 00 0C */	b lbl_805FC11C
lbl_805FC114:
/* 805FC114  38 00 00 01 */	li r0, 1
/* 805FC118  98 1F 03 66 */	stb r0, 0x366(r31)
lbl_805FC11C:
/* 805FC11C  88 1F 03 66 */	lbz r0, 0x366(r31)
/* 805FC120  28 00 00 00 */	cmplwi r0, 0
/* 805FC124  40 82 00 64 */	bne lbl_805FC188
/* 805FC128  28 1E 00 00 */	cmplwi r30, 0
/* 805FC12C  41 82 00 5C */	beq lbl_805FC188
/* 805FC130  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FC134  38 00 00 0F */	li r0, 0xf
/* 805FC138  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805FC13C  38 A0 00 00 */	li r5, 0
/* 805FC140  3C 83 00 02 */	addis r4, r3, 2
/* 805FC144  38 60 00 00 */	li r3, 0
/* 805FC148  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 805FC14C  7C 09 03 A6 */	mtctr r0
lbl_805FC150:
/* 805FC150  38 03 00 68 */	addi r0, r3, 0x68
/* 805FC154  7C 04 02 2E */	lhzx r0, r4, r0
/* 805FC158  28 00 00 00 */	cmplwi r0, 0
/* 805FC15C  40 82 00 20 */	bne lbl_805FC17C
/* 805FC160  98 BF 03 65 */	stb r5, 0x365(r31)
/* 805FC164  38 60 00 00 */	li r3, 0
/* 805FC168  38 00 00 01 */	li r0, 1
/* 805FC16C  98 7F 03 64 */	stb r3, 0x364(r31)
/* 805FC170  98 1F 03 66 */	stb r0, 0x366(r31)
/* 805FC174  98 7F 03 67 */	stb r3, 0x367(r31)
/* 805FC178  48 00 00 10 */	b lbl_805FC188
lbl_805FC17C:
/* 805FC17C  38 A5 00 01 */	addi r5, r5, 1
/* 805FC180  38 63 00 02 */	addi r3, r3, 2
/* 805FC184  42 00 FF CC */	bdnz lbl_805FC150
lbl_805FC188:
/* 805FC188  88 1F 03 66 */	lbz r0, 0x366(r31)
/* 805FC18C  28 00 00 01 */	cmplwi r0, 1
/* 805FC190  40 82 00 10 */	bne lbl_805FC1A0
/* 805FC194  7F 83 E3 78 */	mr r3, r28
/* 805FC198  7F A4 EB 78 */	mr r4, r29
/* 805FC19C  4B FF F8 61 */	bl mTG_hand_drop_item
lbl_805FC1A0:
/* 805FC1A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805FC1A4  4B A9 ED 79 */	bl func_8009AF1C
/* 805FC1A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FC1AC  7C 08 03 A6 */	mtlr r0
/* 805FC1B0  38 21 00 20 */	addi r1, r1, 0x20
/* 805FC1B4  4E 80 00 20 */	blr 
