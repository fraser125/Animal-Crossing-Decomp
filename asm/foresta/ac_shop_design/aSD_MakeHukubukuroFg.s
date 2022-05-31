lbl_8049C8E4:
/* 8049C8E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049C8E8  7C 08 02 A6 */	mflr r0
/* 8049C8EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049C8F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8049C8F4  4B BF E5 DD */	bl func_8009AED0
/* 8049C8F8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049C8FC  3C 60 80 69 */	lis r3, reserve_table@ha /* 0x8068E2E4@ha */
/* 8049C900  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8049C904  3B C0 00 00 */	li r30, 0
/* 8049C908  3C 84 00 02 */	addis r4, r4, 2
/* 8049C90C  3B A3 E2 E4 */	addi r29, r3, reserve_table@l /* 0x8068E2E4@l */
/* 8049C910  8B 84 04 64 */	lbz r28, 0x464(r4)
/* 8049C914  3B E0 00 00 */	li r31, 0
/* 8049C918  7F 9C 07 74 */	extsb r28, r28
/* 8049C91C  48 00 00 08 */	b lbl_8049C924
lbl_8049C920:
/* 8049C920  3B 9C FF FF */	addi r28, r28, -1
lbl_8049C924:
/* 8049C924  2C 1C 00 00 */	cmpwi r28, 0
/* 8049C928  40 81 00 18 */	ble lbl_8049C940
/* 8049C92C  7C 9D FA 2E */	lhzx r4, r29, r31
/* 8049C930  38 60 2E 00 */	li r3, 0x2e00
/* 8049C934  4B F4 E4 B1 */	bl mSP_SetGoods2ReservedPoint
/* 8049C938  2C 03 00 00 */	cmpwi r3, 0
/* 8049C93C  40 82 FF E4 */	bne lbl_8049C920
lbl_8049C940:
/* 8049C940  3B DE 00 01 */	addi r30, r30, 1
/* 8049C944  3B FF 00 02 */	addi r31, r31, 2
/* 8049C948  2C 1E 00 06 */	cmpwi r30, 6
/* 8049C94C  41 80 FF D8 */	blt lbl_8049C924
/* 8049C950  3C 60 80 69 */	lis r3, reserve_table@ha /* 0x8068E2E4@ha */
/* 8049C954  3B 80 00 00 */	li r28, 0
/* 8049C958  3B A3 E2 E4 */	addi r29, r3, reserve_table@l /* 0x8068E2E4@l */
/* 8049C95C  3B E0 00 00 */	li r31, 0
/* 8049C960  3F C0 00 01 */	lis r30, 0x0001 /* 0x0000FE13@ha */
lbl_8049C964:
/* 8049C964  7C 9D FA 2E */	lhzx r4, r29, r31
/* 8049C968  38 7E FE 13 */	addi r3, r30, 0xFE13 /* 0x0000FE13@l */
/* 8049C96C  4B F4 E4 79 */	bl mSP_SetGoods2ReservedPoint
/* 8049C970  2C 03 00 00 */	cmpwi r3, 0
/* 8049C974  40 82 FF F0 */	bne lbl_8049C964
/* 8049C978  3B 9C 00 01 */	addi r28, r28, 1
/* 8049C97C  3B FF 00 02 */	addi r31, r31, 2
/* 8049C980  2C 1C 00 06 */	cmpwi r28, 6
/* 8049C984  41 80 FF E0 */	blt lbl_8049C964
/* 8049C988  39 61 00 20 */	addi r11, r1, 0x20
/* 8049C98C  4B BF E5 91 */	bl func_8009AF1C
/* 8049C990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049C994  7C 08 03 A6 */	mtlr r0
/* 8049C998  38 21 00 20 */	addi r1, r1, 0x20
/* 8049C99C  4E 80 00 20 */	blr 
