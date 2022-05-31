lbl_8050D4A8:
/* 8050D4A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050D4AC  7C 08 02 A6 */	mflr r0
/* 8050D4B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050D4B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050D4B8  7C 9F 23 78 */	mr r31, r4
/* 8050D4BC  93 C1 00 08 */	stw r30, 8(r1)
/* 8050D4C0  7C 7E 1B 78 */	mr r30, r3
/* 8050D4C4  4B FF FA B5 */	bl aBEE_calc_fly_angle
/* 8050D4C8  A8 1E 00 DC */	lha r0, 0xdc(r30)
/* 8050D4CC  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8050D4D0  41 81 00 6C */	bgt lbl_8050D53C
/* 8050D4D4  4B ED 05 8D */	bl mPlib_Get_status_for_bee
/* 8050D4D8  2C 03 00 02 */	cmpwi r3, 2
/* 8050D4DC  41 82 00 14 */	beq lbl_8050D4F0
/* 8050D4E0  40 80 00 50 */	bge lbl_8050D530
/* 8050D4E4  2C 03 00 01 */	cmpwi r3, 1
/* 8050D4E8  40 80 00 1C */	bge lbl_8050D504
/* 8050D4EC  48 00 00 44 */	b lbl_8050D530
lbl_8050D4F0:
/* 8050D4F0  7F C3 F3 78 */	mr r3, r30
/* 8050D4F4  7F E5 FB 78 */	mr r5, r31
/* 8050D4F8  38 80 00 05 */	li r4, 5
/* 8050D4FC  48 00 01 C5 */	bl aBEE_setupAction
/* 8050D500  48 00 00 3C */	b lbl_8050D53C
lbl_8050D504:
/* 8050D504  3C 60 80 65 */	lis r3, lit_541@ha /* 0x80648EC0@ha */
/* 8050D508  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 8050D50C  C0 03 8E C0 */	lfs f0, lit_541@l(r3)  /* 0x80648EC0@l */
/* 8050D510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050D514  40 80 00 1C */	bge lbl_8050D530
/* 8050D518  7F E3 FB 78 */	mr r3, r31
/* 8050D51C  4B EC D4 E5 */	bl mPlib_request_main_stung_bee_type1
/* 8050D520  7F C3 F3 78 */	mr r3, r30
/* 8050D524  7F E5 FB 78 */	mr r5, r31
/* 8050D528  38 80 00 04 */	li r4, 4
/* 8050D52C  48 00 01 95 */	bl aBEE_setupAction
lbl_8050D530:
/* 8050D530  7F C3 F3 78 */	mr r3, r30
/* 8050D534  7F E4 FB 78 */	mr r4, r31
/* 8050D538  4B FF F5 4D */	bl aBEE_fly_move_common
lbl_8050D53C:
/* 8050D53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050D540  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050D544  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050D548  7C 08 03 A6 */	mtlr r0
/* 8050D54C  38 21 00 10 */	addi r1, r1, 0x10
/* 8050D550  4E 80 00 20 */	blr 
