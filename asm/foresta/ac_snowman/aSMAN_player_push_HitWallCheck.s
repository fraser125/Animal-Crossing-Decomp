lbl_804A42C4:
/* 804A42C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A42C8  7C 08 02 A6 */	mflr r0
/* 804A42CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A42D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A42D4  93 C1 00 08 */	stw r30, 8(r1)
/* 804A42D8  7C 7E 1B 78 */	mr r30, r3
/* 804A42DC  7C 83 23 78 */	mr r3, r4
/* 804A42E0  4B F3 53 61 */	bl get_player_actor_withoutCheck
/* 804A42E4  A0 03 00 98 */	lhz r0, 0x98(r3)
/* 804A42E8  7C 7F 1B 78 */	mr r31, r3
/* 804A42EC  88 63 00 98 */	lbz r3, 0x98(r3)
/* 804A42F0  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 804A42F4  54 60 F6 FE */	rlwinm r0, r3, 0x1e, 0x1b, 0x1f
/* 804A42F8  40 82 00 0C */	bne lbl_804A4304
/* 804A42FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804A4300  41 82 00 3C */	beq lbl_804A433C
lbl_804A4304:
/* 804A4304  7F C3 F3 78 */	mr r3, r30
/* 804A4308  4B F5 25 FD */	bl mRlib_Get_HitWallAngleY
/* 804A430C  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 804A4310  7C 60 18 50 */	subf r3, r0, r3
/* 804A4314  3C 63 00 01 */	addis r3, r3, 1
/* 804A4318  38 03 80 00 */	addi r0, r3, -32768
/* 804A431C  7C 03 07 35 */	extsh. r3, r0
/* 804A4320  7C 03 00 D0 */	neg r0, r3
/* 804A4324  41 80 00 08 */	blt lbl_804A432C
/* 804A4328  7C 60 1B 78 */	mr r0, r3
lbl_804A432C:
/* 804A432C  2C 00 20 00 */	cmpwi r0, 0x2000
/* 804A4330  40 81 00 0C */	ble lbl_804A433C
/* 804A4334  38 60 00 01 */	li r3, 1
/* 804A4338  48 00 00 08 */	b lbl_804A4340
lbl_804A433C:
/* 804A433C  38 60 00 00 */	li r3, 0
lbl_804A4340:
/* 804A4340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A4344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A4348  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A434C  7C 08 03 A6 */	mtlr r0
/* 804A4350  38 21 00 10 */	addi r1, r1, 0x10
/* 804A4354  4E 80 00 20 */	blr 
