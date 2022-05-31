lbl_804D9A9C:
/* 804D9A9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D9AA0  7C 08 02 A6 */	mflr r0
/* 804D9AA4  3C C0 80 64 */	lis r6, lit_2752@ha /* 0x80646C54@ha */
/* 804D9AA8  7C A7 2B 78 */	mr r7, r5
/* 804D9AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D9AB0  C0 26 6C 54 */	lfs f1, lit_2752@l(r6)  /* 0x80646C54@l */
/* 804D9AB4  38 C0 1C 71 */	li r6, 0x1c71
/* 804D9AB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D9ABC  93 C1 00 08 */	stw r30, 8(r1)
/* 804D9AC0  7C 7E 1B 78 */	mr r30, r3
/* 804D9AC4  A8 A3 00 DE */	lha r5, 0xde(r3)
/* 804D9AC8  7C 83 23 78 */	mr r3, r4
/* 804D9ACC  38 9E 00 28 */	addi r4, r30, 0x28
/* 804D9AD0  4B FF C2 DD */	bl Player_actor_CheckAbleMoveWadeBlock
/* 804D9AD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 804D9AD8  41 82 00 40 */	beq lbl_804D9B18
/* 804D9ADC  4B F0 04 65 */	bl mPlib_Get_unable_wade
/* 804D9AE0  2C 03 00 00 */	cmpwi r3, 0
/* 804D9AE4  40 82 00 24 */	bne lbl_804D9B08
/* 804D9AE8  3C 60 80 4E */	lis r3, Player_actor_Init_ScrollDemo_forWade@ha /* 0x804D997C@ha */
/* 804D9AEC  93 FE 12 0C */	stw r31, 0x120c(r30)
/* 804D9AF0  38 A3 99 7C */	addi r5, r3, Player_actor_Init_ScrollDemo_forWade@l /* 0x804D997C@l */
/* 804D9AF4  7F C4 F3 78 */	mr r4, r30
/* 804D9AF8  38 60 00 01 */	li r3, 1
/* 804D9AFC  4B EC 06 61 */	bl mDemo_Request
/* 804D9B00  38 60 00 01 */	li r3, 1
/* 804D9B04  48 00 00 18 */	b lbl_804D9B1C
lbl_804D9B08:
/* 804D9B08  A0 7E 12 1C */	lhz r3, 0x121c(r30)
/* 804D9B0C  38 00 00 01 */	li r0, 1
/* 804D9B10  B0 7E 12 10 */	sth r3, 0x1210(r30)
/* 804D9B14  90 1E 12 14 */	stw r0, 0x1214(r30)
lbl_804D9B18:
/* 804D9B18  38 60 00 00 */	li r3, 0
lbl_804D9B1C:
/* 804D9B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D9B20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D9B24  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D9B28  7C 08 03 A6 */	mtlr r0
/* 804D9B2C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D9B30  4E 80 00 20 */	blr 
