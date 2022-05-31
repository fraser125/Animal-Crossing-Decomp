lbl_8051B668:
/* 8051B668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B66C  7C 08 02 A6 */	mflr r0
/* 8051B670  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B678  7C 7F 1B 78 */	mr r31, r3
/* 8051B67C  38 60 00 08 */	li r3, 8
/* 8051B680  7F E4 FB 78 */	mr r4, r31
/* 8051B684  4B E7 EB E1 */	bl mDemo_Check
/* 8051B688  2C 03 00 01 */	cmpwi r3, 1
/* 8051B68C  40 82 00 30 */	bne lbl_8051B6BC
/* 8051B690  4B E7 ED 81 */	bl mDemo_Check_ListenAble
/* 8051B694  2C 03 00 00 */	cmpwi r3, 0
/* 8051B698  40 82 00 38 */	bne lbl_8051B6D0
/* 8051B69C  7F E3 FB 78 */	mr r3, r31
/* 8051B6A0  4B FF F3 59 */	bl aEBR2_Set_ListenAble
/* 8051B6A4  38 00 00 00 */	li r0, 0
/* 8051B6A8  7F E3 FB 78 */	mr r3, r31
/* 8051B6AC  B0 1F 09 78 */	sth r0, 0x978(r31)
/* 8051B6B0  38 80 00 06 */	li r4, 6
/* 8051B6B4  48 00 04 B1 */	bl aEBR2_setupAction
/* 8051B6B8  48 00 00 18 */	b lbl_8051B6D0
lbl_8051B6BC:
/* 8051B6BC  3C 60 80 52 */	lis r3, aEBR2_set_talk_info_say_hello@ha /* 0x8051B644@ha */
/* 8051B6C0  7F E4 FB 78 */	mr r4, r31
/* 8051B6C4  38 A3 B6 44 */	addi r5, r3, aEBR2_set_talk_info_say_hello@l /* 0x8051B644@l */
/* 8051B6C8  38 60 00 08 */	li r3, 8
/* 8051B6CC  4B E7 EA 91 */	bl mDemo_Request
lbl_8051B6D0:
/* 8051B6D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B6D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051B6D8  7C 08 03 A6 */	mtlr r0
/* 8051B6DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B6E0  4E 80 00 20 */	blr 
