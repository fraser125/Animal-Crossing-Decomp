lbl_8050FC3C:
/* 8050FC3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050FC40  7C 08 02 A6 */	mflr r0
/* 8050FC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050FC48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050FC4C  93 C1 00 08 */	stw r30, 8(r1)
/* 8050FC50  7C 7E 1B 79 */	or. r30, r3, r3
/* 8050FC54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050FC58  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050FC5C  3F E3 00 02 */	addis r31, r3, 2
/* 8050FC60  3B FF 3E 40 */	addi r31, r31, 0x3e40
/* 8050FC64  41 80 00 24 */	blt lbl_8050FC88
/* 8050FC68  2C 1E 00 05 */	cmpwi r30, 5
/* 8050FC6C  40 80 00 1C */	bge lbl_8050FC88
/* 8050FC70  7F E3 FB 78 */	mr r3, r31
/* 8050FC74  7F C4 F3 78 */	mr r4, r30
/* 8050FC78  4B FF FE 61 */	bl mAGrw_SetMoneyStone_player
/* 8050FC7C  7F E3 FB 78 */	mr r3, r31
/* 8050FC80  7F C4 F3 78 */	mr r4, r30
/* 8050FC84  4B FF FD 69 */	bl mAGrw_SetShineGround_player
lbl_8050FC88:
/* 8050FC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050FC8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050FC90  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050FC94  7C 08 03 A6 */	mtlr r0
/* 8050FC98  38 21 00 10 */	addi r1, r1, 0x10
/* 8050FC9C  4E 80 00 20 */	blr 
