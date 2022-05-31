lbl_803DB124:
/* 803DB124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB128  7C 08 02 A6 */	mflr r0
/* 803DB12C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB130  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB134  3B E0 00 00 */	li r31, 0
/* 803DB138  93 C1 00 08 */	stw r30, 8(r1)
/* 803DB13C  7C 7E 1B 78 */	mr r30, r3
/* 803DB140  4B FF E5 01 */	bl get_player_actor_withoutCheck
/* 803DB144  81 83 12 FC */	lwz r12, 0x12fc(r3)
/* 803DB148  7F C3 F3 78 */	mr r3, r30
/* 803DB14C  38 80 00 13 */	li r4, 0x13
/* 803DB150  7D 89 03 A6 */	mtctr r12
/* 803DB154  4E 80 04 21 */	bctrl 
/* 803DB158  2C 03 00 00 */	cmpwi r3, 0
/* 803DB15C  40 81 00 28 */	ble lbl_803DB184
/* 803DB160  7F C3 F3 78 */	mr r3, r30
/* 803DB164  4B FF E4 DD */	bl get_player_actor_withoutCheck
/* 803DB168  81 83 13 30 */	lwz r12, 0x1330(r3)
/* 803DB16C  38 60 00 10 */	li r3, 0x10
/* 803DB170  7D 89 03 A6 */	mtctr r12
/* 803DB174  4E 80 04 21 */	bctrl 
/* 803DB178  2C 03 00 00 */	cmpwi r3, 0
/* 803DB17C  40 82 00 08 */	bne lbl_803DB184
/* 803DB180  3B E0 00 01 */	li r31, 1
lbl_803DB184:
/* 803DB184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB188  7F E3 FB 78 */	mr r3, r31
/* 803DB18C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB190  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DB194  7C 08 03 A6 */	mtlr r0
/* 803DB198  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB19C  4E 80 00 20 */	blr 
