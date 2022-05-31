lbl_8056BB5C:
/* 8056BB5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056BB60  7C 08 02 A6 */	mflr r0
/* 8056BB64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056BB68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056BB6C  7C 7F 1B 78 */	mr r31, r3
/* 8056BB70  93 C1 00 08 */	stw r30, 8(r1)
/* 8056BB74  7C 9E 23 78 */	mr r30, r4
/* 8056BB78  4B FF FE 3D */	bl aPOL2_message_ctrl
/* 8056BB7C  7F E4 FB 78 */	mr r4, r31
/* 8056BB80  38 60 00 08 */	li r3, 8
/* 8056BB84  4B E2 E6 E1 */	bl mDemo_Check
/* 8056BB88  2C 03 00 01 */	cmpwi r3, 1
/* 8056BB8C  40 82 00 60 */	bne lbl_8056BBEC
/* 8056BB90  4B E2 E8 81 */	bl mDemo_Check_ListenAble
/* 8056BB94  2C 03 00 00 */	cmpwi r3, 0
/* 8056BB98  40 82 00 F0 */	bne lbl_8056BC88
/* 8056BB9C  A8 9F 09 A0 */	lha r4, 0x9a0(r31)
/* 8056BBA0  38 7F 00 DE */	addi r3, r31, 0xde
/* 8056BBA4  38 A0 08 00 */	li r5, 0x800
/* 8056BBA8  4B E4 EF 9D */	bl chase_angle
/* 8056BBAC  2C 03 00 01 */	cmpwi r3, 1
/* 8056BBB0  40 82 00 30 */	bne lbl_8056BBE0
/* 8056BBB4  7F E3 FB 78 */	mr r3, r31
/* 8056BBB8  4B E5 37 81 */	bl mMld_ActorMakeMelody
/* 8056BBBC  38 00 00 00 */	li r0, 0
/* 8056BBC0  B0 1F 09 78 */	sth r0, 0x978(r31)
/* 8056BBC4  4B E2 E7 F1 */	bl mDemo_Set_ListenAble
/* 8056BBC8  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8056BBCC  7F E3 FB 78 */	mr r3, r31
/* 8056BBD0  7C 00 00 34 */	cntlzw r0, r0
/* 8056BBD4  54 04 D9 7E */	srwi r4, r0, 5
/* 8056BBD8  38 84 00 07 */	addi r4, r4, 7
/* 8056BBDC  48 00 05 25 */	bl aPOL2_setupAction
lbl_8056BBE0:
/* 8056BBE0  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8056BBE4  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8056BBE8  48 00 00 A0 */	b lbl_8056BC88
lbl_8056BBEC:
/* 8056BBEC  7F E4 FB 78 */	mr r4, r31
/* 8056BBF0  38 60 00 07 */	li r3, 7
/* 8056BBF4  4B E2 E6 71 */	bl mDemo_Check
/* 8056BBF8  2C 03 00 01 */	cmpwi r3, 1
/* 8056BBFC  40 82 00 4C */	bne lbl_8056BC48
/* 8056BC00  4B E2 E8 11 */	bl mDemo_Check_ListenAble
/* 8056BC04  2C 03 00 00 */	cmpwi r3, 0
/* 8056BC08  40 82 00 80 */	bne lbl_8056BC88
/* 8056BC0C  A8 9F 09 A0 */	lha r4, 0x9a0(r31)
/* 8056BC10  38 7F 00 DE */	addi r3, r31, 0xde
/* 8056BC14  38 A0 08 00 */	li r5, 0x800
/* 8056BC18  4B E4 EF 2D */	bl chase_angle
/* 8056BC1C  2C 03 00 01 */	cmpwi r3, 1
/* 8056BC20  40 82 00 1C */	bne lbl_8056BC3C
/* 8056BC24  7F E3 FB 78 */	mr r3, r31
/* 8056BC28  4B E5 37 11 */	bl mMld_ActorMakeMelody
/* 8056BC2C  4B E2 E7 89 */	bl mDemo_Set_ListenAble
/* 8056BC30  7F E3 FB 78 */	mr r3, r31
/* 8056BC34  38 80 00 08 */	li r4, 8
/* 8056BC38  48 00 04 C9 */	bl aPOL2_setupAction
lbl_8056BC3C:
/* 8056BC3C  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8056BC40  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8056BC44  48 00 00 44 */	b lbl_8056BC88
lbl_8056BC48:
/* 8056BC48  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8056BC4C  2C 00 00 00 */	cmpwi r0, 0
/* 8056BC50  41 82 00 38 */	beq lbl_8056BC88
/* 8056BC54  7F E3 FB 78 */	mr r3, r31
/* 8056BC58  7F C4 F3 78 */	mr r4, r30
/* 8056BC5C  4B FF F8 C9 */	bl aPOL2_decide_next_move_act
/* 8056BC60  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8056BC64  7C 64 1B 78 */	mr r4, r3
/* 8056BC68  7C 04 00 00 */	cmpw r4, r0
/* 8056BC6C  41 82 00 10 */	beq lbl_8056BC7C
/* 8056BC70  7F E3 FB 78 */	mr r3, r31
/* 8056BC74  48 00 04 8D */	bl aPOL2_setupAction
/* 8056BC78  48 00 00 10 */	b lbl_8056BC88
lbl_8056BC7C:
/* 8056BC7C  7F E3 FB 78 */	mr r3, r31
/* 8056BC80  7F C4 F3 78 */	mr r4, r30
/* 8056BC84  4B FF F9 AD */	bl aPOL2_search_player
lbl_8056BC88:
/* 8056BC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056BC8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056BC90  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056BC94  7C 08 03 A6 */	mtlr r0
/* 8056BC98  38 21 00 10 */	addi r1, r1, 0x10
/* 8056BC9C  4E 80 00 20 */	blr 
