lbl_8056058C:
/* 8056058C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560590  7C 08 02 A6 */	mflr r0
/* 80560594  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560598  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056059C  7C 7F 1B 78 */	mr r31, r3
/* 805605A0  38 60 00 08 */	li r3, 8
/* 805605A4  93 C1 00 08 */	stw r30, 8(r1)
/* 805605A8  7C 9E 23 78 */	mr r30, r4
/* 805605AC  7F E4 FB 78 */	mr r4, r31
/* 805605B0  4B E3 9C B5 */	bl mDemo_Check
/* 805605B4  2C 03 00 01 */	cmpwi r3, 1
/* 805605B8  40 82 00 40 */	bne lbl_805605F8
/* 805605BC  4B E3 9E 55 */	bl mDemo_Check_ListenAble
/* 805605C0  2C 03 00 00 */	cmpwi r3, 0
/* 805605C4  40 82 00 48 */	bne lbl_8056060C
/* 805605C8  A8 9F 00 B6 */	lha r4, 0xb6(r31)
/* 805605CC  38 7F 00 DE */	addi r3, r31, 0xde
/* 805605D0  38 A0 04 00 */	li r5, 0x400
/* 805605D4  4B E5 A5 71 */	bl chase_angle
/* 805605D8  2C 03 00 01 */	cmpwi r3, 1
/* 805605DC  40 82 00 30 */	bne lbl_8056060C
/* 805605E0  7F E3 FB 78 */	mr r3, r31
/* 805605E4  7F C4 F3 78 */	mr r4, r30
/* 805605E8  38 A0 00 11 */	li r5, 0x11
/* 805605EC  48 00 08 05 */	bl aNM2_setupAction
/* 805605F0  4B E3 9D C5 */	bl mDemo_Set_ListenAble
/* 805605F4  48 00 00 18 */	b lbl_8056060C
lbl_805605F8:
/* 805605F8  3C 60 80 56 */	lis r3, aNM2_set_talk_info_talk_start_wait@ha /* 0x805604F0@ha */
/* 805605FC  7F E4 FB 78 */	mr r4, r31
/* 80560600  38 A3 04 F0 */	addi r5, r3, aNM2_set_talk_info_talk_start_wait@l /* 0x805604F0@l */
/* 80560604  38 60 00 08 */	li r3, 8
/* 80560608  4B E3 9B 55 */	bl mDemo_Request
lbl_8056060C:
/* 8056060C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560610  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80560614  83 C1 00 08 */	lwz r30, 8(r1)
/* 80560618  7C 08 03 A6 */	mtlr r0
/* 8056061C  38 21 00 10 */	addi r1, r1, 0x10
/* 80560620  4E 80 00 20 */	blr 
