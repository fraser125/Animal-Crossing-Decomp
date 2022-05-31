lbl_8051B968:
/* 8051B968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B96C  7C 08 02 A6 */	mflr r0
/* 8051B970  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B978  7C 7F 1B 78 */	mr r31, r3
/* 8051B97C  38 60 00 08 */	li r3, 8
/* 8051B980  7F E4 FB 78 */	mr r4, r31
/* 8051B984  4B E7 E8 E1 */	bl mDemo_Check
/* 8051B988  2C 03 00 01 */	cmpwi r3, 1
/* 8051B98C  40 82 00 28 */	bne lbl_8051B9B4
/* 8051B990  4B E7 EA 81 */	bl mDemo_Check_ListenAble
/* 8051B994  2C 03 00 00 */	cmpwi r3, 0
/* 8051B998  40 82 00 30 */	bne lbl_8051B9C8
/* 8051B99C  7F E3 FB 78 */	mr r3, r31
/* 8051B9A0  4B FF F0 59 */	bl aEBR2_Set_ListenAble
/* 8051B9A4  7F E3 FB 78 */	mr r3, r31
/* 8051B9A8  38 80 00 0B */	li r4, 0xb
/* 8051B9AC  48 00 01 B9 */	bl aEBR2_setupAction
/* 8051B9B0  48 00 00 18 */	b lbl_8051B9C8
lbl_8051B9B4:
/* 8051B9B4  3C 60 80 52 */	lis r3, aEBR2_set_talk_info_goodbye_wait@ha /* 0x8051B92C@ha */
/* 8051B9B8  7F E4 FB 78 */	mr r4, r31
/* 8051B9BC  38 A3 B9 2C */	addi r5, r3, aEBR2_set_talk_info_goodbye_wait@l /* 0x8051B92C@l */
/* 8051B9C0  38 60 00 08 */	li r3, 8
/* 8051B9C4  4B E7 E7 99 */	bl mDemo_Request
lbl_8051B9C8:
/* 8051B9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B9CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051B9D0  7C 08 03 A6 */	mtlr r0
/* 8051B9D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B9D8  4E 80 00 20 */	blr 
