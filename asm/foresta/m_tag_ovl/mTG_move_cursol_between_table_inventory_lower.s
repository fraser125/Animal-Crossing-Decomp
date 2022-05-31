lbl_805F9F98:
/* 805F9F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F9F9C  7C 08 02 A6 */	mflr r0
/* 805F9FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F9FA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F9FA8  7C 9F 23 78 */	mr r31, r4
/* 805F9FAC  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805F9FB0  2C 00 00 00 */	cmpwi r0, 0
/* 805F9FB4  40 82 00 3C */	bne lbl_805F9FF0
/* 805F9FB8  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 805F9FBC  2C 00 00 04 */	cmpwi r0, 4
/* 805F9FC0  40 82 00 68 */	bne lbl_805FA028
/* 805F9FC4  38 80 00 04 */	li r4, 4
/* 805F9FC8  4B FF F9 39 */	bl mTG_move_check_hand_item
/* 805F9FCC  2C 03 00 00 */	cmpwi r3, 0
/* 805F9FD0  41 82 00 58 */	beq lbl_805FA028
/* 805F9FD4  38 60 00 04 */	li r3, 4
/* 805F9FD8  38 00 00 00 */	li r0, 0
/* 805F9FDC  90 7F 00 38 */	stw r3, 0x38(r31)
/* 805F9FE0  38 60 00 01 */	li r3, 1
/* 805F9FE4  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 805F9FE8  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9FEC  48 00 00 40 */	b lbl_805FA02C
lbl_805F9FF0:
/* 805F9FF0  2C 00 00 02 */	cmpwi r0, 2
/* 805F9FF4  40 82 00 1C */	bne lbl_805FA010
/* 805F9FF8  38 60 00 00 */	li r3, 0
/* 805F9FFC  38 00 00 04 */	li r0, 4
/* 805FA000  90 7F 00 38 */	stw r3, 0x38(r31)
/* 805FA004  38 60 00 01 */	li r3, 1
/* 805FA008  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 805FA00C  48 00 00 20 */	b lbl_805FA02C
lbl_805FA010:
/* 805FA010  2C 00 00 03 */	cmpwi r0, 3
/* 805FA014  40 82 00 14 */	bne lbl_805FA028
/* 805FA018  38 00 00 00 */	li r0, 0
/* 805FA01C  38 60 00 01 */	li r3, 1
/* 805FA020  90 1F 00 38 */	stw r0, 0x38(r31)
/* 805FA024  48 00 00 08 */	b lbl_805FA02C
lbl_805FA028:
/* 805FA028  38 60 00 00 */	li r3, 0
lbl_805FA02C:
/* 805FA02C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FA030  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FA034  7C 08 03 A6 */	mtlr r0
/* 805FA038  38 21 00 10 */	addi r1, r1, 0x10
/* 805FA03C  4E 80 00 20 */	blr 
