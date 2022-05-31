lbl_80504F90:
/* 80504F90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504F94  7C 08 02 A6 */	mflr r0
/* 80504F98  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 80504F9C  3C C0 80 64 */	lis r6, lit_603@ha /* 0x80646564@ha */
/* 80504FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504FA4  38 E5 65 68 */	addi r7, r5, lit_604@l /* 0x80646568@l */
/* 80504FA8  C0 26 65 64 */	lfs f1, lit_603@l(r6)  /* 0x80646564@l */
/* 80504FAC  3C A0 80 64 */	lis r5, lit_2671@ha /* 0x80646C4C@ha */
/* 80504FB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80504FB4  38 00 00 00 */	li r0, 0
/* 80504FB8  C0 87 00 00 */	lfs f4, 0(r7)
/* 80504FBC  FC 40 08 90 */	fmr f2, f1
/* 80504FC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80504FC4  7C 7E 1B 78 */	mr r30, r3
/* 80504FC8  C0 65 6C 4C */	lfs f3, lit_2671@l(r5)  /* 0x80646C4C@l */
/* 80504FCC  7C 9F 23 78 */	mr r31, r4
/* 80504FD0  D0 83 0D 18 */	stfs f4, 0xd18(r3)
/* 80504FD4  38 A0 00 80 */	li r5, 0x80
/* 80504FD8  38 C0 00 80 */	li r6, 0x80
/* 80504FDC  90 03 0D 1C */	stw r0, 0xd1c(r3)
/* 80504FE0  38 E0 00 00 */	li r7, 0
/* 80504FE4  39 00 00 00 */	li r8, 0
/* 80504FE8  4B FD 18 29 */	bl Player_actor_InitAnimation_Base2
/* 80504FEC  7F C3 F3 78 */	mr r3, r30
/* 80504FF0  7F E4 FB 78 */	mr r4, r31
/* 80504FF4  4B FD 09 05 */	bl Player_actor_setup_main_Base
/* 80504FF8  4B FD AA 15 */	bl Player_actor_sound_Get_bgm_num_forCompletePayment
/* 80504FFC  38 80 01 68 */	li r4, 0x168
/* 80505000  4B E7 69 D1 */	bl mBGMPsComp_make_ps_fanfare
/* 80505004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80505008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050500C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80505010  7C 08 03 A6 */	mtlr r0
/* 80505014  38 21 00 10 */	addi r1, r1, 0x10
/* 80505018  4E 80 00 20 */	blr 
