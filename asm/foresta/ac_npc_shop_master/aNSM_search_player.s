lbl_80576DC8:
/* 80576DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80576DCC  7C 08 02 A6 */	mflr r0
/* 80576DD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80576DD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80576DD8  7C 9F 23 78 */	mr r31, r4
/* 80576DDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80576DE0  7C 7E 1B 78 */	mr r30, r3
/* 80576DE4  7F E3 FB 78 */	mr r3, r31
/* 80576DE8  4B E6 28 59 */	bl get_player_actor_withoutCheck
/* 80576DEC  28 03 00 00 */	cmplwi r3, 0
/* 80576DF0  41 82 00 50 */	beq lbl_80576E40
/* 80576DF4  A8 9E 09 A6 */	lha r4, 0x9a6(r30)
/* 80576DF8  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 80576DFC  7C 04 00 50 */	subf r0, r4, r0
/* 80576E00  7C 03 07 35 */	extsh. r3, r0
/* 80576E04  7C 03 00 D0 */	neg r0, r3
/* 80576E08  41 80 00 08 */	blt lbl_80576E10
/* 80576E0C  7C 60 1B 78 */	mr r0, r3
lbl_80576E10:
/* 80576E10  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80576E14  40 81 00 18 */	ble lbl_80576E2C
/* 80576E18  7F C3 F3 78 */	mr r3, r30
/* 80576E1C  7F E4 FB 78 */	mr r4, r31
/* 80576E20  38 A0 00 42 */	li r5, 0x42
/* 80576E24  48 00 56 91 */	bl aNSC_setupAction
/* 80576E28  48 00 00 18 */	b lbl_80576E40
lbl_80576E2C:
/* 80576E2C  38 7E 00 DE */	addi r3, r30, 0xde
/* 80576E30  38 A0 08 00 */	li r5, 0x800
/* 80576E34  4B E4 3D 11 */	bl chase_angle
/* 80576E38  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 80576E3C  B0 1E 00 36 */	sth r0, 0x36(r30)
lbl_80576E40:
/* 80576E40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80576E44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80576E48  83 C1 00 08 */	lwz r30, 8(r1)
/* 80576E4C  7C 08 03 A6 */	mtlr r0
/* 80576E50  38 21 00 10 */	addi r1, r1, 0x10
/* 80576E54  4E 80 00 20 */	blr 
