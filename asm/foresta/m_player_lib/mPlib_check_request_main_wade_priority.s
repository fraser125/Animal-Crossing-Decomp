lbl_803DB1A0:
/* 803DB1A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB1A4  7C 08 02 A6 */	mflr r0
/* 803DB1A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB1AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB1B0  93 C1 00 08 */	stw r30, 8(r1)
/* 803DB1B4  7C 7E 1B 78 */	mr r30, r3
/* 803DB1B8  4B FF E4 DD */	bl mPlib_get_player_actor_request_main_index
/* 803DB1BC  2C 03 00 68 */	cmpwi r3, 0x68
/* 803DB1C0  40 82 00 54 */	bne lbl_803DB214
/* 803DB1C4  7F C3 F3 78 */	mr r3, r30
/* 803DB1C8  3B E0 00 00 */	li r31, 0
/* 803DB1CC  4B FF E4 75 */	bl get_player_actor_withoutCheck
/* 803DB1D0  81 83 12 FC */	lwz r12, 0x12fc(r3)
/* 803DB1D4  7F C3 F3 78 */	mr r3, r30
/* 803DB1D8  38 80 00 02 */	li r4, 2
/* 803DB1DC  7D 89 03 A6 */	mtctr r12
/* 803DB1E0  4E 80 04 21 */	bctrl 
/* 803DB1E4  2C 03 00 00 */	cmpwi r3, 0
/* 803DB1E8  40 81 00 78 */	ble lbl_803DB260
/* 803DB1EC  7F C3 F3 78 */	mr r3, r30
/* 803DB1F0  4B FF E4 51 */	bl get_player_actor_withoutCheck
/* 803DB1F4  81 83 13 30 */	lwz r12, 0x1330(r3)
/* 803DB1F8  38 60 00 68 */	li r3, 0x68
/* 803DB1FC  7D 89 03 A6 */	mtctr r12
/* 803DB200  4E 80 04 21 */	bctrl 
/* 803DB204  2C 03 00 00 */	cmpwi r3, 0
/* 803DB208  40 82 00 58 */	bne lbl_803DB260
/* 803DB20C  3B E0 00 01 */	li r31, 1
/* 803DB210  48 00 00 50 */	b lbl_803DB260
lbl_803DB214:
/* 803DB214  7F C3 F3 78 */	mr r3, r30
/* 803DB218  3B E0 00 00 */	li r31, 0
/* 803DB21C  4B FF E4 25 */	bl get_player_actor_withoutCheck
/* 803DB220  81 83 12 FC */	lwz r12, 0x12fc(r3)
/* 803DB224  7F C3 F3 78 */	mr r3, r30
/* 803DB228  38 80 00 02 */	li r4, 2
/* 803DB22C  7D 89 03 A6 */	mtctr r12
/* 803DB230  4E 80 04 21 */	bctrl 
/* 803DB234  2C 03 00 00 */	cmpwi r3, 0
/* 803DB238  40 81 00 28 */	ble lbl_803DB260
/* 803DB23C  7F C3 F3 78 */	mr r3, r30
/* 803DB240  4B FF E4 01 */	bl get_player_actor_withoutCheck
/* 803DB244  81 83 13 30 */	lwz r12, 0x1330(r3)
/* 803DB248  38 60 00 0F */	li r3, 0xf
/* 803DB24C  7D 89 03 A6 */	mtctr r12
/* 803DB250  4E 80 04 21 */	bctrl 
/* 803DB254  2C 03 00 00 */	cmpwi r3, 0
/* 803DB258  40 82 00 08 */	bne lbl_803DB260
/* 803DB25C  3B E0 00 01 */	li r31, 1
lbl_803DB260:
/* 803DB260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB264  7F E3 FB 78 */	mr r3, r31
/* 803DB268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB26C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DB270  7C 08 03 A6 */	mtlr r0
/* 803DB274  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB278  4E 80 00 20 */	blr 
