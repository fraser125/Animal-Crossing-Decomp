lbl_8056A8D0:
/* 8056A8D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056A8D4  7C 08 02 A6 */	mflr r0
/* 8056A8D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056A8DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056A8E0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056A8E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056A8E8  3F E3 00 02 */	addis r31, r3, 2
/* 8056A8EC  93 C1 00 08 */	stw r30, 8(r1)
/* 8056A8F0  80 7F 60 F8 */	lwz r3, 0x60f8(r31)
/* 8056A8F4  83 DF 61 1C */	lwz r30, 0x611c(r31)
/* 8056A8F8  28 03 00 00 */	cmplwi r3, 0
/* 8056A8FC  41 82 00 44 */	beq lbl_8056A940
/* 8056A900  81 83 00 00 */	lwz r12, 0(r3)
/* 8056A904  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D00D@ha */
/* 8056A908  38 63 D0 0D */	addi r3, r3, 0xD00D /* 0x0000D00D@l */
/* 8056A90C  7D 89 03 A6 */	mtctr r12
/* 8056A910  4E 80 04 21 */	bctrl 
/* 8056A914  2C 03 00 00 */	cmpwi r3, 0
/* 8056A918  40 82 00 28 */	bne lbl_8056A940
/* 8056A91C  80 BF 60 F8 */	lwz r5, 0x60f8(r31)
/* 8056A920  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D00D@ha */
/* 8056A924  38 63 D0 0D */	addi r3, r3, 0xD00D /* 0x0000D00D@l */
/* 8056A928  38 80 00 01 */	li r4, 1
/* 8056A92C  81 85 00 08 */	lwz r12, 8(r5)
/* 8056A930  7D 89 03 A6 */	mtctr r12
/* 8056A934  4E 80 04 21 */	bctrl 
/* 8056A938  4B E2 DB DD */	bl mDemo_Set_msg_num
/* 8056A93C  48 00 00 68 */	b lbl_8056A9A4
lbl_8056A940:
/* 8056A940  2C 1E 46 50 */	cmpwi r30, 0x4650
/* 8056A944  40 80 00 0C */	bge lbl_8056A950
/* 8056A948  3B C0 00 03 */	li r30, 3
/* 8056A94C  48 00 00 34 */	b lbl_8056A980
lbl_8056A950:
/* 8056A950  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008CA0@ha */
/* 8056A954  38 03 8C A0 */	addi r0, r3, 0x8CA0 /* 0x00008CA0@l */
/* 8056A958  7C 1E 00 00 */	cmpw r30, r0
/* 8056A95C  40 80 00 0C */	bge lbl_8056A968
/* 8056A960  3B C0 00 00 */	li r30, 0
/* 8056A964  48 00 00 1C */	b lbl_8056A980
lbl_8056A968:
/* 8056A968  38 03 EF 10 */	addi r0, r3, -4336
/* 8056A96C  7C 1E 00 00 */	cmpw r30, r0
/* 8056A970  40 80 00 0C */	bge lbl_8056A97C
/* 8056A974  3B C0 00 01 */	li r30, 1
/* 8056A978  48 00 00 08 */	b lbl_8056A980
lbl_8056A97C:
/* 8056A97C  3B C0 00 02 */	li r30, 2
lbl_8056A980:
/* 8056A980  4B FF FE C1 */	bl aPOL_check_player
/* 8056A984  2C 03 00 01 */	cmpwi r3, 1
/* 8056A988  40 82 00 08 */	bne lbl_8056A990
/* 8056A98C  3B DE 00 04 */	addi r30, r30, 4
lbl_8056A990:
/* 8056A990  3C 60 80 6C */	lis r3, msg_table@ha /* 0x806BE7D0@ha */
/* 8056A994  57 C0 10 3A */	slwi r0, r30, 2
/* 8056A998  38 63 E7 D0 */	addi r3, r3, msg_table@l /* 0x806BE7D0@l */
/* 8056A99C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8056A9A0  4B E2 DB 75 */	bl mDemo_Set_msg_num
lbl_8056A9A4:
/* 8056A9A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056A9A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056A9AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056A9B0  7C 08 03 A6 */	mtlr r0
/* 8056A9B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8056A9B8  4E 80 00 20 */	blr 
