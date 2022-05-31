lbl_80416CC4:
/* 80416CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416CC8  7C 08 02 A6 */	mflr r0
/* 80416CCC  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80416CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416CD8  93 C1 00 08 */	stw r30, 8(r1)
/* 80416CDC  7C 7E 1B 78 */	mr r30, r3
/* 80416CE0  83 E4 52 F0 */	lwz r31, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 80416CE4  7F E3 FB 78 */	mr r3, r31
/* 80416CE8  4B FC 29 59 */	bl get_player_actor_withoutCheck
/* 80416CEC  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 80416CF0  7F E3 FB 78 */	mr r3, r31
/* 80416CF4  7D 89 03 A6 */	mtctr r12
/* 80416CF8  4E 80 04 21 */	bctrl 
/* 80416CFC  7C 03 F0 40 */	cmplw r3, r30
/* 80416D00  40 82 00 14 */	bne lbl_80416D14
/* 80416D04  38 60 02 49 */	li r3, 0x249
/* 80416D08  4B F6 4E 05 */	bl mBGMPsComp_make_ps_wipe
/* 80416D0C  7F C3 F3 78 */	mr r3, r30
/* 80416D10  48 00 00 6D */	bl Cottage_move_open_in_init
lbl_80416D14:
/* 80416D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416D18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80416D1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80416D20  7C 08 03 A6 */	mtlr r0
/* 80416D24  38 21 00 10 */	addi r1, r1, 0x10
/* 80416D28  4E 80 00 20 */	blr 
