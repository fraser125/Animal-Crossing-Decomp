lbl_804BEC5C:
/* 804BEC5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BEC60  7C 08 02 A6 */	mflr r0
/* 804BEC64  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BEC68  39 61 00 30 */	addi r11, r1, 0x30
/* 804BEC6C  4B BD C2 5D */	bl func_8009AEC8
/* 804BEC70  83 E3 00 00 */	lwz r31, 0(r3)
/* 804BEC74  7C 7B 1B 78 */	mr r27, r3
/* 804BEC78  80 64 00 00 */	lwz r3, 0(r4)
/* 804BEC7C  7C 9C 23 78 */	mr r28, r4
/* 804BEC80  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 804BEC84  7C BD 2B 78 */	mr r29, r5
/* 804BEC88  54 63 20 36 */	slwi r3, r3, 4
/* 804BEC8C  7C 63 00 51 */	subf. r3, r3, r0
/* 804BEC90  90 7F 02 D4 */	stw r3, 0x2d4(r31)
/* 804BEC94  7C 7A 1B 78 */	mr r26, r3
/* 804BEC98  41 82 00 30 */	beq lbl_804BECC8
/* 804BEC9C  C0 3B 1D 80 */	lfs f1, 0x1d80(r27)
/* 804BECA0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 804BECA4  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 804BECA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804BECAC  80 BC 00 00 */	lwz r5, 0(r28)
/* 804BECB0  80 DC 00 04 */	lwz r6, 4(r28)
/* 804BECB4  FC 00 00 1E */	fctiwz f0, f0
/* 804BECB8  D8 01 00 08 */	stfd f0, 8(r1)
/* 804BECBC  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 804BECC0  4B FF FF 49 */	bl func_804BEC08
/* 804BECC4  48 00 00 08 */	b lbl_804BECCC
lbl_804BECC8:
/* 804BECC8  83 5C 00 0C */	lwz r26, 0xc(r28)
lbl_804BECCC:
/* 804BECCC  83 DF 03 00 */	lwz r30, 0x300(r31)
/* 804BECD0  3C 00 E7 00 */	lis r0, 0xe700
/* 804BECD4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804BECD8  38 80 00 00 */	li r4, 0
/* 804BECDC  90 1E 00 00 */	stw r0, 0(r30)
/* 804BECE0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804BECE4  7F E3 FB 78 */	mr r3, r31
/* 804BECE8  90 9E 00 04 */	stw r4, 4(r30)
/* 804BECEC  90 1E 00 08 */	stw r0, 8(r30)
/* 804BECF0  4B F4 E6 E5 */	bl _Matrix_to_Mtx_new
/* 804BECF4  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 804BECF8  90 7E 00 0C */	stw r3, 0xc(r30)
/* 804BECFC  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 804BED00  2C 1D 00 01 */	cmpwi r29, 1
/* 804BED04  90 1E 00 10 */	stw r0, 0x10(r30)
/* 804BED08  93 5E 00 14 */	stw r26, 0x14(r30)
/* 804BED0C  88 9B 1D 84 */	lbz r4, 0x1d84(r27)
/* 804BED10  88 1B 1D 6B */	lbz r0, 0x1d6b(r27)
/* 804BED14  88 BB 1D 6A */	lbz r5, 0x1d6a(r27)
/* 804BED18  64 83 FA 00 */	oris r3, r4, 0xfa00
/* 804BED1C  88 DB 1D 6C */	lbz r6, 0x1d6c(r27)
/* 804BED20  54 00 80 1E */	slwi r0, r0, 0x10
/* 804BED24  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 804BED28  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 804BED2C  90 7E 00 18 */	stw r3, 0x18(r30)
/* 804BED30  7C 80 03 78 */	or r0, r4, r0
/* 804BED34  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 804BED38  3B DE 00 20 */	addi r30, r30, 0x20
/* 804BED3C  40 82 00 1C */	bne lbl_804BED58
/* 804BED40  3C 00 D9 00 */	lis r0, 0xd900
/* 804BED44  3C 60 00 21 */	lis r3, 0x0021 /* 0x00210455@ha */
/* 804BED48  90 1E 00 00 */	stw r0, 0(r30)
/* 804BED4C  38 03 04 55 */	addi r0, r3, 0x0455 /* 0x00210455@l */
/* 804BED50  90 1E 00 04 */	stw r0, 4(r30)
/* 804BED54  3B DE 00 08 */	addi r30, r30, 8
lbl_804BED58:
/* 804BED58  3C 80 DE 00 */	lis r4, 0xde00
/* 804BED5C  2C 1D 00 01 */	cmpwi r29, 1
/* 804BED60  90 9E 00 00 */	stw r4, 0(r30)
/* 804BED64  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 804BED68  90 1E 00 04 */	stw r0, 4(r30)
/* 804BED6C  3B DE 00 08 */	addi r30, r30, 8
/* 804BED70  40 82 00 28 */	bne lbl_804BED98
/* 804BED74  3C 00 D9 00 */	lis r0, 0xd900
/* 804BED78  3C 60 00 21 */	lis r3, 0x0021 /* 0x00210445@ha */
/* 804BED7C  90 1E 00 00 */	stw r0, 0(r30)
/* 804BED80  38 03 04 45 */	addi r0, r3, 0x0445 /* 0x00210445@l */
/* 804BED84  90 1E 00 04 */	stw r0, 4(r30)
/* 804BED88  90 9E 00 08 */	stw r4, 8(r30)
/* 804BED8C  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 804BED90  90 1E 00 0C */	stw r0, 0xc(r30)
/* 804BED94  3B DE 00 10 */	addi r30, r30, 0x10
lbl_804BED98:
/* 804BED98  3C 60 DA 00 */	lis r3, 0xDA00 /* 0xD9FFFFAF@ha */
/* 804BED9C  7F C4 F3 78 */	mr r4, r30
/* 804BEDA0  38 63 FF AF */	addi r3, r3, 0xFFAF /* 0xD9FFFFAF@l */
/* 804BEDA4  38 00 00 00 */	li r0, 0
/* 804BEDA8  90 7E 00 00 */	stw r3, 0(r30)
/* 804BEDAC  3B DE 00 08 */	addi r30, r30, 8
/* 804BEDB0  90 04 00 04 */	stw r0, 4(r4)
/* 804BEDB4  93 DF 03 00 */	stw r30, 0x300(r31)
/* 804BEDB8  39 61 00 30 */	addi r11, r1, 0x30
/* 804BEDBC  4B BD C1 59 */	bl func_8009AF14
/* 804BEDC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BEDC4  7C 08 03 A6 */	mtlr r0
/* 804BEDC8  38 21 00 30 */	addi r1, r1, 0x30
/* 804BEDCC  4E 80 00 20 */	blr 
