lbl_803BC90C:
/* 803BC90C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BC910  7C 08 02 A6 */	mflr r0
/* 803BC914  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BC918  39 61 00 20 */	addi r11, r1, 0x20
/* 803BC91C  4B CD E5 B5 */	bl func_8009AED0
/* 803BC920  7C 7C 1B 78 */	mr r28, r3
/* 803BC924  7C 9D 23 78 */	mr r29, r4
/* 803BC928  3B E0 00 00 */	li r31, 0
/* 803BC92C  3B C0 00 00 */	li r30, 0
/* 803BC930  48 00 00 20 */	b lbl_803BC950
lbl_803BC934:
/* 803BC934  7F 83 E3 78 */	mr r3, r28
/* 803BC938  4B FF FE 69 */	bl mMl_check_not_used_mail
/* 803BC93C  2C 03 00 01 */	cmpwi r3, 1
/* 803BC940  41 82 00 08 */	beq lbl_803BC948
/* 803BC944  3B FF 00 01 */	addi r31, r31, 1
lbl_803BC948:
/* 803BC948  3B 9C 01 2A */	addi r28, r28, 0x12a
/* 803BC94C  3B DE 00 01 */	addi r30, r30, 1
lbl_803BC950:
/* 803BC950  7C 1E E8 00 */	cmpw r30, r29
/* 803BC954  41 80 FF E0 */	blt lbl_803BC934
/* 803BC958  7F E3 FB 78 */	mr r3, r31
/* 803BC95C  39 61 00 20 */	addi r11, r1, 0x20
/* 803BC960  4B CD E5 BD */	bl func_8009AF1C
/* 803BC964  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BC968  7C 08 03 A6 */	mtlr r0
/* 803BC96C  38 21 00 20 */	addi r1, r1, 0x20
/* 803BC970  4E 80 00 20 */	blr 
