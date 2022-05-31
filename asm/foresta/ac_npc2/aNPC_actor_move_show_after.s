lbl_8053DE7C:
/* 8053DE7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DE80  7C 08 02 A6 */	mflr r0
/* 8053DE84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DE88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053DE8C  7C 7F 1B 78 */	mr r31, r3
/* 8053DE90  93 C1 00 08 */	stw r30, 8(r1)
/* 8053DE94  7C 9E 23 78 */	mr r30, r4
/* 8053DE98  4B FF E4 F9 */	bl aNPC_set_anime_speed
/* 8053DE9C  7F E3 FB 78 */	mr r3, r31
/* 8053DEA0  4B FF FE 09 */	bl aNPC_set_body_angle
/* 8053DEA4  7F E3 FB 78 */	mr r3, r31
/* 8053DEA8  4B FF FC B1 */	bl aNPC_check_feel_tim
/* 8053DEAC  7F E3 FB 78 */	mr r3, r31
/* 8053DEB0  4B FF FD 35 */	bl aNPC_calc_timer
/* 8053DEB4  C0 3F 08 2C */	lfs f1, 0x82c(r31)
/* 8053DEB8  7F E3 FB 78 */	mr r3, r31
/* 8053DEBC  4B E3 63 15 */	bl func_803741D0
/* 8053DEC0  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 8053DEC4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8053DEC8  40 82 00 20 */	bne lbl_8053DEE8
/* 8053DECC  7F E3 FB 78 */	mr r3, r31
/* 8053DED0  38 9F 09 38 */	addi r4, r31, 0x938
/* 8053DED4  4B E5 7B 21 */	bl CollisionCheck_Uty_ActorWorldPosSetPipeC
/* 8053DED8  7F C3 F3 78 */	mr r3, r30
/* 8053DEDC  38 9E 23 28 */	addi r4, r30, 0x2328
/* 8053DEE0  38 BF 09 38 */	addi r5, r31, 0x938
/* 8053DEE4  4B E5 6C B9 */	bl CollisionCheck_setOC
lbl_8053DEE8:
/* 8053DEE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DEEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053DEF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053DEF4  7C 08 03 A6 */	mtlr r0
/* 8053DEF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DEFC  4E 80 00 20 */	blr 
