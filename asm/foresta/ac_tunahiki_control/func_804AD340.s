lbl_804AD340:
/* 804AD340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AD344  7C 08 02 A6 */	mflr r0
/* 804AD348  38 80 00 09 */	li r4, 9
/* 804AD34C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AD350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AD354  93 C1 00 08 */	stw r30, 8(r1)
/* 804AD358  7C 7E 1B 78 */	mr r30, r3
/* 804AD35C  38 60 00 0E */	li r3, 0xe
/* 804AD360  4B EF 0A 6D */	bl mEv_get_save_area
/* 804AD364  7C 7F 1B 78 */	mr r31, r3
/* 804AD368  7F C3 F3 78 */	mr r3, r30
/* 804AD36C  38 80 00 00 */	li r4, 0
/* 804AD370  48 00 01 D1 */	bl aTNC_setupAction
/* 804AD374  28 1F 00 00 */	cmplwi r31, 0
/* 804AD378  40 82 00 38 */	bne lbl_804AD3B0
/* 804AD37C  38 60 00 0E */	li r3, 0xe
/* 804AD380  38 80 00 09 */	li r4, 9
/* 804AD384  4B EF 08 A1 */	bl mEv_reserve_save_area
/* 804AD388  28 03 00 00 */	cmplwi r3, 0
/* 804AD38C  41 82 00 24 */	beq lbl_804AD3B0
/* 804AD390  3C 80 80 64 */	lis r4, data_80645F0C@ha /* 0x80645F0C@ha */
/* 804AD394  38 00 00 00 */	li r0, 0
/* 804AD398  C0 04 5F 0C */	lfs f0, data_80645F0C@l(r4)  /* 0x80645F0C@l */
/* 804AD39C  D0 03 00 00 */	stfs f0, 0(r3)
/* 804AD3A0  D0 03 00 04 */	stfs f0, 4(r3)
/* 804AD3A4  B0 03 00 12 */	sth r0, 0x12(r3)
/* 804AD3A8  B0 03 00 10 */	sth r0, 0x10(r3)
/* 804AD3AC  B0 03 00 14 */	sth r0, 0x14(r3)
lbl_804AD3B0:
/* 804AD3B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AD3B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AD3B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AD3BC  7C 08 03 A6 */	mtlr r0
/* 804AD3C0  38 21 00 10 */	addi r1, r1, 0x10
/* 804AD3C4  4E 80 00 20 */	blr 
