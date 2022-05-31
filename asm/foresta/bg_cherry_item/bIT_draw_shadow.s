lbl_804AFDE0:
/* 804AFDE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804AFDE4  7C 08 02 A6 */	mflr r0
/* 804AFDE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804AFDEC  39 61 00 30 */	addi r11, r1, 0x30
/* 804AFDF0  4B BE B0 D9 */	bl func_8009AEC8
/* 804AFDF4  83 E3 00 00 */	lwz r31, 0(r3)
/* 804AFDF8  7C 7B 1B 78 */	mr r27, r3
/* 804AFDFC  80 64 00 00 */	lwz r3, 0(r4)
/* 804AFE00  7C 9C 23 78 */	mr r28, r4
/* 804AFE04  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 804AFE08  7C BD 2B 78 */	mr r29, r5
/* 804AFE0C  54 63 20 36 */	slwi r3, r3, 4
/* 804AFE10  7C 63 00 51 */	subf. r3, r3, r0
/* 804AFE14  90 7F 02 D4 */	stw r3, 0x2d4(r31)
/* 804AFE18  7C 7A 1B 78 */	mr r26, r3
/* 804AFE1C  41 82 00 30 */	beq lbl_804AFE4C
/* 804AFE20  C0 3B 1D 80 */	lfs f1, 0x1d80(r27)
/* 804AFE24  C0 1C 00 08 */	lfs f0, 8(r28)
/* 804AFE28  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 804AFE2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AFE30  80 BC 00 00 */	lwz r5, 0(r28)
/* 804AFE34  80 DC 00 04 */	lwz r6, 4(r28)
/* 804AFE38  FC 00 00 1E */	fctiwz f0, f0
/* 804AFE3C  D8 01 00 08 */	stfd f0, 8(r1)
/* 804AFE40  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 804AFE44  4B FF FF 49 */	bl func_804AFD8C
/* 804AFE48  48 00 00 08 */	b lbl_804AFE50
lbl_804AFE4C:
/* 804AFE4C  83 5C 00 0C */	lwz r26, 0xc(r28)
lbl_804AFE50:
/* 804AFE50  83 DF 03 00 */	lwz r30, 0x300(r31)
/* 804AFE54  3C 00 E7 00 */	lis r0, 0xe700
/* 804AFE58  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804AFE5C  38 80 00 00 */	li r4, 0
/* 804AFE60  90 1E 00 00 */	stw r0, 0(r30)
/* 804AFE64  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804AFE68  7F E3 FB 78 */	mr r3, r31
/* 804AFE6C  90 9E 00 04 */	stw r4, 4(r30)
/* 804AFE70  90 1E 00 08 */	stw r0, 8(r30)
/* 804AFE74  4B F5 D5 61 */	bl _Matrix_to_Mtx_new
/* 804AFE78  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 804AFE7C  90 7E 00 0C */	stw r3, 0xc(r30)
/* 804AFE80  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 804AFE84  2C 1D 00 01 */	cmpwi r29, 1
/* 804AFE88  90 1E 00 10 */	stw r0, 0x10(r30)
/* 804AFE8C  93 5E 00 14 */	stw r26, 0x14(r30)
/* 804AFE90  88 9B 1D 84 */	lbz r4, 0x1d84(r27)
/* 804AFE94  88 1B 1D 6B */	lbz r0, 0x1d6b(r27)
/* 804AFE98  88 BB 1D 6A */	lbz r5, 0x1d6a(r27)
/* 804AFE9C  64 83 FA 00 */	oris r3, r4, 0xfa00
/* 804AFEA0  88 DB 1D 6C */	lbz r6, 0x1d6c(r27)
/* 804AFEA4  54 00 80 1E */	slwi r0, r0, 0x10
/* 804AFEA8  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 804AFEAC  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 804AFEB0  90 7E 00 18 */	stw r3, 0x18(r30)
/* 804AFEB4  7C 80 03 78 */	or r0, r4, r0
/* 804AFEB8  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 804AFEBC  3B DE 00 20 */	addi r30, r30, 0x20
/* 804AFEC0  40 82 00 1C */	bne lbl_804AFEDC
/* 804AFEC4  3C 00 D9 00 */	lis r0, 0xd900
/* 804AFEC8  3C 60 00 21 */	lis r3, 0x0021 /* 0x00210455@ha */
/* 804AFECC  90 1E 00 00 */	stw r0, 0(r30)
/* 804AFED0  38 03 04 55 */	addi r0, r3, 0x0455 /* 0x00210455@l */
/* 804AFED4  90 1E 00 04 */	stw r0, 4(r30)
/* 804AFED8  3B DE 00 08 */	addi r30, r30, 8
lbl_804AFEDC:
/* 804AFEDC  3C 80 DE 00 */	lis r4, 0xde00
/* 804AFEE0  2C 1D 00 01 */	cmpwi r29, 1
/* 804AFEE4  90 9E 00 00 */	stw r4, 0(r30)
/* 804AFEE8  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 804AFEEC  90 1E 00 04 */	stw r0, 4(r30)
/* 804AFEF0  3B DE 00 08 */	addi r30, r30, 8
/* 804AFEF4  40 82 00 28 */	bne lbl_804AFF1C
/* 804AFEF8  3C 00 D9 00 */	lis r0, 0xd900
/* 804AFEFC  3C 60 00 21 */	lis r3, 0x0021 /* 0x00210445@ha */
/* 804AFF00  90 1E 00 00 */	stw r0, 0(r30)
/* 804AFF04  38 03 04 45 */	addi r0, r3, 0x0445 /* 0x00210445@l */
/* 804AFF08  90 1E 00 04 */	stw r0, 4(r30)
/* 804AFF0C  90 9E 00 08 */	stw r4, 8(r30)
/* 804AFF10  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 804AFF14  90 1E 00 0C */	stw r0, 0xc(r30)
/* 804AFF18  3B DE 00 10 */	addi r30, r30, 0x10
lbl_804AFF1C:
/* 804AFF1C  3C 60 DA 00 */	lis r3, 0xDA00 /* 0xD9FFFFAF@ha */
/* 804AFF20  7F C4 F3 78 */	mr r4, r30
/* 804AFF24  38 63 FF AF */	addi r3, r3, 0xFFAF /* 0xD9FFFFAF@l */
/* 804AFF28  38 00 00 00 */	li r0, 0
/* 804AFF2C  90 7E 00 00 */	stw r3, 0(r30)
/* 804AFF30  3B DE 00 08 */	addi r30, r30, 8
/* 804AFF34  90 04 00 04 */	stw r0, 4(r4)
/* 804AFF38  93 DF 03 00 */	stw r30, 0x300(r31)
/* 804AFF3C  39 61 00 30 */	addi r11, r1, 0x30
/* 804AFF40  4B BE AF D5 */	bl func_8009AF14
/* 804AFF44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804AFF48  7C 08 03 A6 */	mtlr r0
/* 804AFF4C  38 21 00 30 */	addi r1, r1, 0x30
/* 804AFF50  4E 80 00 20 */	blr 
