lbl_804DAF14:
/* 804DAF14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAF18  7C 08 02 A6 */	mflr r0
/* 804DAF1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAF20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAF24  93 C1 00 08 */	stw r30, 8(r1)
/* 804DAF28  4B EF E7 19 */	bl get_player_actor_withoutCheck
/* 804DAF2C  7C 7F 1B 78 */	mr r31, r3
/* 804DAF30  8B C3 11 2B */	lbz r30, 0x112b(r3)
/* 804DAF34  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804DAF38  48 00 5A 6D */	bl Player_actor_Get_ItemKind
/* 804DAF3C  7F C4 07 74 */	extsb r4, r30
/* 804DAF40  7C 60 07 74 */	extsb r0, r3
/* 804DAF44  7C 04 00 00 */	cmpw r4, r0
/* 804DAF48  41 82 00 20 */	beq lbl_804DAF68
/* 804DAF4C  80 7F 0C F8 */	lwz r3, 0xcf8(r31)
/* 804DAF50  2C 03 00 0B */	cmpwi r3, 0xb
/* 804DAF54  40 80 00 14 */	bge lbl_804DAF68
/* 804DAF58  2C 03 00 07 */	cmpwi r3, 7
/* 804DAF5C  40 80 00 10 */	bge lbl_804DAF6C
/* 804DAF60  48 00 00 08 */	b lbl_804DAF68
/* 804DAF64  48 00 00 08 */	b lbl_804DAF6C
lbl_804DAF68:
/* 804DAF68  38 60 FF FF */	li r3, -1
lbl_804DAF6C:
/* 804DAF6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DAF70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DAF74  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DAF78  7C 08 03 A6 */	mtlr r0
/* 804DAF7C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DAF80  4E 80 00 20 */	blr 
