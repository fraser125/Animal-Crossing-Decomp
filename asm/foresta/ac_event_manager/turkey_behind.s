lbl_804218B8:
/* 804218B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804218BC  7C 08 02 A6 */	mflr r0
/* 804218C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804218C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804218C8  7C 9F 23 78 */	mr r31, r4
/* 804218CC  93 C1 00 08 */	stw r30, 8(r1)
/* 804218D0  7C 7E 1B 78 */	mr r30, r3
/* 804218D4  80 64 00 00 */	lwz r3, 0(r4)
/* 804218D8  38 80 00 40 */	li r4, 0x40
/* 804218DC  4B F7 C2 25 */	bl mEv_check_status
/* 804218E0  2C 03 00 00 */	cmpwi r3, 0
/* 804218E4  41 82 00 30 */	beq lbl_80421914
/* 804218E8  7F C3 F3 78 */	mr r3, r30
/* 804218EC  7F E4 FB 78 */	mr r4, r31
/* 804218F0  38 A0 00 51 */	li r5, 0x51
/* 804218F4  4B FF B6 E5 */	bl walk_actor_at_wade_hide
/* 804218F8  28 03 00 00 */	cmplwi r3, 0
/* 804218FC  41 82 00 18 */	beq lbl_80421914
/* 80421900  80 7F 00 00 */	lwz r3, 0(r31)
/* 80421904  38 80 00 40 */	li r4, 0x40
/* 80421908  4B F7 C1 79 */	bl mEv_clear_status
/* 8042190C  38 60 00 01 */	li r3, 1
/* 80421910  48 00 00 08 */	b lbl_80421918
lbl_80421914:
/* 80421914  38 60 00 00 */	li r3, 0
lbl_80421918:
/* 80421918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042191C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80421920  83 C1 00 08 */	lwz r30, 8(r1)
/* 80421924  7C 08 03 A6 */	mtlr r0
/* 80421928  38 21 00 10 */	addi r1, r1, 0x10
/* 8042192C  4E 80 00 20 */	blr 
