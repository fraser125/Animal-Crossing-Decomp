lbl_8054A390:
/* 8054A390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A394  7C 08 02 A6 */	mflr r0
/* 8054A398  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A39C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054A3A0  7C 7F 1B 78 */	mr r31, r3
/* 8054A3A4  38 60 00 08 */	li r3, 8
/* 8054A3A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8054A3AC  7C 9E 23 78 */	mr r30, r4
/* 8054A3B0  7F E4 FB 78 */	mr r4, r31
/* 8054A3B4  4B E4 FE B1 */	bl mDemo_Check
/* 8054A3B8  2C 03 00 01 */	cmpwi r3, 1
/* 8054A3BC  40 82 00 44 */	bne lbl_8054A400
/* 8054A3C0  4B E5 00 51 */	bl mDemo_Check_ListenAble
/* 8054A3C4  2C 03 00 00 */	cmpwi r3, 0
/* 8054A3C8  40 82 00 4C */	bne lbl_8054A414
/* 8054A3CC  A8 9F 09 A6 */	lha r4, 0x9a6(r31)
/* 8054A3D0  38 7F 00 DE */	addi r3, r31, 0xde
/* 8054A3D4  38 A0 08 00 */	li r5, 0x800
/* 8054A3D8  4B E7 07 6D */	bl chase_angle
/* 8054A3DC  2C 03 00 01 */	cmpwi r3, 1
/* 8054A3E0  40 82 00 34 */	bne lbl_8054A414
/* 8054A3E4  7F E3 FB 78 */	mr r3, r31
/* 8054A3E8  4B FF B8 49 */	bl aNSC_Set_ListenAble
/* 8054A3EC  7F E3 FB 78 */	mr r3, r31
/* 8054A3F0  7F C4 F3 78 */	mr r4, r30
/* 8054A3F4  38 A0 00 44 */	li r5, 0x44
/* 8054A3F8  48 00 0B 25 */	bl aNSC_setupAction
/* 8054A3FC  48 00 00 18 */	b lbl_8054A414
lbl_8054A400:
/* 8054A400  3C 60 80 55 */	lis r3, aNSC_set_talk_info_goodbye_wait@ha /* 0x8054A360@ha */
/* 8054A404  7F E4 FB 78 */	mr r4, r31
/* 8054A408  38 A3 A3 60 */	addi r5, r3, aNSC_set_talk_info_goodbye_wait@l /* 0x8054A360@l */
/* 8054A40C  38 60 00 08 */	li r3, 8
/* 8054A410  4B E4 FD 4D */	bl mDemo_Request
lbl_8054A414:
/* 8054A414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A418  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054A41C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054A420  7C 08 03 A6 */	mtlr r0
/* 8054A424  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A428  4E 80 00 20 */	blr 
