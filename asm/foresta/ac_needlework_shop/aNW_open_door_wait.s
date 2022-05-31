lbl_805B6D44:
/* 805B6D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B6D48  7C 08 02 A6 */	mflr r0
/* 805B6D4C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805B6D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B6D54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B6D58  93 C1 00 08 */	stw r30, 8(r1)
/* 805B6D5C  7C 7E 1B 78 */	mr r30, r3
/* 805B6D60  83 E4 52 F0 */	lwz r31, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 805B6D64  7F E3 FB 78 */	mr r3, r31
/* 805B6D68  4B E2 28 D9 */	bl get_player_actor_withoutCheck
/* 805B6D6C  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 805B6D70  7F E3 FB 78 */	mr r3, r31
/* 805B6D74  7D 89 03 A6 */	mtctr r12
/* 805B6D78  4E 80 04 21 */	bctrl 
/* 805B6D7C  7C 1E 18 40 */	cmplw r30, r3
/* 805B6D80  40 82 00 30 */	bne lbl_805B6DB0
/* 805B6D84  3C 60 80 65 */	lis r3, lit_599@ha /* 0x8064A9E0@ha */
/* 805B6D88  38 00 00 03 */	li r0, 3
/* 805B6D8C  C0 23 A9 E0 */	lfs f1, lit_599@l(r3)  /* 0x8064A9E0@l */
/* 805B6D90  7F C3 F3 78 */	mr r3, r30
/* 805B6D94  90 1E 02 B0 */	stw r0, 0x2b0(r30)
/* 805B6D98  4B FF FC D1 */	bl aNW_setup_animation
/* 805B6D9C  7F C3 F3 78 */	mr r3, r30
/* 805B6DA0  38 80 00 02 */	li r4, 2
/* 805B6DA4  48 00 00 C1 */	bl aNW_setup_action
/* 805B6DA8  38 60 02 49 */	li r3, 0x249
/* 805B6DAC  4B DC 4D 61 */	bl mBGMPsComp_make_ps_wipe
lbl_805B6DB0:
/* 805B6DB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B6DB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B6DB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B6DBC  7C 08 03 A6 */	mtlr r0
/* 805B6DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 805B6DC4  4E 80 00 20 */	blr 
