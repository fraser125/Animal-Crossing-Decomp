lbl_805FA7B8:
/* 805FA7B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FA7BC  7C 08 02 A6 */	mflr r0
/* 805FA7C0  39 00 00 00 */	li r8, 0
/* 805FA7C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FA7C8  80 E5 00 00 */	lwz r7, 0(r5)
/* 805FA7CC  2C 07 00 01 */	cmpwi r7, 1
/* 805FA7D0  40 82 00 18 */	bne lbl_805FA7E8
/* 805FA7D4  80 05 00 38 */	lwz r0, 0x38(r5)
/* 805FA7D8  2C 00 00 00 */	cmpwi r0, 0
/* 805FA7DC  41 82 00 20 */	beq lbl_805FA7FC
/* 805FA7E0  2C 00 00 0D */	cmpwi r0, 0xd
/* 805FA7E4  41 82 00 18 */	beq lbl_805FA7FC
lbl_805FA7E8:
/* 805FA7E8  2C 07 00 17 */	cmpwi r7, 0x17
/* 805FA7EC  40 82 00 54 */	bne lbl_805FA840
/* 805FA7F0  80 05 00 38 */	lwz r0, 0x38(r5)
/* 805FA7F4  2C 00 00 01 */	cmpwi r0, 1
/* 805FA7F8  40 82 00 48 */	bne lbl_805FA840
lbl_805FA7FC:
/* 805FA7FC  54 C0 07 BD */	rlwinm. r0, r6, 0, 0x1e, 0x1e
/* 805FA800  41 82 00 10 */	beq lbl_805FA810
/* 805FA804  4B FF F1 D1 */	bl mTG_move_cursol_between_table_inventory_left
/* 805FA808  7C 68 1B 78 */	mr r8, r3
/* 805FA80C  48 00 00 34 */	b lbl_805FA840
lbl_805FA810:
/* 805FA810  54 C0 07 7B */	rlwinm. r0, r6, 0, 0x1d, 0x1d
/* 805FA814  41 82 00 10 */	beq lbl_805FA824
/* 805FA818  4B FF F7 81 */	bl mTG_move_cursol_between_table_inventory_lower
/* 805FA81C  7C 68 1B 78 */	mr r8, r3
/* 805FA820  48 00 00 20 */	b lbl_805FA840
lbl_805FA824:
/* 805FA824  54 C0 07 39 */	rlwinm. r0, r6, 0, 0x1c, 0x1c
/* 805FA828  41 82 00 10 */	beq lbl_805FA838
/* 805FA82C  4B FF F5 F9 */	bl mTG_move_cursol_between_table_inventory_upper
/* 805FA830  7C 68 1B 78 */	mr r8, r3
/* 805FA834  48 00 00 0C */	b lbl_805FA840
lbl_805FA838:
/* 805FA838  4B FF F4 15 */	bl mTG_move_cursol_between_table_inventory_right
/* 805FA83C  7C 68 1B 78 */	mr r8, r3
lbl_805FA840:
/* 805FA840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FA844  7D 03 43 78 */	mr r3, r8
/* 805FA848  7C 08 03 A6 */	mtlr r0
/* 805FA84C  38 21 00 10 */	addi r1, r1, 0x10
/* 805FA850  4E 80 00 20 */	blr 
