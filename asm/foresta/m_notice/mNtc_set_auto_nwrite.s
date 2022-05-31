lbl_803CAF00:
/* 803CAF00  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 803CAF04  7C 08 02 A6 */	mflr r0
/* 803CAF08  90 01 01 44 */	stw r0, 0x144(r1)
/* 803CAF0C  39 61 01 40 */	addi r11, r1, 0x140
/* 803CAF10  4B CC FF A9 */	bl func_8009AEB8
/* 803CAF14  39 20 00 00 */	li r9, 0
/* 803CAF18  38 00 00 06 */	li r0, 6
/* 803CAF1C  7C 7B 1B 78 */	mr r27, r3
/* 803CAF20  99 21 01 10 */	stb r9, 0x110(r1)
/* 803CAF24  7C BC 2B 78 */	mr r28, r5
/* 803CAF28  7C FD 3B 78 */	mr r29, r7
/* 803CAF2C  99 21 01 11 */	stb r9, 0x111(r1)
/* 803CAF30  7D 1E 43 78 */	mr r30, r8
/* 803CAF34  7E E4 DA 14 */	add r23, r4, r27
/* 803CAF38  54 78 08 3C */	slwi r24, r3, 1
/* 803CAF3C  98 01 01 12 */	stb r0, 0x112(r1)
/* 803CAF40  54 D9 10 3A */	slwi r25, r6, 2
/* 803CAF44  54 DA 08 3C */	slwi r26, r6, 1
/* 803CAF48  3B E0 00 00 */	li r31, 0
/* 803CAF4C  48 00 01 28 */	b lbl_803CB074
lbl_803CAF50:
/* 803CAF50  88 17 00 00 */	lbz r0, 0(r23)
/* 803CAF54  28 00 00 FF */	cmplwi r0, 0xff
/* 803CAF58  40 82 00 88 */	bne lbl_803CAFE0
/* 803CAF5C  7C 1C C2 2E */	lhzx r0, r28, r24
/* 803CAF60  28 00 FF FF */	cmplwi r0, 0xffff
/* 803CAF64  40 82 00 7C */	bne lbl_803CAFE0
/* 803CAF68  7F FD CA 14 */	add r31, r29, r25
/* 803CAF6C  7C DE D2 2E */	lhzx r6, r30, r26
/* 803CAF70  88 BF 00 03 */	lbz r5, 3(r31)
/* 803CAF74  38 00 00 07 */	li r0, 7
/* 803CAF78  A0 7F 00 00 */	lhz r3, 0(r31)
/* 803CAF7C  54 C4 C6 3E */	rlwinm r4, r6, 0x18, 0x18, 0x1f
/* 803CAF80  7C 05 03 D6 */	divw r0, r5, r0
/* 803CAF84  54 C5 06 3E */	clrlwi r5, r6, 0x18
/* 803CAF88  B0 61 01 16 */	sth r3, 0x116(r1)
/* 803CAF8C  98 81 01 15 */	stb r4, 0x115(r1)
/* 803CAF90  98 C1 01 13 */	stb r6, 0x113(r1)
/* 803CAF94  54 16 07 BE */	clrlwi r22, r0, 0x1e
/* 803CAF98  48 03 C2 31 */	bl lbRTC_Week
/* 803CAF9C  98 61 01 14 */	stb r3, 0x114(r1)
/* 803CAFA0  38 61 00 08 */	addi r3, r1, 8
/* 803CAFA4  80 1F 00 00 */	lwz r0, 0(r31)
/* 803CAFA8  90 01 00 08 */	stw r0, 8(r1)
/* 803CAFAC  4B FF F9 3D */	bl mNtc_set_auto_nwrite_fishing_string
/* 803CAFB0  38 61 00 30 */	addi r3, r1, 0x30
/* 803CAFB4  38 81 00 0C */	addi r4, r1, 0xc
/* 803CAFB8  38 A1 00 10 */	addi r5, r1, 0x10
/* 803CAFBC  38 C1 00 50 */	addi r6, r1, 0x50
/* 803CAFC0  38 F6 02 42 */	addi r7, r22, 0x242
/* 803CAFC4  3B E0 00 00 */	li r31, 0
/* 803CAFC8  4B FE 77 6D */	bl mHandbill_Load_HandbillFromRom
/* 803CAFCC  38 61 00 50 */	addi r3, r1, 0x50
/* 803CAFD0  4B FF F2 61 */	bl mNtc_notice_write
/* 803CAFD4  3B 5A 00 02 */	addi r26, r26, 2
/* 803CAFD8  3B 39 00 04 */	addi r25, r25, 4
/* 803CAFDC  48 00 00 8C */	b lbl_803CB068
lbl_803CAFE0:
/* 803CAFE0  4B FF F8 AD */	bl mNtc_set_auto_nwrite_common_string
/* 803CAFE4  7C 7C C2 2E */	lhzx r3, r28, r24
/* 803CAFE8  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 803CAFEC  7C 00 18 40 */	cmplw r0, r3
/* 803CAFF0  41 82 00 0C */	beq lbl_803CAFFC
/* 803CAFF4  4B FF F9 ED */	bl mNtc_set_auto_nwrite_string
/* 803CAFF8  7F FC C2 2E */	lhzx r31, r28, r24
lbl_803CAFFC:
/* 803CAFFC  88 B7 00 00 */	lbz r5, 0(r23)
/* 803CB000  3C 80 81 17 */	lis r4, mNtc_auto_nwrite_data@ha /* 0x8116B2B8@ha */
/* 803CB004  38 04 B2 B8 */	addi r0, r4, mNtc_auto_nwrite_data@l /* 0x8116B2B8@l */
/* 803CB008  7C 7C C2 2E */	lhzx r3, r28, r24
/* 803CB00C  54 A4 10 3A */	slwi r4, r5, 2
/* 803CB010  7C 80 22 14 */	add r4, r0, r4
/* 803CB014  B0 61 01 16 */	sth r3, 0x116(r1)
/* 803CB018  A0 04 00 02 */	lhz r0, 2(r4)
/* 803CB01C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 803CB020  98 01 01 13 */	stb r0, 0x113(r1)
/* 803CB024  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 803CB028  98 81 01 15 */	stb r4, 0x115(r1)
/* 803CB02C  48 03 C1 9D */	bl lbRTC_Week
/* 803CB030  98 61 01 14 */	stb r3, 0x114(r1)
/* 803CB034  3C 60 81 17 */	lis r3, mNtc_auto_nwrite_data@ha /* 0x8116B2B8@ha */
/* 803CB038  38 E3 B2 B8 */	addi r7, r3, mNtc_auto_nwrite_data@l /* 0x8116B2B8@l */
/* 803CB03C  38 61 00 30 */	addi r3, r1, 0x30
/* 803CB040  88 17 00 00 */	lbz r0, 0(r23)
/* 803CB044  38 81 00 0C */	addi r4, r1, 0xc
/* 803CB048  38 A1 00 10 */	addi r5, r1, 0x10
/* 803CB04C  38 C1 00 50 */	addi r6, r1, 0x50
/* 803CB050  54 00 10 3A */	slwi r0, r0, 2
/* 803CB054  7C E7 02 2E */	lhzx r7, r7, r0
/* 803CB058  38 E7 01 A4 */	addi r7, r7, 0x1a4
/* 803CB05C  4B FE 76 D9 */	bl mHandbill_Load_HandbillFromRom
/* 803CB060  38 61 00 50 */	addi r3, r1, 0x50
/* 803CB064  4B FF F1 CD */	bl mNtc_notice_write
lbl_803CB068:
/* 803CB068  3B 7B 00 01 */	addi r27, r27, 1
/* 803CB06C  3B 18 00 02 */	addi r24, r24, 2
/* 803CB070  3A F7 00 01 */	addi r23, r23, 1
lbl_803CB074:
/* 803CB074  2C 1B 00 05 */	cmpwi r27, 5
/* 803CB078  41 80 FE D8 */	blt lbl_803CAF50
/* 803CB07C  39 61 01 40 */	addi r11, r1, 0x140
/* 803CB080  4B CC FE 85 */	bl func_8009AF04
/* 803CB084  80 01 01 44 */	lwz r0, 0x144(r1)
/* 803CB088  7C 08 03 A6 */	mtlr r0
/* 803CB08C  38 21 01 40 */	addi r1, r1, 0x140
/* 803CB090  4E 80 00 20 */	blr 
