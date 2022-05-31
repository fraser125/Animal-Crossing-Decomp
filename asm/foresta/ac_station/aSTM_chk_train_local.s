lbl_805BBD84:
/* 805BBD84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BBD88  7C 08 02 A6 */	mflr r0
/* 805BBD8C  38 A0 00 01 */	li r5, 1
/* 805BBD90  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BBD94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BBD98  7C 7F 1B 78 */	mr r31, r3
/* 805BBD9C  38 64 1D A8 */	addi r3, r4, 0x1da8
/* 805BBDA0  38 80 58 0B */	li r4, 0x580b
/* 805BBDA4  4B DB 9F 9D */	bl Actor_info_fgName_search
/* 805BBDA8  28 03 00 00 */	cmplwi r3, 0
/* 805BBDAC  41 82 00 28 */	beq lbl_805BBDD4
/* 805BBDB0  80 03 02 B4 */	lwz r0, 0x2b4(r3)
/* 805BBDB4  2C 00 00 05 */	cmpwi r0, 5
/* 805BBDB8  41 81 00 1C */	bgt lbl_805BBDD4
/* 805BBDBC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BBDC0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805BBDC4  3C 84 00 03 */	addis r4, r4, 3
/* 805BBDC8  88 04 88 44 */	lbz r0, -0x77bc(r4)
/* 805BBDCC  28 00 00 05 */	cmplwi r0, 5
/* 805BBDD0  40 81 00 28 */	ble lbl_805BBDF8
lbl_805BBDD4:
/* 805BBDD4  38 00 00 00 */	li r0, 0
/* 805BBDD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BBDDC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BBDE0  90 1F 09 98 */	stw r0, 0x998(r31)
/* 805BBDE4  3C 63 00 03 */	addis r3, r3, 3
/* 805BBDE8  38 00 00 04 */	li r0, 4
/* 805BBDEC  98 03 88 3E */	stb r0, -0x77c2(r3)
/* 805BBDF0  3B E0 00 00 */	li r31, 0
/* 805BBDF4  48 00 00 20 */	b lbl_805BBE14
lbl_805BBDF8:
/* 805BBDF8  90 7F 09 98 */	stw r3, 0x998(r31)
/* 805BBDFC  38 00 00 02 */	li r0, 2
/* 805BBE00  7F E3 FB 78 */	mr r3, r31
/* 805BBE04  3B E0 00 01 */	li r31, 1
/* 805BBE08  98 04 88 3E */	stb r0, -0x77c2(r4)
/* 805BBE0C  38 80 00 47 */	li r4, 0x47
/* 805BBE10  4B FF FE A1 */	bl aSTC_clip_change_sound
lbl_805BBE14:
/* 805BBE14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BBE18  7F E3 FB 78 */	mr r3, r31
/* 805BBE1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BBE20  7C 08 03 A6 */	mtlr r0
/* 805BBE24  38 21 00 10 */	addi r1, r1, 0x10
/* 805BBE28  4E 80 00 20 */	blr 
