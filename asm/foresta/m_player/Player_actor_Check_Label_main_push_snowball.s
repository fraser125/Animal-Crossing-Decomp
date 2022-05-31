lbl_804DD278:
/* 804DD278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DD27C  7C 08 02 A6 */	mflr r0
/* 804DD280  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DD284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DD288  7C 9F 23 78 */	mr r31, r4
/* 804DD28C  4B EF C3 B5 */	bl get_player_actor_withoutCheck
/* 804DD290  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804DD294  2C 00 00 66 */	cmpwi r0, 0x66
/* 804DD298  40 82 00 18 */	bne lbl_804DD2B0
/* 804DD29C  80 03 0D 18 */	lwz r0, 0xd18(r3)
/* 804DD2A0  7C 00 F8 40 */	cmplw r0, r31
/* 804DD2A4  40 82 00 0C */	bne lbl_804DD2B0
/* 804DD2A8  38 60 00 01 */	li r3, 1
/* 804DD2AC  48 00 00 08 */	b lbl_804DD2B4
lbl_804DD2B0:
/* 804DD2B0  38 60 00 00 */	li r3, 0
lbl_804DD2B4:
/* 804DD2B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DD2B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DD2BC  7C 08 03 A6 */	mtlr r0
/* 804DD2C0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DD2C4  4E 80 00 20 */	blr 
