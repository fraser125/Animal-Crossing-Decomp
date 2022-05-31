lbl_8055A128:
/* 8055A128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055A12C  7C 08 02 A6 */	mflr r0
/* 8055A130  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055A134  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055A138  7C 9F 23 78 */	mr r31, r4
/* 8055A13C  93 C1 00 08 */	stw r30, 8(r1)
/* 8055A140  7C 7E 1B 78 */	mr r30, r3
/* 8055A144  7F E3 FB 78 */	mr r3, r31
/* 8055A148  4B E7 F4 F9 */	bl get_player_actor_withoutCheck
/* 8055A14C  28 03 00 00 */	cmplwi r3, 0
/* 8055A150  41 82 00 50 */	beq lbl_8055A1A0
/* 8055A154  A8 9E 09 A6 */	lha r4, 0x9a6(r30)
/* 8055A158  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8055A15C  7C 04 00 50 */	subf r0, r4, r0
/* 8055A160  7C 03 07 35 */	extsh. r3, r0
/* 8055A164  7C 03 00 D0 */	neg r0, r3
/* 8055A168  41 80 00 08 */	blt lbl_8055A170
/* 8055A16C  7C 60 1B 78 */	mr r0, r3
lbl_8055A170:
/* 8055A170  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8055A174  40 81 00 18 */	ble lbl_8055A18C
/* 8055A178  7F C3 F3 78 */	mr r3, r30
/* 8055A17C  7F E4 FB 78 */	mr r4, r31
/* 8055A180  38 A0 00 42 */	li r5, 0x42
/* 8055A184  48 00 4C 4D */	bl aNSC_setupAction
/* 8055A188  48 00 00 18 */	b lbl_8055A1A0
lbl_8055A18C:
/* 8055A18C  38 7E 00 DE */	addi r3, r30, 0xde
/* 8055A190  38 A0 08 00 */	li r5, 0x800
/* 8055A194  4B E6 09 B1 */	bl chase_angle
/* 8055A198  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8055A19C  B0 1E 00 36 */	sth r0, 0x36(r30)
lbl_8055A1A0:
/* 8055A1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055A1A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055A1A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055A1AC  7C 08 03 A6 */	mtlr r0
/* 8055A1B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8055A1B4  4E 80 00 20 */	blr 
