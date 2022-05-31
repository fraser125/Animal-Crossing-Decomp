lbl_805FA854:
/* 805FA854  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FA858  7C 08 02 A6 */	mflr r0
/* 805FA85C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FA860  39 61 00 20 */	addi r11, r1, 0x20
/* 805FA864  4B AA 06 6D */	bl func_8009AED0
/* 805FA868  7C 9D 23 78 */	mr r29, r4
/* 805FA86C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805FA870  7C 7C 1B 78 */	mr r28, r3
/* 805FA874  7C BE 2B 78 */	mr r30, r5
/* 805FA878  83 E4 09 28 */	lwz r31, 0x928(r4)
/* 805FA87C  38 60 00 00 */	li r3, 0
/* 805FA880  57 E0 07 3F */	clrlwi. r0, r31, 0x1c
/* 805FA884  40 82 00 18 */	bne lbl_805FA89C
/* 805FA888  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 805FA88C  2C 00 00 0E */	cmpwi r0, 0xe
/* 805FA890  40 82 01 9C */	bne lbl_805FAA2C
/* 805FA894  73 E0 0F 0F */	andi. r0, r31, 0xf0f
/* 805FA898  41 82 01 94 */	beq lbl_805FAA2C
lbl_805FA89C:
/* 805FA89C  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 805FA8A0  2C 00 00 0C */	cmpwi r0, 0xc
/* 805FA8A4  40 82 00 18 */	bne lbl_805FA8BC
/* 805FA8A8  7F 83 E3 78 */	mr r3, r28
/* 805FA8AC  7F A4 EB 78 */	mr r4, r29
/* 805FA8B0  7F E5 FB 78 */	mr r5, r31
/* 805FA8B4  4B FF EC B5 */	bl mTG_move_cursol_in_cpedit
/* 805FA8B8  48 00 00 64 */	b lbl_805FA91C
lbl_805FA8BC:
/* 805FA8BC  2C 00 00 0E */	cmpwi r0, 0xe
/* 805FA8C0  40 82 00 18 */	bne lbl_805FA8D8
/* 805FA8C4  7F 83 E3 78 */	mr r3, r28
/* 805FA8C8  7F A4 EB 78 */	mr r4, r29
/* 805FA8CC  7F E5 FB 78 */	mr r5, r31
/* 805FA8D0  4B FF EC A1 */	bl mTG_move_cursol_in_catalog
/* 805FA8D4  48 00 00 48 */	b lbl_805FA91C
lbl_805FA8D8:
/* 805FA8D8  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 805FA8DC  41 82 00 10 */	beq lbl_805FA8EC
/* 805FA8E0  7F A3 EB 78 */	mr r3, r29
/* 805FA8E4  4B FF EF 01 */	bl mTG_move_cursol_base_left
/* 805FA8E8  48 00 00 34 */	b lbl_805FA91C
lbl_805FA8EC:
/* 805FA8EC  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 805FA8F0  41 82 00 10 */	beq lbl_805FA900
/* 805FA8F4  7F A3 EB 78 */	mr r3, r29
/* 805FA8F8  4B FF EF 7D */	bl mTG_move_cursol_base_lower
/* 805FA8FC  48 00 00 20 */	b lbl_805FA91C
lbl_805FA900:
/* 805FA900  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 805FA904  41 82 00 10 */	beq lbl_805FA914
/* 805FA908  7F A3 EB 78 */	mr r3, r29
/* 805FA90C  4B FF EF 41 */	bl mTG_move_cursol_base_upper
/* 805FA910  48 00 00 0C */	b lbl_805FA91C
lbl_805FA914:
/* 805FA914  7F A3 EB 78 */	mr r3, r29
/* 805FA918  4B FF EE F5 */	bl mTG_move_cursol_base_right
lbl_805FA91C:
/* 805FA91C  2C 03 00 00 */	cmpwi r3, 0
/* 805FA920  40 82 01 0C */	bne lbl_805FAA2C
/* 805FA924  80 1E 00 00 */	lwz r0, 0(r30)
/* 805FA928  2C 00 00 11 */	cmpwi r0, 0x11
/* 805FA92C  40 82 00 18 */	bne lbl_805FA944
/* 805FA930  7F 83 E3 78 */	mr r3, r28
/* 805FA934  7F A4 EB 78 */	mr r4, r29
/* 805FA938  7F E5 FB 78 */	mr r5, r31
/* 805FA93C  4B FF F7 05 */	bl mTG_move_cursol_between_table_cpmail
/* 805FA940  48 00 00 EC */	b lbl_805FAA2C
lbl_805FA944:
/* 805FA944  2C 00 00 0E */	cmpwi r0, 0xe
/* 805FA948  40 82 00 14 */	bne lbl_805FA95C
/* 805FA94C  7F A3 EB 78 */	mr r3, r29
/* 805FA950  7F E4 FB 78 */	mr r4, r31
/* 805FA954  4B FF F9 31 */	bl mTG_move_cursol_between_table_haniwa
/* 805FA958  48 00 00 D4 */	b lbl_805FAA2C
lbl_805FA95C:
/* 805FA95C  2C 00 00 0B */	cmpwi r0, 0xb
/* 805FA960  40 82 00 18 */	bne lbl_805FA978
/* 805FA964  7F 83 E3 78 */	mr r3, r28
/* 805FA968  7F A4 EB 78 */	mr r4, r29
/* 805FA96C  7F E5 FB 78 */	mr r5, r31
/* 805FA970  4B FF F9 AD */	bl mTG_move_cursol_between_table_mailbox
/* 805FA974  48 00 00 B8 */	b lbl_805FAA2C
lbl_805FA978:
/* 805FA978  2C 00 00 14 */	cmpwi r0, 0x14
/* 805FA97C  40 82 00 18 */	bne lbl_805FA994
/* 805FA980  7F 83 E3 78 */	mr r3, r28
/* 805FA984  7F A4 EB 78 */	mr r4, r29
/* 805FA988  7F E5 FB 78 */	mr r5, r31
/* 805FA98C  4B FF FA 29 */	bl mTG_move_cursol_between_table_catalog
/* 805FA990  48 00 00 9C */	b lbl_805FAA2C
lbl_805FA994:
/* 805FA994  2C 00 00 15 */	cmpwi r0, 0x15
/* 805FA998  40 82 00 18 */	bne lbl_805FA9B0
/* 805FA99C  7F 83 E3 78 */	mr r3, r28
/* 805FA9A0  7F A4 EB 78 */	mr r4, r29
/* 805FA9A4  7F E5 FB 78 */	mr r5, r31
/* 805FA9A8  4B FF F8 D5 */	bl mTG_move_cursol_between_table_music
/* 805FA9AC  48 00 00 80 */	b lbl_805FAA2C
lbl_805FA9B0:
/* 805FA9B0  2C 00 00 18 */	cmpwi r0, 0x18
/* 805FA9B4  40 82 00 18 */	bne lbl_805FA9CC
/* 805FA9B8  7F 83 E3 78 */	mr r3, r28
/* 805FA9BC  7F A4 EB 78 */	mr r4, r29
/* 805FA9C0  7F E5 FB 78 */	mr r5, r31
/* 805FA9C4  4B FF FA D1 */	bl mTG_move_cursol_between_table_cporiginal
/* 805FA9C8  48 00 00 64 */	b lbl_805FAA2C
lbl_805FA9CC:
/* 805FA9CC  2C 00 00 1A */	cmpwi r0, 0x1a
/* 805FA9D0  40 82 00 48 */	bne lbl_805FAA18
/* 805FA9D4  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FA9D8  2C 00 00 04 */	cmpwi r0, 4
/* 805FA9DC  41 82 00 28 */	beq lbl_805FAA04
/* 805FA9E0  40 80 00 4C */	bge lbl_805FAA2C
/* 805FA9E4  2C 00 00 03 */	cmpwi r0, 3
/* 805FA9E8  40 80 00 08 */	bge lbl_805FA9F0
/* 805FA9EC  48 00 00 40 */	b lbl_805FAA2C
lbl_805FA9F0:
/* 805FA9F0  7F 83 E3 78 */	mr r3, r28
/* 805FA9F4  7F A4 EB 78 */	mr r4, r29
/* 805FA9F8  7F E5 FB 78 */	mr r5, r31
/* 805FA9FC  4B FF FC A9 */	bl mTG_move_cursol_between_table_gba
/* 805FAA00  48 00 00 2C */	b lbl_805FAA2C
lbl_805FAA04:
/* 805FAA04  7F 83 E3 78 */	mr r3, r28
/* 805FAA08  7F A4 EB 78 */	mr r4, r29
/* 805FAA0C  7F E5 FB 78 */	mr r5, r31
/* 805FAA10  4B FF FD 41 */	bl mTG_move_cursol_between_table_card
/* 805FAA14  48 00 00 18 */	b lbl_805FAA2C
lbl_805FAA18:
/* 805FAA18  7F 83 E3 78 */	mr r3, r28
/* 805FAA1C  7F A4 EB 78 */	mr r4, r29
/* 805FAA20  7F C5 F3 78 */	mr r5, r30
/* 805FAA24  7F E6 FB 78 */	mr r6, r31
/* 805FAA28  4B FF FD 91 */	bl mTG_move_cursol_between_table_inventory
lbl_805FAA2C:
/* 805FAA2C  39 61 00 20 */	addi r11, r1, 0x20
/* 805FAA30  4B AA 04 ED */	bl func_8009AF1C
/* 805FAA34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FAA38  7C 08 03 A6 */	mtlr r0
/* 805FAA3C  38 21 00 20 */	addi r1, r1, 0x20
/* 805FAA40  4E 80 00 20 */	blr 
