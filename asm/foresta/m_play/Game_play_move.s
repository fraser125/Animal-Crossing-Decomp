lbl_8062A994:
/* 8062A994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062A998  7C 08 02 A6 */	mflr r0
/* 8062A99C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062A9A0  38 00 00 00 */	li r0, 0
/* 8062A9A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062A9A8  7C 7F 1B 78 */	mr r31, r3
/* 8062A9AC  98 03 00 9C */	stb r0, 0x9c(r3)
/* 8062A9B0  38 60 00 8D */	li r3, 0x8d
/* 8062A9B4  38 00 00 01 */	li r0, 1
/* 8062A9B8  98 7F 00 9D */	stb r3, 0x9d(r31)
/* 8062A9BC  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062A9C0  4B FF F2 E5 */	bl func_80629CA4
/* 8062A9C4  38 00 00 02 */	li r0, 2
/* 8062A9C8  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 8062A9CC  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062A9D0  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 8062A9D4  2C 00 00 02 */	cmpwi r0, 2
/* 8062A9D8  41 80 00 1C */	blt lbl_8062A9F4
/* 8062A9DC  38 7F 1D A0 */	addi r3, r31, 0x1da0
/* 8062A9E0  38 9F 00 2C */	addi r4, r31, 0x2c
/* 8062A9E4  4B DA DF 79 */	bl Pause_proc
/* 8062A9E8  7C 60 00 34 */	cntlzw r0, r3
/* 8062A9EC  54 03 D9 7E */	srwi r3, r0, 5
/* 8062A9F0  48 00 00 08 */	b lbl_8062A9F8
lbl_8062A9F4:
/* 8062A9F4  38 60 00 00 */	li r3, 0
lbl_8062A9F8:
/* 8062A9F8  38 00 00 00 */	li r0, 0
/* 8062A9FC  2C 03 00 00 */	cmpwi r3, 0
/* 8062AA00  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062AA04  38 00 00 8E */	li r0, 0x8e
/* 8062AA08  98 1F 00 9D */	stb r0, 0x9d(r31)
/* 8062AA0C  40 82 00 40 */	bne lbl_8062AA4C
/* 8062AA10  38 00 00 01 */	li r0, 1
/* 8062AA14  7F E3 FB 78 */	mr r3, r31
/* 8062AA18  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062AA1C  4B FF F9 49 */	bl Game_play_fbdemo_wipe_proc
/* 8062AA20  38 00 00 02 */	li r0, 2
/* 8062AA24  7F E3 FB 78 */	mr r3, r31
/* 8062AA28  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062AA2C  4B FF F9 D1 */	bl Game_play_fbdemo_proc
/* 8062AA30  38 00 00 03 */	li r0, 3
/* 8062AA34  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062AA38  88 1F 20 D2 */	lbz r0, 0x20d2(r31)
/* 8062AA3C  28 00 00 03 */	cmplwi r0, 3
/* 8062AA40  41 82 00 0C */	beq lbl_8062AA4C
/* 8062AA44  7F E3 FB 78 */	mr r3, r31
/* 8062AA48  4B FF FD F9 */	bl Game_play_move_fbdemo_not_move
lbl_8062AA4C:
/* 8062AA4C  80 1F 1D F8 */	lwz r0, 0x1df8(r31)
/* 8062AA50  2C 00 00 00 */	cmpwi r0, 0
/* 8062AA54  40 82 00 64 */	bne lbl_8062AAB8
/* 8062AA58  38 00 00 00 */	li r0, 0
/* 8062AA5C  38 80 00 92 */	li r4, 0x92
/* 8062AA60  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062AA64  38 00 00 01 */	li r0, 1
/* 8062AA68  7F E3 FB 78 */	mr r3, r31
/* 8062AA6C  98 9F 00 9D */	stb r4, 0x9d(r31)
/* 8062AA70  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062AA74  4B FF F2 D5 */	bl Game_play_camera_proc
/* 8062AA78  38 00 00 02 */	li r0, 2
/* 8062AA7C  7F E3 FB 78 */	mr r3, r31
/* 8062AA80  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062AA84  4B DB 52 69 */	bl mPO_business_proc
/* 8062AA88  38 00 00 03 */	li r0, 3
/* 8062AA8C  7F E3 FB 78 */	mr r3, r31
/* 8062AA90  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062AA94  4B DC 87 DD */	bl mTRC_move
/* 8062AA98  38 00 00 04 */	li r0, 4
/* 8062AA9C  7F E3 FB 78 */	mr r3, r31
/* 8062AAA0  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062AAA4  4B D8 6C 59 */	bl Balloon_move
/* 8062AAA8  7F E3 FB 78 */	mr r3, r31
/* 8062AAAC  38 9F 1C C0 */	addi r4, r31, 0x1cc0
/* 8062AAB0  38 BF 1D 90 */	addi r5, r31, 0x1d90
/* 8062AAB4  4B D8 E0 B9 */	bl mEnv_ManagePointLight
lbl_8062AAB8:
/* 8062AAB8  38 00 00 00 */	li r0, 0
/* 8062AABC  38 A0 00 93 */	li r5, 0x93
/* 8062AAC0  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062AAC4  38 00 00 01 */	li r0, 1
/* 8062AAC8  7F E3 FB 78 */	mr r3, r31
/* 8062AACC  38 9F 1C C0 */	addi r4, r31, 0x1cc0
/* 8062AAD0  98 BF 00 9D */	stb r5, 0x9d(r31)
/* 8062AAD4  38 BF 1D 90 */	addi r5, r31, 0x1d90
/* 8062AAD8  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062AADC  4B D8 E5 29 */	bl Global_kankyo_set
/* 8062AAE0  38 00 00 02 */	li r0, 2
/* 8062AAE4  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062AAE8  4B D8 F7 85 */	bl mEnv_WindMove
/* 8062AAEC  38 00 00 03 */	li r0, 3
/* 8062AAF0  7F E3 FB 78 */	mr r3, r31
/* 8062AAF4  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062AAF8  4B DC A2 6D */	bl watch_my_step_move
/* 8062AAFC  38 00 00 04 */	li r0, 4
/* 8062AB00  7F E3 FB 78 */	mr r3, r31
/* 8062AB04  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062AB08  4B D4 D1 5D */	bl banti_move
/* 8062AB0C  38 00 00 05 */	li r0, 5
/* 8062AB10  7F E3 FB 78 */	mr r3, r31
/* 8062AB14  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062AB18  4B DC 76 F1 */	bl title_demo_move
/* 8062AB1C  38 60 00 00 */	li r3, 0
/* 8062AB20  38 00 00 95 */	li r0, 0x95
/* 8062AB24  98 7F 00 9C */	stb r3, 0x9c(r31)
/* 8062AB28  98 1F 00 9D */	stb r0, 0x9d(r31)
/* 8062AB2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062AB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062AB34  7C 08 03 A6 */	mtlr r0
/* 8062AB38  38 21 00 10 */	addi r1, r1, 0x10
/* 8062AB3C  4E 80 00 20 */	blr 
