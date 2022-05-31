lbl_8056AA40:
/* 8056AA40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056AA44  7C 08 02 A6 */	mflr r0
/* 8056AA48  38 A0 00 00 */	li r5, 0
/* 8056AA4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056AA50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056AA54  7C 7F 1B 78 */	mr r31, r3
/* 8056AA58  93 C1 00 08 */	stw r30, 8(r1)
/* 8056AA5C  7C 9E 23 78 */	mr r30, r4
/* 8056AA60  80 03 09 A4 */	lwz r0, 0x9a4(r3)
/* 8056AA64  2C 00 00 00 */	cmpwi r0, 0
/* 8056AA68  40 82 00 34 */	bne lbl_8056AA9C
/* 8056AA6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056AA70  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056AA74  3C 63 00 02 */	addis r3, r3, 2
/* 8056AA78  80 03 60 04 */	lwz r0, 0x6004(r3)
/* 8056AA7C  2C 00 00 11 */	cmpwi r0, 0x11
/* 8056AA80  40 82 00 1C */	bne lbl_8056AA9C
/* 8056AA84  88 03 65 20 */	lbz r0, 0x6520(r3)
/* 8056AA88  28 00 00 01 */	cmplwi r0, 1
/* 8056AA8C  40 82 00 10 */	bne lbl_8056AA9C
/* 8056AA90  38 00 00 01 */	li r0, 1
/* 8056AA94  90 1F 09 A4 */	stw r0, 0x9a4(r31)
/* 8056AA98  48 00 00 1C */	b lbl_8056AAB4
lbl_8056AA9C:
/* 8056AA9C  4B FF FD A5 */	bl aPOL_check_player
/* 8056AAA0  2C 03 00 01 */	cmpwi r3, 1
/* 8056AAA4  40 82 00 0C */	bne lbl_8056AAB0
/* 8056AAA8  38 A0 00 02 */	li r5, 2
/* 8056AAAC  48 00 00 08 */	b lbl_8056AAB4
lbl_8056AAB0:
/* 8056AAB0  38 A0 00 01 */	li r5, 1
lbl_8056AAB4:
/* 8056AAB4  81 9F 09 A0 */	lwz r12, 0x9a0(r31)
/* 8056AAB8  7F E3 FB 78 */	mr r3, r31
/* 8056AABC  7F C4 F3 78 */	mr r4, r30
/* 8056AAC0  7D 89 03 A6 */	mtctr r12
/* 8056AAC4  4E 80 04 21 */	bctrl 
/* 8056AAC8  4B E2 F8 ED */	bl mDemo_Set_ListenAble
/* 8056AACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056AAD0  38 60 00 01 */	li r3, 1
/* 8056AAD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056AAD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056AADC  7C 08 03 A6 */	mtlr r0
/* 8056AAE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8056AAE4  4E 80 00 20 */	blr 
