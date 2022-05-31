lbl_805F9E24:
/* 805F9E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F9E28  7C 08 02 A6 */	mflr r0
/* 805F9E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F9E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F9E34  7C 9F 23 78 */	mr r31, r4
/* 805F9E38  93 C1 00 08 */	stw r30, 8(r1)
/* 805F9E3C  7C 7E 1B 78 */	mr r30, r3
/* 805F9E40  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805F9E44  2C 00 00 04 */	cmpwi r0, 4
/* 805F9E48  40 82 00 24 */	bne lbl_805F9E6C
/* 805F9E4C  38 00 00 00 */	li r0, 0
/* 805F9E50  38 80 00 04 */	li r4, 4
/* 805F9E54  90 1F 00 38 */	stw r0, 0x38(r31)
/* 805F9E58  38 00 00 02 */	li r0, 2
/* 805F9E5C  38 60 00 01 */	li r3, 1
/* 805F9E60  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 805F9E64  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9E68  48 00 01 18 */	b lbl_805F9F80
lbl_805F9E6C:
/* 805F9E6C  2C 00 00 00 */	cmpwi r0, 0
/* 805F9E70  40 82 00 E4 */	bne lbl_805F9F54
/* 805F9E74  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805F9E78  80 83 09 80 */	lwz r4, 0x980(r3)
/* 805F9E7C  A0 64 02 34 */	lhz r3, 0x234(r4)
/* 805F9E80  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 805F9E84  54 65 C7 3E */	rlwinm r5, r3, 0x18, 0x1c, 0x1f
/* 805F9E88  2C 00 00 02 */	cmpwi r0, 2
/* 805F9E8C  40 82 00 5C */	bne lbl_805F9EE8
/* 805F9E90  80 04 03 60 */	lwz r0, 0x360(r4)
/* 805F9E94  28 00 00 00 */	cmplwi r0, 0
/* 805F9E98  40 82 00 50 */	bne lbl_805F9EE8
/* 805F9E9C  2C 05 00 01 */	cmpwi r5, 1
/* 805F9EA0  40 82 00 20 */	bne lbl_805F9EC0
/* 805F9EA4  38 60 00 02 */	li r3, 2
/* 805F9EA8  38 00 00 00 */	li r0, 0
/* 805F9EAC  90 7F 00 38 */	stw r3, 0x38(r31)
/* 805F9EB0  38 60 00 01 */	li r3, 1
/* 805F9EB4  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 805F9EB8  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9EBC  48 00 00 C4 */	b lbl_805F9F80
lbl_805F9EC0:
/* 805F9EC0  4B FF F9 F9 */	bl mTG_move_check_hand_item_on_player
/* 805F9EC4  2C 03 00 00 */	cmpwi r3, 0
/* 805F9EC8  41 82 00 20 */	beq lbl_805F9EE8
/* 805F9ECC  38 60 00 03 */	li r3, 3
/* 805F9ED0  38 00 00 00 */	li r0, 0
/* 805F9ED4  90 7F 00 38 */	stw r3, 0x38(r31)
/* 805F9ED8  38 60 00 01 */	li r3, 1
/* 805F9EDC  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 805F9EE0  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9EE4  48 00 00 9C */	b lbl_805F9F80
lbl_805F9EE8:
/* 805F9EE8  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 805F9EEC  2C 00 00 02 */	cmpwi r0, 2
/* 805F9EF0  40 80 00 34 */	bge lbl_805F9F24
/* 805F9EF4  7F C3 F3 78 */	mr r3, r30
/* 805F9EF8  38 80 00 03 */	li r4, 3
/* 805F9EFC  4B FF FA 05 */	bl mTG_move_check_hand_item
/* 805F9F00  2C 03 00 00 */	cmpwi r3, 0
/* 805F9F04  41 82 00 78 */	beq lbl_805F9F7C
/* 805F9F08  38 60 00 03 */	li r3, 3
/* 805F9F0C  38 00 00 00 */	li r0, 0
/* 805F9F10  90 7F 00 38 */	stw r3, 0x38(r31)
/* 805F9F14  38 60 00 01 */	li r3, 1
/* 805F9F18  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 805F9F1C  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9F20  48 00 00 60 */	b lbl_805F9F80
lbl_805F9F24:
/* 805F9F24  7F C3 F3 78 */	mr r3, r30
/* 805F9F28  38 80 00 02 */	li r4, 2
/* 805F9F2C  4B FF F9 D5 */	bl mTG_move_check_hand_item
/* 805F9F30  2C 03 00 00 */	cmpwi r3, 0
/* 805F9F34  41 82 00 48 */	beq lbl_805F9F7C
/* 805F9F38  38 60 00 02 */	li r3, 2
/* 805F9F3C  38 00 00 00 */	li r0, 0
/* 805F9F40  90 7F 00 38 */	stw r3, 0x38(r31)
/* 805F9F44  38 60 00 01 */	li r3, 1
/* 805F9F48  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 805F9F4C  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9F50  48 00 00 30 */	b lbl_805F9F80
lbl_805F9F54:
/* 805F9F54  2C 00 00 02 */	cmpwi r0, 2
/* 805F9F58  40 82 00 24 */	bne lbl_805F9F7C
/* 805F9F5C  38 80 00 03 */	li r4, 3
/* 805F9F60  4B FF F9 A1 */	bl mTG_move_check_hand_item
/* 805F9F64  2C 03 00 00 */	cmpwi r3, 0
/* 805F9F68  41 82 00 14 */	beq lbl_805F9F7C
/* 805F9F6C  38 00 00 03 */	li r0, 3
/* 805F9F70  38 60 00 01 */	li r3, 1
/* 805F9F74  90 1F 00 38 */	stw r0, 0x38(r31)
/* 805F9F78  48 00 00 08 */	b lbl_805F9F80
lbl_805F9F7C:
/* 805F9F7C  38 60 00 00 */	li r3, 0
lbl_805F9F80:
/* 805F9F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F9F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F9F88  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F9F8C  7C 08 03 A6 */	mtlr r0
/* 805F9F90  38 21 00 10 */	addi r1, r1, 0x10
/* 805F9F94  4E 80 00 20 */	blr 
