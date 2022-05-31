lbl_804D5758:
/* 804D5758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D575C  7C 08 02 A6 */	mflr r0
/* 804D5760  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D5768  7C 7F 1B 78 */	mr r31, r3
/* 804D576C  7C 83 23 78 */	mr r3, r4
/* 804D5770  4B F0 3F 01 */	bl mPlib_get_player_actor_main_index
/* 804D5774  2C 03 00 48 */	cmpwi r3, 0x48
/* 804D5778  41 82 00 10 */	beq lbl_804D5788
/* 804D577C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804D5780  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804D5784  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
lbl_804D5788:
/* 804D5788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D578C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D5790  7C 08 03 A6 */	mtlr r0
/* 804D5794  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5798  4E 80 00 20 */	blr 
