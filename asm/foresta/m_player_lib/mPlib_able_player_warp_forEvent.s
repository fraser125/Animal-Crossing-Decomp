lbl_803DBD4C:
/* 803DBD4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DBD50  7C 08 02 A6 */	mflr r0
/* 803DBD54  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DBD58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DBD5C  4B FF D8 ED */	bl mPlib_check_DynamicLinkFile_m_player
/* 803DBD60  2C 03 00 00 */	cmpwi r3, 0
/* 803DBD64  40 82 00 0C */	bne lbl_803DBD70
/* 803DBD68  38 60 00 00 */	li r3, 0
/* 803DBD6C  48 00 01 B0 */	b lbl_803DBF1C
lbl_803DBD70:
/* 803DBD70  48 00 01 F9 */	bl mPlib_check_player_warp_forEvent
/* 803DBD74  2C 03 00 00 */	cmpwi r3, 0
/* 803DBD78  41 82 00 0C */	beq lbl_803DBD84
/* 803DBD7C  38 60 00 00 */	li r3, 0
/* 803DBD80  48 00 01 9C */	b lbl_803DBF1C
lbl_803DBD84:
/* 803DBD84  4B FB EF A9 */	bl mEv_CheckFirstIntro
/* 803DBD88  2C 03 00 00 */	cmpwi r3, 0
/* 803DBD8C  41 82 00 0C */	beq lbl_803DBD98
/* 803DBD90  38 60 00 00 */	li r3, 0
/* 803DBD94  48 00 01 88 */	b lbl_803DBF1C
lbl_803DBD98:
/* 803DBD98  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DBD9C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DBDA0  3C 63 00 03 */	addis r3, r3, 3
/* 803DBDA4  88 03 85 BE */	lbz r0, -0x7a42(r3)
/* 803DBDA8  7C 00 07 75 */	extsb. r0, r0
/* 803DBDAC  40 82 00 0C */	bne lbl_803DBDB8
/* 803DBDB0  38 60 00 00 */	li r3, 0
/* 803DBDB4  48 00 01 68 */	b lbl_803DBF1C
lbl_803DBDB8:
/* 803DBDB8  88 03 85 BF */	lbz r0, -0x7a41(r3)
/* 803DBDBC  7C 00 07 75 */	extsb. r0, r0
/* 803DBDC0  41 82 00 0C */	beq lbl_803DBDCC
/* 803DBDC4  38 60 00 00 */	li r3, 0
/* 803DBDC8  48 00 01 54 */	b lbl_803DBF1C
lbl_803DBDCC:
/* 803DBDCC  88 03 88 3D */	lbz r0, -0x77c3(r3)
/* 803DBDD0  7C 00 07 75 */	extsb. r0, r0
/* 803DBDD4  41 82 00 0C */	beq lbl_803DBDE0
/* 803DBDD8  38 60 00 00 */	li r3, 0
/* 803DBDDC  48 00 01 40 */	b lbl_803DBF1C
lbl_803DBDE0:
/* 803DBDE0  4B FF F7 D9 */	bl mPlib_Check_SetOrderSubmenu
/* 803DBDE4  2C 03 00 00 */	cmpwi r3, 0
/* 803DBDE8  41 82 00 0C */	beq lbl_803DBDF4
/* 803DBDEC  38 60 00 00 */	li r3, 0
/* 803DBDF0  48 00 01 2C */	b lbl_803DBF1C
lbl_803DBDF4:
/* 803DBDF4  4B FF F7 F1 */	bl mPlib_check_request_change_item
/* 803DBDF8  2C 03 00 00 */	cmpwi r3, 0
/* 803DBDFC  41 82 00 0C */	beq lbl_803DBE08
/* 803DBE00  38 60 00 00 */	li r3, 0
/* 803DBE04  48 00 01 18 */	b lbl_803DBF1C
lbl_803DBE08:
/* 803DBE08  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DBE0C  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DBE10  80 63 00 00 */	lwz r3, 0(r3)
/* 803DBE14  4B FF F9 7D */	bl mPlib_check_priority_event_type1
/* 803DBE18  2C 03 00 00 */	cmpwi r3, 0
/* 803DBE1C  41 82 00 30 */	beq lbl_803DBE4C
/* 803DBE20  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DBE24  83 E3 52 F0 */	lwz r31, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 803DBE28  7F E3 FB 78 */	mr r3, r31
/* 803DBE2C  4B FF D8 15 */	bl get_player_actor_withoutCheck
/* 803DBE30  81 83 13 80 */	lwz r12, 0x1380(r3)
/* 803DBE34  7F E3 FB 78 */	mr r3, r31
/* 803DBE38  7D 89 03 A6 */	mtctr r12
/* 803DBE3C  4E 80 04 21 */	bctrl 
/* 803DBE40  7C 60 00 34 */	cntlzw r0, r3
/* 803DBE44  54 03 D9 7E */	srwi r3, r0, 5
/* 803DBE48  48 00 00 D4 */	b lbl_803DBF1C
lbl_803DBE4C:
/* 803DBE4C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DBE50  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DBE54  80 63 00 00 */	lwz r3, 0(r3)
/* 803DBE58  4B FF D8 19 */	bl mPlib_get_player_actor_main_index
/* 803DBE5C  2C 03 00 34 */	cmpwi r3, 0x34
/* 803DBE60  41 82 00 94 */	beq lbl_803DBEF4
/* 803DBE64  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DBE68  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DBE6C  80 63 00 00 */	lwz r3, 0(r3)
/* 803DBE70  4B FF D8 01 */	bl mPlib_get_player_actor_main_index
/* 803DBE74  2C 03 00 2A */	cmpwi r3, 0x2a
/* 803DBE78  41 82 00 7C */	beq lbl_803DBEF4
/* 803DBE7C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DBE80  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DBE84  80 63 00 00 */	lwz r3, 0(r3)
/* 803DBE88  4B FF D7 E9 */	bl mPlib_get_player_actor_main_index
/* 803DBE8C  2C 03 00 2B */	cmpwi r3, 0x2b
/* 803DBE90  41 82 00 64 */	beq lbl_803DBEF4
/* 803DBE94  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DBE98  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DBE9C  80 63 00 00 */	lwz r3, 0(r3)
/* 803DBEA0  4B FF D7 D1 */	bl mPlib_get_player_actor_main_index
/* 803DBEA4  2C 03 00 13 */	cmpwi r3, 0x13
/* 803DBEA8  41 82 00 4C */	beq lbl_803DBEF4
/* 803DBEAC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DBEB0  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DBEB4  80 63 00 00 */	lwz r3, 0(r3)
/* 803DBEB8  4B FF D7 B9 */	bl mPlib_get_player_actor_main_index
/* 803DBEBC  2C 03 00 23 */	cmpwi r3, 0x23
/* 803DBEC0  41 82 00 34 */	beq lbl_803DBEF4
/* 803DBEC4  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DBEC8  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DBECC  80 63 00 00 */	lwz r3, 0(r3)
/* 803DBED0  4B FF D7 A1 */	bl mPlib_get_player_actor_main_index
/* 803DBED4  2C 03 00 1B */	cmpwi r3, 0x1b
/* 803DBED8  41 82 00 1C */	beq lbl_803DBEF4
/* 803DBEDC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DBEE0  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DBEE4  80 63 00 00 */	lwz r3, 0(r3)
/* 803DBEE8  4B FF D7 89 */	bl mPlib_get_player_actor_main_index
/* 803DBEEC  2C 03 00 5E */	cmpwi r3, 0x5e
/* 803DBEF0  40 82 00 28 */	bne lbl_803DBF18
lbl_803DBEF4:
/* 803DBEF4  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DBEF8  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DBEFC  80 63 00 00 */	lwz r3, 0(r3)
/* 803DBF00  4B FF D7 41 */	bl get_player_actor_withoutCheck
/* 803DBF04  80 03 0D 10 */	lwz r0, 0xd10(r3)
/* 803DBF08  2C 00 00 00 */	cmpwi r0, 0
/* 803DBF0C  40 82 00 0C */	bne lbl_803DBF18
/* 803DBF10  38 60 00 01 */	li r3, 1
/* 803DBF14  48 00 00 08 */	b lbl_803DBF1C
lbl_803DBF18:
/* 803DBF18  38 60 00 00 */	li r3, 0
lbl_803DBF1C:
/* 803DBF1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DBF20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DBF24  7C 08 03 A6 */	mtlr r0
/* 803DBF28  38 21 00 10 */	addi r1, r1, 0x10
/* 803DBF2C  4E 80 00 20 */	blr 
