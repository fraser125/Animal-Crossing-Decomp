lbl_80522C94:
/* 80522C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80522C98  7C 08 02 A6 */	mflr r0
/* 80522C9C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80522CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80522CA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80522CA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80522CAC  7C 7E 1B 78 */	mr r30, r3
/* 80522CB0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80522CB4  3C 63 00 02 */	addis r3, r3, 2
/* 80522CB8  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80522CBC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80522CC0  28 00 00 00 */	cmplwi r0, 0
/* 80522CC4  40 82 00 58 */	bne lbl_80522D1C
/* 80522CC8  A0 1E 09 A2 */	lhz r0, 0x9a2(r30)
/* 80522CCC  3B E0 00 07 */	li r31, 7
/* 80522CD0  38 60 09 B8 */	li r3, 0x9b8
/* 80522CD4  28 00 22 00 */	cmplwi r0, 0x2200
/* 80522CD8  41 80 00 0C */	blt lbl_80522CE4
/* 80522CDC  28 00 22 03 */	cmplwi r0, 0x2203
/* 80522CE0  40 81 00 14 */	ble lbl_80522CF4
lbl_80522CE4:
/* 80522CE4  28 00 22 39 */	cmplwi r0, 0x2239
/* 80522CE8  41 80 00 24 */	blt lbl_80522D0C
/* 80522CEC  28 00 22 3C */	cmplwi r0, 0x223c
/* 80522CF0  41 81 00 1C */	bgt lbl_80522D0C
lbl_80522CF4:
/* 80522CF4  38 60 00 04 */	li r3, 4
/* 80522CF8  38 80 00 01 */	li r4, 1
/* 80522CFC  38 A0 00 00 */	li r5, 0
/* 80522D00  4B E7 57 39 */	bl mDemo_Set_OrderValue
/* 80522D04  38 60 09 BB */	li r3, 0x9bb
/* 80522D08  3B E0 00 05 */	li r31, 5
lbl_80522D0C:
/* 80522D0C  4B FF FC 55 */	bl aEPK_restart_msg_win
/* 80522D10  7F C3 F3 78 */	mr r3, r30
/* 80522D14  7F E4 FB 78 */	mr r4, r31
/* 80522D18  48 00 04 C9 */	bl aEPK_change_talk_proc
lbl_80522D1C:
/* 80522D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80522D20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80522D24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80522D28  7C 08 03 A6 */	mtlr r0
/* 80522D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80522D30  4E 80 00 20 */	blr 
