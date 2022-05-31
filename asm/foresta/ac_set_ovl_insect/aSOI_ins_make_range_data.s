lbl_8049B3CC:
/* 8049B3CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049B3D0  7C 08 02 A6 */	mflr r0
/* 8049B3D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049B3D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8049B3DC  3B E3 41 98 */	addi r31, r3, 0x4198
/* 8049B3E0  7F E4 FB 78 */	mr r4, r31
/* 8049B3E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8049B3E8  4B FF FE F9 */	bl aSOI_ins_renew_check_range_table
/* 8049B3EC  2C 03 00 02 */	cmpwi r3, 2
/* 8049B3F0  41 82 00 BC */	beq lbl_8049B4AC
/* 8049B3F4  40 80 00 10 */	bge lbl_8049B404
/* 8049B3F8  2C 03 00 01 */	cmpwi r3, 1
/* 8049B3FC  40 80 00 14 */	bge lbl_8049B410
/* 8049B400  48 00 01 20 */	b lbl_8049B520
lbl_8049B404:
/* 8049B404  2C 03 00 04 */	cmpwi r3, 4
/* 8049B408  40 80 01 18 */	bge lbl_8049B520
/* 8049B40C  48 00 00 F8 */	b lbl_8049B504
lbl_8049B410:
/* 8049B410  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049B414  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049B418  3C 63 00 02 */	addis r3, r3, 2
/* 8049B41C  88 63 61 22 */	lbz r3, 0x6122(r3)
/* 8049B420  4B FF F6 B5 */	bl aSOI_hour_to_term
/* 8049B424  7C 60 1B 78 */	mr r0, r3
/* 8049B428  38 61 00 10 */	addi r3, r1, 0x10
/* 8049B42C  7C 1E 03 78 */	mr r30, r0
/* 8049B430  38 81 00 0C */	addi r4, r1, 0xc
/* 8049B434  38 A1 00 08 */	addi r5, r1, 8
/* 8049B438  4B FF F8 D5 */	bl aSOI_ins_chk_term_info
/* 8049B43C  7F E3 FB 78 */	mr r3, r31
/* 8049B440  38 80 01 58 */	li r4, 0x158
/* 8049B444  4B BC 1C 25 */	bl bzero
/* 8049B448  38 00 00 00 */	li r0, 0
/* 8049B44C  7F E3 FB 78 */	mr r3, r31
/* 8049B450  98 1F 02 0C */	stb r0, 0x20c(r31)
/* 8049B454  7F C5 F3 78 */	mr r5, r30
/* 8049B458  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8049B45C  C0 21 00 08 */	lfs f1, 8(r1)
/* 8049B460  4B FF FA D5 */	bl aSOI_ins_make_insect_normal_range_data
/* 8049B464  3C 60 80 64 */	lis r3, lit_555@ha /* 0x80644D20@ha */
/* 8049B468  C0 21 00 08 */	lfs f1, 8(r1)
/* 8049B46C  C0 03 4D 20 */	lfs f0, lit_555@l(r3)  /* 0x80644D20@l */
/* 8049B470  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8049B474  41 82 00 18 */	beq lbl_8049B48C
/* 8049B478  EC 20 08 28 */	fsubs f1, f0, f1
/* 8049B47C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8049B480  7F E3 FB 78 */	mr r3, r31
/* 8049B484  7F C5 F3 78 */	mr r5, r30
/* 8049B488  4B FF FA AD */	bl aSOI_ins_make_insect_normal_range_data
lbl_8049B48C:
/* 8049B48C  88 1F 02 0C */	lbz r0, 0x20c(r31)
/* 8049B490  38 9F 02 0C */	addi r4, r31, 0x20c
/* 8049B494  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8049B498  7C 7F 02 14 */	add r3, r31, r0
/* 8049B49C  4B FF FA 25 */	bl aSOI_ins_add_range_info
/* 8049B4A0  7F E3 FB 78 */	mr r3, r31
/* 8049B4A4  4B FF F7 51 */	bl aSOI_ins_renewal_time
/* 8049B4A8  48 00 00 78 */	b lbl_8049B520
lbl_8049B4AC:
/* 8049B4AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049B4B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049B4B4  3C 63 00 02 */	addis r3, r3, 2
/* 8049B4B8  88 63 61 22 */	lbz r3, 0x6122(r3)
/* 8049B4BC  4B FF F6 19 */	bl aSOI_hour_to_term
/* 8049B4C0  7C 7E 1B 78 */	mr r30, r3
/* 8049B4C4  7F E3 FB 78 */	mr r3, r31
/* 8049B4C8  38 80 01 58 */	li r4, 0x158
/* 8049B4CC  4B BC 1B 9D */	bl bzero
/* 8049B4D0  38 00 00 00 */	li r0, 0
/* 8049B4D4  7F E3 FB 78 */	mr r3, r31
/* 8049B4D8  98 1F 02 0C */	stb r0, 0x20c(r31)
/* 8049B4DC  7F C4 F3 78 */	mr r4, r30
/* 8049B4E0  4B FF FA E5 */	bl aSOI_ins_make_insect_island_range_data
/* 8049B4E4  88 1F 02 0C */	lbz r0, 0x20c(r31)
/* 8049B4E8  38 9F 02 0C */	addi r4, r31, 0x20c
/* 8049B4EC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8049B4F0  7C 7F 02 14 */	add r3, r31, r0
/* 8049B4F4  4B FF F9 CD */	bl aSOI_ins_add_range_info
/* 8049B4F8  7F E3 FB 78 */	mr r3, r31
/* 8049B4FC  4B FF F6 F9 */	bl aSOI_ins_renewal_time
/* 8049B500  48 00 00 20 */	b lbl_8049B520
lbl_8049B504:
/* 8049B504  7F E3 FB 78 */	mr r3, r31
/* 8049B508  38 80 01 58 */	li r4, 0x158
/* 8049B50C  4B BC 1B 5D */	bl bzero
/* 8049B510  38 00 00 00 */	li r0, 0
/* 8049B514  7F E3 FB 78 */	mr r3, r31
/* 8049B518  98 1F 02 0C */	stb r0, 0x20c(r31)
/* 8049B51C  4B FF FB 2D */	bl aSOI_ins_make_hitodama_range_data
lbl_8049B520:
/* 8049B520  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049B524  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8049B528  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8049B52C  7C 08 03 A6 */	mtlr r0
/* 8049B530  38 21 00 20 */	addi r1, r1, 0x20
/* 8049B534  4E 80 00 20 */	blr 
