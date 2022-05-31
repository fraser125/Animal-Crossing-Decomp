lbl_804AE0F4:
/* 804AE0F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AE0F8  7C 08 02 A6 */	mflr r0
/* 804AE0FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AE100  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804AE104  7C 9F 23 78 */	mr r31, r4
/* 804AE108  38 80 00 00 */	li r4, 0
/* 804AE10C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804AE110  7C 7E 1B 78 */	mr r30, r3
/* 804AE114  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 804AE118  38 61 00 08 */	addi r3, r1, 8
/* 804AE11C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 804AE120  90 A1 00 08 */	stw r5, 8(r1)
/* 804AE124  90 01 00 0C */	stw r0, 0xc(r1)
/* 804AE128  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804AE12C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804AE130  4B ED AF 7D */	bl mCoBG_Wpos2Attribute
/* 804AE134  2C 03 00 16 */	cmpwi r3, 0x16
/* 804AE138  41 82 00 14 */	beq lbl_804AE14C
/* 804AE13C  40 80 00 30 */	bge lbl_804AE16C
/* 804AE140  2C 03 00 0B */	cmpwi r3, 0xb
/* 804AE144  41 82 00 08 */	beq lbl_804AE14C
/* 804AE148  48 00 00 24 */	b lbl_804AE16C
lbl_804AE14C:
/* 804AE14C  7F C3 F3 78 */	mr r3, r30
/* 804AE150  4B FF F9 F9 */	bl aUKI_clear_spd
/* 804AE154  88 1E 02 B4 */	lbz r0, 0x2b4(r30)
/* 804AE158  28 00 00 00 */	cmplwi r0, 0
/* 804AE15C  40 82 00 24 */	bne lbl_804AE180
/* 804AE160  38 00 00 01 */	li r0, 1
/* 804AE164  98 1E 02 B4 */	stb r0, 0x2b4(r30)
/* 804AE168  48 00 00 18 */	b lbl_804AE180
lbl_804AE16C:
/* 804AE16C  7F C3 F3 78 */	mr r3, r30
/* 804AE170  7F E4 FB 78 */	mr r4, r31
/* 804AE174  4B FF FE 09 */	bl aUKI_movement
/* 804AE178  7F C3 F3 78 */	mr r3, r30
/* 804AE17C  4B EC 60 8D */	bl Actor_position_move
lbl_804AE180:
/* 804AE180  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AE184  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804AE188  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804AE18C  7C 08 03 A6 */	mtlr r0
/* 804AE190  38 21 00 20 */	addi r1, r1, 0x20
/* 804AE194  4E 80 00 20 */	blr 
