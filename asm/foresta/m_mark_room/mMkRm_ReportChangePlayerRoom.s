lbl_803BECDC:
/* 803BECDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BECE0  7C 08 02 A6 */	mflr r0
/* 803BECE4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803BECE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BECEC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803BECF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BECF4  80 83 00 14 */	lwz r4, 0x14(r3)
/* 803BECF8  3C 63 00 02 */	addis r3, r3, 2
/* 803BECFC  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 803BED00  2C 04 00 2F */	cmpwi r4, 0x2f
/* 803BED04  41 82 00 A8 */	beq lbl_803BEDAC
/* 803BED08  38 04 FF D6 */	addi r0, r4, -42
/* 803BED0C  28 00 00 02 */	cmplwi r0, 2
/* 803BED10  40 81 00 9C */	ble lbl_803BEDAC
/* 803BED14  2C 04 00 2D */	cmpwi r4, 0x2d
/* 803BED18  40 82 00 08 */	bne lbl_803BED20
/* 803BED1C  48 00 00 90 */	b lbl_803BEDAC
lbl_803BED20:
/* 803BED20  2C 03 00 04 */	cmpwi r3, 4
/* 803BED24  40 80 00 88 */	bge lbl_803BEDAC
/* 803BED28  4B FF 48 91 */	bl mHS_get_arrange_idx
/* 803BED2C  7C 7F 1B 78 */	mr r31, r3
/* 803BED30  4B FE 5F 9D */	bl mFI_GetFieldId
/* 803BED34  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 803BED38  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803BED3C  2C 00 60 00 */	cmpwi r0, 0x6000
/* 803BED40  40 82 00 6C */	bne lbl_803BEDAC
/* 803BED44  38 03 A0 00 */	addi r0, r3, -24576
/* 803BED48  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803BED4C  7C 00 F8 00 */	cmpw r0, r31
/* 803BED50  40 82 00 5C */	bne lbl_803BEDAC
/* 803BED54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803BED58  38 80 00 01 */	li r4, 1
/* 803BED5C  38 C3 85 38 */	addi r6, r3, common_data@l /* 0x81138538@l */
/* 803BED60  3C A6 00 02 */	addis r5, r6, 2
/* 803BED64  1D 3F 26 B0 */	mulli r9, r31, 0x26b0
/* 803BED68  80 65 61 24 */	lwz r3, 0x6124(r5)
/* 803BED6C  81 05 61 20 */	lwz r8, 0x6120(r5)
/* 803BED70  3C 06 00 01 */	addis r0, r6, 1
/* 803BED74  90 61 00 0C */	stw r3, 0xc(r1)
/* 803BED78  7C 66 4A 14 */	add r3, r6, r9
/* 803BED7C  3C E3 00 01 */	addis r7, r3, 1
/* 803BED80  A0 A1 00 0E */	lhz r5, 0xe(r1)
/* 803BED84  88 C7 9D 0C */	lbz r6, -0x62f4(r7)
/* 803BED88  50 86 3E 30 */	rlwimi r6, r4, 7, 0x18, 0x18
/* 803BED8C  91 01 00 08 */	stw r8, 8(r1)
/* 803BED90  7C 80 4A 14 */	add r4, r0, r9
/* 803BED94  88 61 00 0D */	lbz r3, 0xd(r1)
/* 803BED98  98 C7 9D 0C */	stb r6, -0x62f4(r7)
/* 803BED9C  88 01 00 0B */	lbz r0, 0xb(r1)
/* 803BEDA0  B0 A4 9D 04 */	sth r5, -0x62fc(r4)
/* 803BEDA4  98 64 9D 06 */	stb r3, -0x62fa(r4)
/* 803BEDA8  98 04 9D 07 */	stb r0, -0x62f9(r4)
lbl_803BEDAC:
/* 803BEDAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BEDB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BEDB4  7C 08 03 A6 */	mtlr r0
/* 803BEDB8  38 21 00 20 */	addi r1, r1, 0x20
/* 803BEDBC  4E 80 00 20 */	blr 
