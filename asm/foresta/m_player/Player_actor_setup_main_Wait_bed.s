lbl_804EC4E8:
/* 804EC4E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EC4EC  7C 08 02 A6 */	mflr r0
/* 804EC4F0  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804EC4F4  3C C0 80 64 */	lis r6, lit_2671@ha /* 0x80646C4C@ha */
/* 804EC4F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EC4FC  38 E5 65 64 */	addi r7, r5, lit_603@l /* 0x80646564@l */
/* 804EC500  C0 27 00 00 */	lfs f1, 0(r7)
/* 804EC504  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804EC508  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EC50C  38 00 00 00 */	li r0, 0
/* 804EC510  C0 66 6C 4C */	lfs f3, lit_2671@l(r6)  /* 0x80646C4C@l */
/* 804EC514  FC 40 08 90 */	fmr f2, f1
/* 804EC518  93 C1 00 08 */	stw r30, 8(r1)
/* 804EC51C  7C 7E 1B 78 */	mr r30, r3
/* 804EC520  C0 85 65 68 */	lfs f4, lit_604@l(r5)  /* 0x80646568@l */
/* 804EC524  7C 9F 23 78 */	mr r31, r4
/* 804EC528  90 03 0D 18 */	stw r0, 0xd18(r3)
/* 804EC52C  38 A0 00 27 */	li r5, 0x27
/* 804EC530  38 C0 00 27 */	li r6, 0x27
/* 804EC534  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 804EC538  38 E0 00 00 */	li r7, 0
/* 804EC53C  90 03 00 34 */	stw r0, 0x34(r3)
/* 804EC540  A0 03 00 E0 */	lhz r0, 0xe0(r3)
/* 804EC544  B0 03 00 38 */	sth r0, 0x38(r3)
/* 804EC548  4B FE A1 B1 */	bl Player_actor_InitAnimation_Base1
/* 804EC54C  7F C3 F3 78 */	mr r3, r30
/* 804EC550  38 80 00 02 */	li r4, 2
/* 804EC554  4B FE 8E BD */	bl Player_actor_set_eye_pattern
/* 804EC558  7F C3 F3 78 */	mr r3, r30
/* 804EC55C  7F E4 FB 78 */	mr r4, r31
/* 804EC560  4B FE 93 99 */	bl Player_actor_setup_main_Base
/* 804EC564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EC568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EC56C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EC570  7C 08 03 A6 */	mtlr r0
/* 804EC574  38 21 00 10 */	addi r1, r1, 0x10
/* 804EC578  4E 80 00 20 */	blr 
