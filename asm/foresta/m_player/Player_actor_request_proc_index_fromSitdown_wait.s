lbl_804EF494:
/* 804EF494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF498  7C 08 02 A6 */	mflr r0
/* 804EF49C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF4A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF4A4  93 C1 00 08 */	stw r30, 8(r1)
/* 804EF4A8  7C 9E 23 78 */	mr r30, r4
/* 804EF4AC  83 E3 0D 18 */	lwz r31, 0xd18(r3)
/* 804EF4B0  4B FE 55 51 */	bl Player_actor_GetController_move_percentX
/* 804EF4B4  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EF4B8  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804EF4BC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804EF4C0  40 82 00 18 */	bne lbl_804EF4D8
/* 804EF4C4  4B FE 55 81 */	bl Player_actor_GetController_move_percentY
/* 804EF4C8  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EF4CC  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804EF4D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804EF4D4  41 82 00 14 */	beq lbl_804EF4E8
lbl_804EF4D8:
/* 804EF4D8  7F C3 F3 78 */	mr r3, r30
/* 804EF4DC  7F E4 FB 78 */	mr r4, r31
/* 804EF4E0  38 A0 00 16 */	li r5, 0x16
/* 804EF4E4  48 00 00 9D */	bl func_804EF580
lbl_804EF4E8:
/* 804EF4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF4EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF4F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EF4F4  7C 08 03 A6 */	mtlr r0
/* 804EF4F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF4FC  4E 80 00 20 */	blr 
