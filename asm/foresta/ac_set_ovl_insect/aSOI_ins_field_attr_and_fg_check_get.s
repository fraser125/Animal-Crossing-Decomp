lbl_8049B8D0:
/* 8049B8D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049B8D4  7C 08 02 A6 */	mflr r0
/* 8049B8D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049B8DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8049B8E0  4B BF F5 ED */	bl func_8009AECC
/* 8049B8E4  7C 7B 1B 79 */	or. r27, r3, r3
/* 8049B8E8  7C 9C 23 78 */	mr r28, r4
/* 8049B8EC  7C BD 2B 78 */	mr r29, r5
/* 8049B8F0  38 60 00 00 */	li r3, 0
/* 8049B8F4  41 82 00 74 */	beq lbl_8049B968
/* 8049B8F8  28 1C 00 00 */	cmplwi r28, 0
/* 8049B8FC  41 82 00 6C */	beq lbl_8049B968
/* 8049B900  3B E0 00 00 */	li r31, 0
lbl_8049B904:
/* 8049B904  3B C0 00 00 */	li r30, 0
lbl_8049B908:
/* 8049B908  2C 1F 00 02 */	cmpwi r31, 2
/* 8049B90C  41 80 00 2C */	blt lbl_8049B938
/* 8049B910  2C 1F 00 0E */	cmpwi r31, 0xe
/* 8049B914  40 80 00 24 */	bge lbl_8049B938
/* 8049B918  2C 1E 00 02 */	cmpwi r30, 2
/* 8049B91C  41 80 00 1C */	blt lbl_8049B938
/* 8049B920  2C 1E 00 0E */	cmpwi r30, 0xe
/* 8049B924  40 80 00 14 */	bge lbl_8049B938
/* 8049B928  7F 63 DB 78 */	mr r3, r27
/* 8049B92C  7F 84 E3 78 */	mr r4, r28
/* 8049B930  7F A5 EB 78 */	mr r5, r29
/* 8049B934  4B FF FF 35 */	bl aSOI_ins_field_attr_and_fg_check_get_sub
lbl_8049B938:
/* 8049B938  2C 03 00 01 */	cmpwi r3, 1
/* 8049B93C  41 82 00 18 */	beq lbl_8049B954
/* 8049B940  3B DE 00 01 */	addi r30, r30, 1
/* 8049B944  3B 9C 00 02 */	addi r28, r28, 2
/* 8049B948  2C 1E 00 10 */	cmpwi r30, 0x10
/* 8049B94C  3B 7B 00 04 */	addi r27, r27, 4
/* 8049B950  41 80 FF B8 */	blt lbl_8049B908
lbl_8049B954:
/* 8049B954  2C 03 00 01 */	cmpwi r3, 1
/* 8049B958  41 82 00 10 */	beq lbl_8049B968
/* 8049B95C  3B FF 00 01 */	addi r31, r31, 1
/* 8049B960  2C 1F 00 10 */	cmpwi r31, 0x10
/* 8049B964  41 80 FF A0 */	blt lbl_8049B904
lbl_8049B968:
/* 8049B968  39 61 00 20 */	addi r11, r1, 0x20
/* 8049B96C  4B BF F5 AD */	bl func_8009AF18
/* 8049B970  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049B974  7C 08 03 A6 */	mtlr r0
/* 8049B978  38 21 00 20 */	addi r1, r1, 0x20
/* 8049B97C  4E 80 00 20 */	blr 
