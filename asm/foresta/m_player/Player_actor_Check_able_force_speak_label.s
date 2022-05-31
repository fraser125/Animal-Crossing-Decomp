lbl_804DE290:
/* 804DE290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE294  7C 08 02 A6 */	mflr r0
/* 804DE298  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE29C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DE2A0  7C 9F 23 78 */	mr r31, r4
/* 804DE2A4  4B EF B3 9D */	bl get_player_actor_withoutCheck
/* 804DE2A8  80 03 12 20 */	lwz r0, 0x1220(r3)
/* 804DE2AC  28 00 00 00 */	cmplwi r0, 0
/* 804DE2B0  40 82 00 0C */	bne lbl_804DE2BC
/* 804DE2B4  38 60 00 01 */	li r3, 1
/* 804DE2B8  48 00 00 10 */	b lbl_804DE2C8
lbl_804DE2BC:
/* 804DE2BC  7C 00 F8 50 */	subf r0, r0, r31
/* 804DE2C0  7C 00 00 34 */	cntlzw r0, r0
/* 804DE2C4  54 03 D9 7E */	srwi r3, r0, 5
lbl_804DE2C8:
/* 804DE2C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE2CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DE2D0  7C 08 03 A6 */	mtlr r0
/* 804DE2D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE2D8  4E 80 00 20 */	blr 
