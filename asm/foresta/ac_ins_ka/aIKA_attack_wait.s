lbl_8059C528:
/* 8059C528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059C52C  7C 08 02 A6 */	mflr r0
/* 8059C530  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8059C534  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059C538  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8059C53C  3C A5 00 02 */	addis r5, r5, 2
/* 8059C540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059C544  7C 7F 1B 78 */	mr r31, r3
/* 8059C548  93 C1 00 08 */	stw r30, 8(r1)
/* 8059C54C  7C 9E 23 78 */	mr r30, r4
/* 8059C550  80 05 60 AC */	lwz r0, 0x60ac(r5)
/* 8059C554  28 00 00 00 */	cmplwi r0, 0
/* 8059C558  40 82 00 10 */	bne lbl_8059C568
/* 8059C55C  80 05 60 B0 */	lwz r0, 0x60b0(r5)
/* 8059C560  28 00 00 00 */	cmplwi r0, 0
/* 8059C564  41 82 00 18 */	beq lbl_8059C57C
lbl_8059C568:
/* 8059C568  7F E3 FB 78 */	mr r3, r31
/* 8059C56C  7F C5 F3 78 */	mr r5, r30
/* 8059C570  38 80 00 00 */	li r4, 0
/* 8059C574  48 00 02 4D */	bl aIKA_setupAction
/* 8059C578  48 00 00 A4 */	b lbl_8059C61C
lbl_8059C57C:
/* 8059C57C  4B FF FD 21 */	bl aIKA_check_condition
/* 8059C580  2C 03 00 00 */	cmpwi r3, 0
/* 8059C584  40 82 00 18 */	bne lbl_8059C59C
/* 8059C588  7F E3 FB 78 */	mr r3, r31
/* 8059C58C  7F C5 F3 78 */	mr r5, r30
/* 8059C590  38 80 00 02 */	li r4, 2
/* 8059C594  48 00 02 2D */	bl aIKA_setupAction
/* 8059C598  48 00 00 84 */	b lbl_8059C61C
lbl_8059C59C:
/* 8059C59C  3C 60 80 65 */	lis r3, lit_522@ha /* 0x8064A0E8@ha */
/* 8059C5A0  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8059C5A4  C0 03 A0 E8 */	lfs f0, lit_522@l(r3)  /* 0x8064A0E8@l */
/* 8059C5A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059C5AC  40 81 00 18 */	ble lbl_8059C5C4
/* 8059C5B0  7F E3 FB 78 */	mr r3, r31
/* 8059C5B4  7F C5 F3 78 */	mr r5, r30
/* 8059C5B8  38 80 00 03 */	li r4, 3
/* 8059C5BC  48 00 02 05 */	bl aIKA_setupAction
/* 8059C5C0  48 00 00 5C */	b lbl_8059C61C
lbl_8059C5C4:
/* 8059C5C4  7F E3 FB 78 */	mr r3, r31
/* 8059C5C8  38 80 06 00 */	li r4, 0x600
/* 8059C5CC  4B FF FD 41 */	bl aIKA_calc_angle_search_player
/* 8059C5D0  80 7F 02 38 */	lwz r3, 0x238(r31)
/* 8059C5D4  38 03 00 01 */	addi r0, r3, 1
/* 8059C5D8  90 1F 02 38 */	stw r0, 0x238(r31)
/* 8059C5DC  80 1F 02 38 */	lwz r0, 0x238(r31)
/* 8059C5E0  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 8059C5E4  40 81 00 38 */	ble lbl_8059C61C
/* 8059C5E8  7F E3 FB 78 */	mr r3, r31
/* 8059C5EC  4B E4 20 81 */	bl mPlib_Check_stung_mosquito
/* 8059C5F0  2C 03 00 00 */	cmpwi r3, 0
/* 8059C5F4  41 82 00 18 */	beq lbl_8059C60C
/* 8059C5F8  7F E3 FB 78 */	mr r3, r31
/* 8059C5FC  7F C5 F3 78 */	mr r5, r30
/* 8059C600  38 80 00 05 */	li r4, 5
/* 8059C604  48 00 01 BD */	bl aIKA_setupAction
/* 8059C608  48 00 00 14 */	b lbl_8059C61C
lbl_8059C60C:
/* 8059C60C  7F E3 FB 78 */	mr r3, r31
/* 8059C610  4B E3 E4 31 */	bl mPlib_request_main_stung_mosquito_type1
/* 8059C614  38 00 00 B4 */	li r0, 0xb4
/* 8059C618  90 1F 02 38 */	stw r0, 0x238(r31)
lbl_8059C61C:
/* 8059C61C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059C624  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059C628  7C 08 03 A6 */	mtlr r0
/* 8059C62C  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C630  4E 80 00 20 */	blr 
