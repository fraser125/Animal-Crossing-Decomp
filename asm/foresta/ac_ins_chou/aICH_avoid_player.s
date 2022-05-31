lbl_80598AD4:
/* 80598AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80598AD8  7C 08 02 A6 */	mflr r0
/* 80598ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80598AE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80598AE4  7C 9F 23 78 */	mr r31, r4
/* 80598AE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80598AEC  7C 7E 1B 78 */	mr r30, r3
/* 80598AF0  7F E3 FB 78 */	mr r3, r31
/* 80598AF4  4B E4 0B 4D */	bl get_player_actor_withoutCheck
/* 80598AF8  7C 64 1B 79 */	or. r4, r3, r3
/* 80598AFC  41 82 00 4C */	beq lbl_80598B48
/* 80598B00  38 7E 00 28 */	addi r3, r30, 0x28
/* 80598B04  38 84 00 28 */	addi r4, r4, 0x28
/* 80598B08  4B E2 26 29 */	bl search_position_angleY
/* 80598B0C  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80598B10  3C A3 00 01 */	addis r5, r3, 1
/* 80598B14  3C 80 80 6C */	lis r4, add_angl@ha /* 0x806C3270@ha */
/* 80598B18  38 7E 00 DE */	addi r3, r30, 0xde
/* 80598B1C  54 00 E7 BC */	rlwinm r0, r0, 0x1c, 0x1e, 0x1e
/* 80598B20  38 A5 80 00 */	addi r5, r5, -32768
/* 80598B24  38 84 32 70 */	addi r4, r4, add_angl@l /* 0x806C3270@l */
/* 80598B28  7C 04 02 AE */	lhax r0, r4, r0
/* 80598B2C  7C A4 07 34 */	extsh r4, r5
/* 80598B30  38 A0 06 00 */	li r5, 0x600
/* 80598B34  7C 84 02 14 */	add r4, r4, r0
/* 80598B38  7C 84 07 34 */	extsh r4, r4
/* 80598B3C  4B E2 20 09 */	bl chase_angle
/* 80598B40  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 80598B44  B0 1E 00 36 */	sth r0, 0x36(r30)
lbl_80598B48:
/* 80598B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80598B4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80598B50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80598B54  7C 08 03 A6 */	mtlr r0
/* 80598B58  38 21 00 10 */	addi r1, r1, 0x10
/* 80598B5C  4E 80 00 20 */	blr 
