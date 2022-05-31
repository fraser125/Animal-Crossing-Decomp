lbl_805C9AC8:
/* 805C9AC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C9ACC  7C 08 02 A6 */	mflr r0
/* 805C9AD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C9AD4  39 61 00 20 */	addi r11, r1, 0x20
/* 805C9AD8  4B AD 13 F9 */	bl func_8009AED0
/* 805C9ADC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C9AE0  1C 64 06 44 */	mulli r3, r4, 0x644
/* 805C9AE4  80 A5 09 CC */	lwz r5, 0x9cc(r5)
/* 805C9AE8  3F E3 00 01 */	addis r31, r3, 1
/* 805C9AEC  88 05 00 00 */	lbz r0, 0(r5)
/* 805C9AF0  3B FF A1 48 */	addi r31, r31, -24248
/* 805C9AF4  7F E5 FA 14 */	add r31, r5, r31
/* 805C9AF8  68 00 00 01 */	xori r0, r0, 1
/* 805C9AFC  98 05 00 00 */	stb r0, 0(r5)
/* 805C9B00  A8 7F 00 02 */	lha r3, 2(r31)
/* 805C9B04  A8 1F 00 04 */	lha r0, 4(r31)
/* 805C9B08  88 85 00 00 */	lbz r4, 0(r5)
/* 805C9B0C  7C 03 02 14 */	add r0, r3, r0
/* 805C9B10  54 00 08 3C */	slwi r0, r0, 1
/* 805C9B14  1C 84 50 A0 */	mulli r4, r4, 0x50a0
/* 805C9B18  7C 7F 02 14 */	add r3, r31, r0
/* 805C9B1C  A3 C3 00 08 */	lhz r30, 8(r3)
/* 805C9B20  3B A4 00 08 */	addi r29, r4, 8
/* 805C9B24  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 805C9B28  7F A5 EA 14 */	add r29, r5, r29
/* 805C9B2C  2C 00 00 01 */	cmpwi r0, 1
/* 805C9B30  B3 DD 50 98 */	sth r30, 0x5098(r29)
/* 805C9B34  41 82 00 0C */	beq lbl_805C9B40
/* 805C9B38  2C 00 00 03 */	cmpwi r0, 3
/* 805C9B3C  40 82 00 14 */	bne lbl_805C9B50
lbl_805C9B40:
/* 805C9B40  7F A3 EB 78 */	mr r3, r29
/* 805C9B44  7F C4 F3 78 */	mr r4, r30
/* 805C9B48  4B FF F6 8D */	bl mCL_furniture_init
/* 805C9B4C  48 00 00 A4 */	b lbl_805C9BF0
lbl_805C9B50:
/* 805C9B50  2C 00 00 02 */	cmpwi r0, 2
/* 805C9B54  40 82 00 8C */	bne lbl_805C9BE0
/* 805C9B58  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 805C9B5C  57 DC C7 3E */	rlwinm r28, r30, 0x18, 0x1c, 0x1f
/* 805C9B60  38 83 F0 50 */	addi r4, r3, data_8065F050@l /* 0x8065F050@l */
/* 805C9B64  38 7D 00 08 */	addi r3, r29, 8
/* 805C9B68  4B DF 13 55 */	bl xyz_t_move
/* 805C9B6C  2C 1C 00 00 */	cmpwi r28, 0
/* 805C9B70  40 82 00 14 */	bne lbl_805C9B84
/* 805C9B74  7F A3 EB 78 */	mr r3, r29
/* 805C9B78  7F C4 F3 78 */	mr r4, r30
/* 805C9B7C  4B FF FC 49 */	bl mCL_paper_init
/* 805C9B80  48 00 00 70 */	b lbl_805C9BF0
lbl_805C9B84:
/* 805C9B84  2C 1C 00 07 */	cmpwi r28, 7
/* 805C9B88  40 82 00 14 */	bne lbl_805C9B9C
/* 805C9B8C  7F A3 EB 78 */	mr r3, r29
/* 805C9B90  7F C4 F3 78 */	mr r4, r30
/* 805C9B94  4B FF FD 21 */	bl mCL_wall_init
/* 805C9B98  48 00 00 58 */	b lbl_805C9BF0
lbl_805C9B9C:
/* 805C9B9C  2C 1C 00 06 */	cmpwi r28, 6
/* 805C9BA0  40 82 00 14 */	bne lbl_805C9BB4
/* 805C9BA4  7F A3 EB 78 */	mr r3, r29
/* 805C9BA8  7F C4 F3 78 */	mr r4, r30
/* 805C9BAC  4B FF FD F1 */	bl mCL_carpet_init
/* 805C9BB0  48 00 00 40 */	b lbl_805C9BF0
lbl_805C9BB4:
/* 805C9BB4  2C 1C 00 0A */	cmpwi r28, 0xa
/* 805C9BB8  40 82 00 14 */	bne lbl_805C9BCC
/* 805C9BBC  7F A3 EB 78 */	mr r3, r29
/* 805C9BC0  7F C4 F3 78 */	mr r4, r30
/* 805C9BC4  4B FF FE C1 */	bl mCL_music_init
/* 805C9BC8  48 00 00 28 */	b lbl_805C9BF0
lbl_805C9BCC:
/* 805C9BCC  38 60 00 05 */	li r3, 5
/* 805C9BD0  38 00 00 00 */	li r0, 0
/* 805C9BD4  B0 7D 50 88 */	sth r3, 0x5088(r29)
/* 805C9BD8  90 1D 50 8C */	stw r0, 0x508c(r29)
/* 805C9BDC  48 00 00 14 */	b lbl_805C9BF0
lbl_805C9BE0:
/* 805C9BE0  38 60 00 05 */	li r3, 5
/* 805C9BE4  38 00 00 00 */	li r0, 0
/* 805C9BE8  B0 7D 50 88 */	sth r3, 0x5088(r29)
/* 805C9BEC  90 1D 50 8C */	stw r0, 0x508c(r29)
lbl_805C9BF0:
/* 805C9BF0  A8 1F 00 02 */	lha r0, 2(r31)
/* 805C9BF4  3B DF 05 D4 */	addi r30, r31, 0x5d4
/* 805C9BF8  3B 80 00 00 */	li r28, 0
/* 805C9BFC  54 03 08 3C */	slwi r3, r0, 1
/* 805C9C00  3B A3 00 08 */	addi r29, r3, 8
/* 805C9C04  7F BF EA 14 */	add r29, r31, r29
lbl_805C9C08:
/* 805C9C08  A0 9D 00 00 */	lhz r4, 0(r29)
/* 805C9C0C  7F C3 F3 78 */	mr r3, r30
/* 805C9C10  4B DE BD 95 */	bl mIN_copy_name_str
/* 805C9C14  3B 9C 00 01 */	addi r28, r28, 1
/* 805C9C18  3B DE 00 10 */	addi r30, r30, 0x10
/* 805C9C1C  2C 1C 00 07 */	cmpwi r28, 7
/* 805C9C20  3B BD 00 02 */	addi r29, r29, 2
/* 805C9C24  41 80 FF E4 */	blt lbl_805C9C08
/* 805C9C28  39 61 00 20 */	addi r11, r1, 0x20
/* 805C9C2C  4B AD 12 F1 */	bl func_8009AF1C
/* 805C9C30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C9C34  7C 08 03 A6 */	mtlr r0
/* 805C9C38  38 21 00 20 */	addi r1, r1, 0x20
/* 805C9C3C  4E 80 00 20 */	blr 
