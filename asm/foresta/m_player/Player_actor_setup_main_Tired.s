lbl_804FFC20:
/* 804FFC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FFC24  7C 08 02 A6 */	mflr r0
/* 804FFC28  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804FFC2C  3C C0 80 64 */	lis r6, lit_2671@ha /* 0x80646C4C@ha */
/* 804FFC30  38 E5 65 64 */	addi r7, r5, lit_603@l /* 0x80646564@l */
/* 804FFC34  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FFC38  C0 27 00 00 */	lfs f1, 0(r7)
/* 804FFC3C  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804FFC40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FFC44  7C 9F 23 78 */	mr r31, r4
/* 804FFC48  FC 40 08 90 */	fmr f2, f1
/* 804FFC4C  C0 66 6C 4C */	lfs f3, lit_2671@l(r6)  /* 0x80646C4C@l */
/* 804FFC50  93 C1 00 08 */	stw r30, 8(r1)
/* 804FFC54  7C 7E 1B 78 */	mr r30, r3
/* 804FFC58  C0 85 65 68 */	lfs f4, lit_604@l(r5)  /* 0x80646568@l */
/* 804FFC5C  38 A0 00 61 */	li r5, 0x61
/* 804FFC60  38 C0 00 61 */	li r6, 0x61
/* 804FFC64  38 E0 00 00 */	li r7, 0
/* 804FFC68  4B FD 6A 91 */	bl Player_actor_InitAnimation_Base1
/* 804FFC6C  7F C3 F3 78 */	mr r3, r30
/* 804FFC70  38 80 00 04 */	li r4, 4
/* 804FFC74  4B FD 57 9D */	bl Player_actor_set_eye_pattern
/* 804FFC78  7F C3 F3 78 */	mr r3, r30
/* 804FFC7C  38 80 00 04 */	li r4, 4
/* 804FFC80  4B FD 58 99 */	bl Player_actor_set_mouth_pattern
/* 804FFC84  7F C3 F3 78 */	mr r3, r30
/* 804FFC88  7F E4 FB 78 */	mr r4, r31
/* 804FFC8C  4B FD 5C 6D */	bl Player_actor_setup_main_Base
/* 804FFC90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FFC94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FFC98  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FFC9C  7C 08 03 A6 */	mtlr r0
/* 804FFCA0  38 21 00 10 */	addi r1, r1, 0x10
/* 804FFCA4  4E 80 00 20 */	blr 
