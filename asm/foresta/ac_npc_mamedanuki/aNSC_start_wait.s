lbl_8055C378:
/* 8055C378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055C37C  7C 08 02 A6 */	mflr r0
/* 8055C380  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055C384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055C388  7C 7F 1B 78 */	mr r31, r3
/* 8055C38C  38 60 00 08 */	li r3, 8
/* 8055C390  93 C1 00 08 */	stw r30, 8(r1)
/* 8055C394  7C 9E 23 78 */	mr r30, r4
/* 8055C398  7F E4 FB 78 */	mr r4, r31
/* 8055C39C  4B E3 DE C9 */	bl mDemo_Check
/* 8055C3A0  2C 03 00 01 */	cmpwi r3, 1
/* 8055C3A4  40 82 00 2C */	bne lbl_8055C3D0
/* 8055C3A8  4B E3 E0 69 */	bl mDemo_Check_ListenAble
/* 8055C3AC  2C 03 00 00 */	cmpwi r3, 0
/* 8055C3B0  40 82 00 34 */	bne lbl_8055C3E4
/* 8055C3B4  7F E3 FB 78 */	mr r3, r31
/* 8055C3B8  4B FF E1 7D */	bl aNSC_Set_ListenAble
/* 8055C3BC  7F E3 FB 78 */	mr r3, r31
/* 8055C3C0  7F C4 F3 78 */	mr r4, r30
/* 8055C3C4  38 A0 00 01 */	li r5, 1
/* 8055C3C8  48 00 2A 09 */	bl aNSC_setupAction
/* 8055C3CC  48 00 00 18 */	b lbl_8055C3E4
lbl_8055C3D0:
/* 8055C3D0  3C 60 80 56 */	lis r3, aNSC_set_talk_info_start_wait@ha /* 0x8055C324@ha */
/* 8055C3D4  7F E4 FB 78 */	mr r4, r31
/* 8055C3D8  38 A3 C3 24 */	addi r5, r3, aNSC_set_talk_info_start_wait@l /* 0x8055C324@l */
/* 8055C3DC  38 60 00 08 */	li r3, 8
/* 8055C3E0  4B E3 DD 7D */	bl mDemo_Request
lbl_8055C3E4:
/* 8055C3E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055C3E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055C3EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055C3F0  7C 08 03 A6 */	mtlr r0
/* 8055C3F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8055C3F8  4E 80 00 20 */	blr 
