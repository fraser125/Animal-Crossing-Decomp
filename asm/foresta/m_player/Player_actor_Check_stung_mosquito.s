lbl_804DE3C0:
/* 804DE3C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE3C4  7C 08 02 A6 */	mflr r0
/* 804DE3C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE3CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DE3D0  7C 9F 23 78 */	mr r31, r4
/* 804DE3D4  93 C1 00 08 */	stw r30, 8(r1)
/* 804DE3D8  7C 7E 1B 78 */	mr r30, r3
/* 804DE3DC  4B EF B2 65 */	bl get_player_actor_withoutCheck
/* 804DE3E0  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804DE3E4  2C 00 00 6C */	cmpwi r0, 0x6c
/* 804DE3E8  41 82 00 30 */	beq lbl_804DE418
/* 804DE3EC  40 80 00 48 */	bge lbl_804DE434
/* 804DE3F0  2C 00 00 6B */	cmpwi r0, 0x6b
/* 804DE3F4  40 80 00 08 */	bge lbl_804DE3FC
/* 804DE3F8  48 00 00 3C */	b lbl_804DE434
lbl_804DE3FC:
/* 804DE3FC  7F C3 F3 78 */	mr r3, r30
/* 804DE400  4B EF B2 41 */	bl get_player_actor_withoutCheck
/* 804DE404  80 03 0D 60 */	lwz r0, 0xd60(r3)
/* 804DE408  7C 00 F8 40 */	cmplw r0, r31
/* 804DE40C  40 82 00 28 */	bne lbl_804DE434
/* 804DE410  38 60 00 01 */	li r3, 1
/* 804DE414  48 00 00 24 */	b lbl_804DE438
lbl_804DE418:
/* 804DE418  7F C3 F3 78 */	mr r3, r30
/* 804DE41C  4B EF B2 25 */	bl get_player_actor_withoutCheck
/* 804DE420  80 03 0D 60 */	lwz r0, 0xd60(r3)
/* 804DE424  7C 00 F8 40 */	cmplw r0, r31
/* 804DE428  40 82 00 0C */	bne lbl_804DE434
/* 804DE42C  38 60 00 01 */	li r3, 1
/* 804DE430  48 00 00 08 */	b lbl_804DE438
lbl_804DE434:
/* 804DE434  38 60 00 00 */	li r3, 0
lbl_804DE438:
/* 804DE438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE43C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DE440  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DE444  7C 08 03 A6 */	mtlr r0
/* 804DE448  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE44C  4E 80 00 20 */	blr 
