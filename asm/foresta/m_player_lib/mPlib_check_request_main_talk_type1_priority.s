lbl_803DAF50:
/* 803DAF50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DAF54  7C 08 02 A6 */	mflr r0
/* 803DAF58  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DAF5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DAF60  3B E0 00 00 */	li r31, 0
/* 803DAF64  93 C1 00 08 */	stw r30, 8(r1)
/* 803DAF68  7C 7E 1B 78 */	mr r30, r3
/* 803DAF6C  4B FF E6 D5 */	bl get_player_actor_withoutCheck
/* 803DAF70  81 83 12 FC */	lwz r12, 0x12fc(r3)
/* 803DAF74  7F C3 F3 78 */	mr r3, r30
/* 803DAF78  38 80 00 13 */	li r4, 0x13
/* 803DAF7C  7D 89 03 A6 */	mtctr r12
/* 803DAF80  4E 80 04 21 */	bctrl 
/* 803DAF84  2C 03 00 00 */	cmpwi r3, 0
/* 803DAF88  40 81 00 88 */	ble lbl_803DB010
/* 803DAF8C  7F C3 F3 78 */	mr r3, r30
/* 803DAF90  4B FF E6 B1 */	bl get_player_actor_withoutCheck
/* 803DAF94  81 83 13 30 */	lwz r12, 0x1330(r3)
/* 803DAF98  38 60 00 41 */	li r3, 0x41
/* 803DAF9C  7D 89 03 A6 */	mtctr r12
/* 803DAFA0  4E 80 04 21 */	bctrl 
/* 803DAFA4  2C 03 00 00 */	cmpwi r3, 0
/* 803DAFA8  40 82 00 68 */	bne lbl_803DB010
/* 803DAFAC  7F C3 F3 78 */	mr r3, r30
/* 803DAFB0  4B FF E6 C1 */	bl mPlib_get_player_actor_main_index
/* 803DAFB4  2C 03 00 4A */	cmpwi r3, 0x4a
/* 803DAFB8  41 82 00 58 */	beq lbl_803DB010
/* 803DAFBC  7F C3 F3 78 */	mr r3, r30
/* 803DAFC0  4B FF E6 B1 */	bl mPlib_get_player_actor_main_index
/* 803DAFC4  2C 03 00 4B */	cmpwi r3, 0x4b
/* 803DAFC8  41 82 00 48 */	beq lbl_803DB010
/* 803DAFCC  7F C3 F3 78 */	mr r3, r30
/* 803DAFD0  4B FF E6 A1 */	bl mPlib_get_player_actor_main_index
/* 803DAFD4  2C 03 00 55 */	cmpwi r3, 0x55
/* 803DAFD8  41 82 00 38 */	beq lbl_803DB010
/* 803DAFDC  7F C3 F3 78 */	mr r3, r30
/* 803DAFE0  4B FF E6 91 */	bl mPlib_get_player_actor_main_index
/* 803DAFE4  2C 03 00 41 */	cmpwi r3, 0x41
/* 803DAFE8  41 82 00 28 */	beq lbl_803DB010
/* 803DAFEC  7F C3 F3 78 */	mr r3, r30
/* 803DAFF0  4B FF E6 81 */	bl mPlib_get_player_actor_main_index
/* 803DAFF4  2C 03 00 54 */	cmpwi r3, 0x54
/* 803DAFF8  41 82 00 18 */	beq lbl_803DB010
/* 803DAFFC  7F C3 F3 78 */	mr r3, r30
/* 803DB000  4B FF E6 71 */	bl mPlib_get_player_actor_main_index
/* 803DB004  2C 03 00 4F */	cmpwi r3, 0x4f
/* 803DB008  41 82 00 08 */	beq lbl_803DB010
/* 803DB00C  3B E0 00 01 */	li r31, 1
lbl_803DB010:
/* 803DB010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB014  7F E3 FB 78 */	mr r3, r31
/* 803DB018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB01C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DB020  7C 08 03 A6 */	mtlr r0
/* 803DB024  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB028  4E 80 00 20 */	blr 
