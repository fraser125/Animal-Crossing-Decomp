lbl_80416D3C:
/* 80416D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416D40  7C 08 02 A6 */	mflr r0
/* 80416D44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416D48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416D4C  7C 7F 1B 78 */	mr r31, r3
/* 80416D50  7C 83 23 78 */	mr r3, r4
/* 80416D54  4B FC 4A CD */	bl mPlib_check_player_outdoor_start
/* 80416D58  2C 03 00 00 */	cmpwi r3, 0
/* 80416D5C  41 82 00 0C */	beq lbl_80416D68
/* 80416D60  7F E3 FB 78 */	mr r3, r31
/* 80416D64  48 00 01 4D */	bl Cottage_move_open_pl_out_init
lbl_80416D68:
/* 80416D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80416D70  7C 08 03 A6 */	mtlr r0
/* 80416D74  38 21 00 10 */	addi r1, r1, 0x10
/* 80416D78  4E 80 00 20 */	blr 
