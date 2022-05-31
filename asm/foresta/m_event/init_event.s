lbl_8039D3A0:
/* 8039D3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039D3A4  7C 08 02 A6 */	mflr r0
/* 8039D3A8  38 A0 00 63 */	li r5, 0x63
/* 8039D3AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039D3B0  38 00 00 00 */	li r0, 0
/* 8039D3B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039D3B8  7C 7F 1B 78 */	mr r31, r3
/* 8039D3BC  93 C1 00 08 */	stw r30, 8(r1)
/* 8039D3C0  7C 9E 23 78 */	mr r30, r4
/* 8039D3C4  38 9F 00 08 */	addi r4, r31, 8
/* 8039D3C8  98 A3 00 04 */	stb r5, 4(r3)
/* 8039D3CC  38 7F 00 0C */	addi r3, r31, 0xc
/* 8039D3D0  98 BF 00 00 */	stb r5, 0(r31)
/* 8039D3D4  98 BF 00 01 */	stb r5, 1(r31)
/* 8039D3D8  98 1F 00 03 */	stb r0, 3(r31)
/* 8039D3DC  98 1F 00 02 */	stb r0, 2(r31)
/* 8039D3E0  B0 1F 00 06 */	sth r0, 6(r31)
/* 8039D3E4  90 1F 00 08 */	stw r0, 8(r31)
/* 8039D3E8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8039D3EC  4B FF FF 3D */	bl calc_start_block
/* 8039D3F0  3C 80 81 16 */	lis r4, funeral@ha /* 0x81167690@ha */
/* 8039D3F4  38 00 00 00 */	li r0, 0
/* 8039D3F8  3C 60 81 16 */	lis r3, dead@ha /* 0x81167694@ha */
/* 8039D3FC  90 04 76 90 */	stw r0, funeral@l(r4)  /* 0x81167690@l */
/* 8039D400  90 03 76 94 */	stw r0, dead@l(r3)  /* 0x81167694@l */
/* 8039D404  4B FF E6 41 */	bl init_today_event
/* 8039D408  2C 1E 00 00 */	cmpwi r30, 0
/* 8039D40C  41 82 00 94 */	beq lbl_8039D4A0
/* 8039D410  4B FF DA C5 */	bl mEv_RenewalDataEveryDay
/* 8039D414  4B FF DC 41 */	bl init_weekday1st
/* 8039D418  38 60 00 00 */	li r3, 0
/* 8039D41C  4B FF E7 49 */	bl init_special_event
/* 8039D420  2C 03 00 00 */	cmpwi r3, 0
/* 8039D424  41 82 00 18 */	beq lbl_8039D43C
/* 8039D428  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039D42C  38 00 00 01 */	li r0, 1
/* 8039D430  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039D434  3C 63 00 02 */	addis r3, r3, 2
/* 8039D438  98 03 05 55 */	stb r0, 0x555(r3)
lbl_8039D43C:
/* 8039D43C  4B FF ED 6D */	bl init_weekly_event
/* 8039D440  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039D444  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039D448  3C 63 00 02 */	addis r3, r3, 2
/* 8039D44C  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8039D450  48 00 12 61 */	bl mEv_LivePlayer
/* 8039D454  2C 03 00 00 */	cmpwi r3, 0
/* 8039D458  41 82 00 48 */	beq lbl_8039D4A0
/* 8039D45C  48 00 12 09 */	bl mEv_LiveSonchoPresent
/* 8039D460  2C 03 00 00 */	cmpwi r3, 0
/* 8039D464  40 82 00 3C */	bne lbl_8039D4A0
/* 8039D468  7F E3 FB 78 */	mr r3, r31
/* 8039D46C  4B FF FA F9 */	bl update_schedule_today
/* 8039D470  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039D474  7F E3 FB 78 */	mr r3, r31
/* 8039D478  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8039D47C  3C 84 00 02 */	addis r4, r4, 2
/* 8039D480  88 04 61 25 */	lbz r0, 0x6125(r4)
/* 8039D484  98 1F 00 04 */	stb r0, 4(r31)
/* 8039D488  88 04 61 23 */	lbz r0, 0x6123(r4)
/* 8039D48C  98 1F 00 00 */	stb r0, 0(r31)
/* 8039D490  88 04 61 22 */	lbz r0, 0x6122(r4)
/* 8039D494  98 1F 00 01 */	stb r0, 1(r31)
/* 8039D498  4B FF F5 89 */	bl update_active
/* 8039D49C  48 00 0A 19 */	bl update_save_area
lbl_8039D4A0:
/* 8039D4A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039D4A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039D4A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039D4AC  7C 08 03 A6 */	mtlr r0
/* 8039D4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8039D4B4  4E 80 00 20 */	blr 
