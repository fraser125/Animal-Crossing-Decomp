lbl_8054FE40:
/* 8054FE40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054FE44  7C 08 02 A6 */	mflr r0
/* 8054FE48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054FE4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054FE50  7C 7F 1B 78 */	mr r31, r3
/* 8054FE54  38 60 00 07 */	li r3, 7
/* 8054FE58  93 C1 00 08 */	stw r30, 8(r1)
/* 8054FE5C  7C 9E 23 78 */	mr r30, r4
/* 8054FE60  7F E4 FB 78 */	mr r4, r31
/* 8054FE64  4B E4 A4 01 */	bl mDemo_Check
/* 8054FE68  2C 03 00 01 */	cmpwi r3, 1
/* 8054FE6C  40 82 00 2C */	bne lbl_8054FE98
/* 8054FE70  4B E4 A5 A1 */	bl mDemo_Check_ListenAble
/* 8054FE74  2C 03 00 00 */	cmpwi r3, 0
/* 8054FE78  40 82 00 34 */	bne lbl_8054FEAC
/* 8054FE7C  7F E3 FB 78 */	mr r3, r31
/* 8054FE80  4B FF D6 C9 */	bl aNSC_Set_ListenAble
/* 8054FE84  7F E3 FB 78 */	mr r3, r31
/* 8054FE88  7F C4 F3 78 */	mr r4, r30
/* 8054FE8C  38 A0 00 0D */	li r5, 0xd
/* 8054FE90  48 00 29 A5 */	bl aNSC_setupAction
/* 8054FE94  48 00 00 18 */	b lbl_8054FEAC
lbl_8054FE98:
/* 8054FE98  3C 60 80 55 */	lis r3, aNSC_set_talk_info_request_Q_start_wait@ha /* 0x8054FE10@ha */
/* 8054FE9C  7F E4 FB 78 */	mr r4, r31
/* 8054FEA0  38 A3 FE 10 */	addi r5, r3, aNSC_set_talk_info_request_Q_start_wait@l /* 0x8054FE10@l */
/* 8054FEA4  38 60 00 07 */	li r3, 7
/* 8054FEA8  4B E4 A2 B5 */	bl mDemo_Request
lbl_8054FEAC:
/* 8054FEAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054FEB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054FEB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054FEB8  7C 08 03 A6 */	mtlr r0
/* 8054FEBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8054FEC0  4E 80 00 20 */	blr 
