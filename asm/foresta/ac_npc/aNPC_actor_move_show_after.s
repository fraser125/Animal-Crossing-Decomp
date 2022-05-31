lbl_8052FE70:
/* 8052FE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052FE74  7C 08 02 A6 */	mflr r0
/* 8052FE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052FE7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052FE80  7C 7F 1B 78 */	mr r31, r3
/* 8052FE84  93 C1 00 08 */	stw r30, 8(r1)
/* 8052FE88  7C 9E 23 78 */	mr r30, r4
/* 8052FE8C  4B FF D9 0D */	bl aNPC_set_anime_speed
/* 8052FE90  7F E3 FB 78 */	mr r3, r31
/* 8052FE94  4B FF FB B9 */	bl aNPC_set_body_angle
/* 8052FE98  7F E3 FB 78 */	mr r3, r31
/* 8052FE9C  4B FF F9 F1 */	bl aNPC_check_feel_tim
/* 8052FEA0  7F E3 FB 78 */	mr r3, r31
/* 8052FEA4  4B FF FA A9 */	bl aNPC_calc_timer
/* 8052FEA8  C0 3F 08 2C */	lfs f1, 0x82c(r31)
/* 8052FEAC  7F E3 FB 78 */	mr r3, r31
/* 8052FEB0  4B E4 43 21 */	bl func_803741D0
/* 8052FEB4  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 8052FEB8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8052FEBC  40 82 00 20 */	bne lbl_8052FEDC
/* 8052FEC0  7F E3 FB 78 */	mr r3, r31
/* 8052FEC4  38 9F 09 38 */	addi r4, r31, 0x938
/* 8052FEC8  4B E6 5B 2D */	bl CollisionCheck_Uty_ActorWorldPosSetPipeC
/* 8052FECC  7F C3 F3 78 */	mr r3, r30
/* 8052FED0  38 9E 23 28 */	addi r4, r30, 0x2328
/* 8052FED4  38 BF 09 38 */	addi r5, r31, 0x938
/* 8052FED8  4B E6 4C C5 */	bl CollisionCheck_setOC
lbl_8052FEDC:
/* 8052FEDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052FEE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052FEE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052FEE8  7C 08 03 A6 */	mtlr r0
/* 8052FEEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8052FEF0  4E 80 00 20 */	blr 
