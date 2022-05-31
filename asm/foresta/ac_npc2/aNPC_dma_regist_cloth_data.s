lbl_8053B0F8:
/* 8053B0F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053B0FC  7C 08 02 A6 */	mflr r0
/* 8053B100  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053B104  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8053B108  28 00 FE 20 */	cmplwi r0, 0xfe20
/* 8053B10C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053B110  93 C1 00 08 */	stw r30, 8(r1)
/* 8053B114  7C 7E 1B 78 */	mr r30, r3
/* 8053B118  41 82 00 9C */	beq lbl_8053B1B4
/* 8053B11C  3C 60 81 1F */	lis r3, data_811EBD30@ha /* 0x811EBD30@ha */
/* 8053B120  7F C4 F3 78 */	mr r4, r30
/* 8053B124  38 63 BD 30 */	addi r3, r3, data_811EBD30@l /* 0x811EBD30@l */
/* 8053B128  80 63 00 00 */	lwz r3, 0(r3)
/* 8053B12C  3B E3 01 74 */	addi r31, r3, 0x174
/* 8053B130  7F E3 FB 78 */	mr r3, r31
/* 8053B134  4B FF FE 31 */	bl aNPC_get_same_cloth_data_area
/* 8053B138  2C 03 FF FF */	cmpwi r3, -1
/* 8053B13C  40 82 00 78 */	bne lbl_8053B1B4
/* 8053B140  7F E3 FB 78 */	mr r3, r31
/* 8053B144  4B FF FE E5 */	bl aNPC_get_new_cloth_data_area
/* 8053B148  2C 03 FF FF */	cmpwi r3, -1
/* 8053B14C  40 82 00 0C */	bne lbl_8053B158
/* 8053B150  7F E3 FB 78 */	mr r3, r31
/* 8053B154  4B FF FF 15 */	bl aNPC_get_no_use_cloth_data_area
lbl_8053B158:
/* 8053B158  2C 03 FF FF */	cmpwi r3, -1
/* 8053B15C  41 82 00 58 */	beq lbl_8053B1B4
/* 8053B160  1C 63 00 C0 */	mulli r3, r3, 0xc0
/* 8053B164  38 80 00 01 */	li r4, 1
/* 8053B168  38 00 00 00 */	li r0, 0
/* 8053B16C  7F FF 1A 14 */	add r31, r31, r3
/* 8053B170  98 9F 00 00 */	stb r4, 0(r31)
/* 8053B174  7F E3 FB 78 */	mr r3, r31
/* 8053B178  98 9F 00 01 */	stb r4, 1(r31)
/* 8053B17C  98 1F 00 06 */	stb r0, 6(r31)
/* 8053B180  B3 DF 00 04 */	sth r30, 4(r31)
/* 8053B184  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8053B188  4B FF FB 8D */	bl aNPC_getP_cloth_tex_rom
/* 8053B18C  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8053B190  38 80 00 01 */	li r4, 1
/* 8053B194  38 00 00 00 */	li r0, 0
/* 8053B198  7F E3 FB 78 */	mr r3, r31
/* 8053B19C  98 9F 00 63 */	stb r4, 0x63(r31)
/* 8053B1A0  90 1F 00 78 */	stw r0, 0x78(r31)
/* 8053B1A4  4B FF FB D5 */	bl aNPC_getP_cloth_pal_rom
/* 8053B1A8  90 7F 00 70 */	stw r3, 0x70(r31)
/* 8053B1AC  38 00 00 01 */	li r0, 1
/* 8053B1B0  98 1F 00 BF */	stb r0, 0xbf(r31)
lbl_8053B1B4:
/* 8053B1B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053B1B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053B1BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053B1C0  7C 08 03 A6 */	mtlr r0
/* 8053B1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8053B1C8  4E 80 00 20 */	blr 
