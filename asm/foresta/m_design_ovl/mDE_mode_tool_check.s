lbl_805D3854:
/* 805D3854  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805D3858  7C 08 02 A6 */	mflr r0
/* 805D385C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805D3860  39 61 00 30 */	addi r11, r1, 0x30
/* 805D3864  4B AC 76 6D */	bl func_8009AED0
/* 805D3868  3D 00 81 14 */	lis r8, common_data@ha /* 0x81138538@ha */
/* 805D386C  7C 7C 1B 78 */	mr r28, r3
/* 805D3870  38 68 85 38 */	addi r3, r8, common_data@l /* 0x81138538@l */
/* 805D3874  89 9C 06 A0 */	lbz r12, 0x6a0(r28)
/* 805D3878  80 03 00 14 */	lwz r0, 0x14(r3)
/* 805D387C  39 60 00 03 */	li r11, 3
/* 805D3880  89 5C 06 A1 */	lbz r10, 0x6a1(r28)
/* 805D3884  39 20 00 06 */	li r9, 6
/* 805D3888  89 1C 06 A2 */	lbz r8, 0x6a2(r28)
/* 805D388C  38 60 00 05 */	li r3, 5
/* 805D3890  2C 00 00 31 */	cmpwi r0, 0x31
/* 805D3894  99 81 00 10 */	stb r12, 0x10(r1)
/* 805D3898  7C 9D 23 78 */	mr r29, r4
/* 805D389C  7C BE 2B 78 */	mr r30, r5
/* 805D38A0  99 61 00 08 */	stb r11, 8(r1)
/* 805D38A4  3B E0 00 00 */	li r31, 0
/* 805D38A8  99 41 00 11 */	stb r10, 0x11(r1)
/* 805D38AC  99 21 00 09 */	stb r9, 9(r1)
/* 805D38B0  99 01 00 12 */	stb r8, 0x12(r1)
/* 805D38B4  98 61 00 0A */	stb r3, 0xa(r1)
/* 805D38B8  41 82 00 1C */	beq lbl_805D38D4
/* 805D38BC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D38C0  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D38C4  80 63 00 00 */	lwz r3, 0(r3)
/* 805D38C8  A8 03 17 52 */	lha r0, 0x1752(r3)
/* 805D38CC  2C 00 00 00 */	cmpwi r0, 0
/* 805D38D0  41 82 00 18 */	beq lbl_805D38E8
lbl_805D38D4:
/* 805D38D4  88 7C 06 A3 */	lbz r3, 0x6a3(r28)
/* 805D38D8  38 00 00 05 */	li r0, 5
/* 805D38DC  98 01 00 0B */	stb r0, 0xb(r1)
/* 805D38E0  98 61 00 13 */	stb r3, 0x13(r1)
/* 805D38E4  48 00 00 14 */	b lbl_805D38F8
lbl_805D38E8:
/* 805D38E8  88 7C 06 A3 */	lbz r3, 0x6a3(r28)
/* 805D38EC  38 00 00 04 */	li r0, 4
/* 805D38F0  98 01 00 0B */	stb r0, 0xb(r1)
/* 805D38F4  98 61 00 13 */	stb r3, 0x13(r1)
lbl_805D38F8:
/* 805D38F8  88 9C 06 A7 */	lbz r4, 0x6a7(r28)
/* 805D38FC  38 60 00 00 */	li r3, 0
/* 805D3900  38 00 00 01 */	li r0, 1
/* 805D3904  98 61 00 14 */	stb r3, 0x14(r1)
/* 805D3908  28 04 00 03 */	cmplwi r4, 3
/* 805D390C  98 01 00 0C */	stb r0, 0xc(r1)
/* 805D3910  40 82 01 14 */	bne lbl_805D3A24
/* 805D3914  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D3918  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805D391C  80 63 00 00 */	lwz r3, 0(r3)
/* 805D3920  88 03 00 16 */	lbz r0, 0x16(r3)
/* 805D3924  7C 00 07 75 */	extsb. r0, r0
/* 805D3928  40 80 00 1C */	bge lbl_805D3944
/* 805D392C  88 7C 06 9E */	lbz r3, 0x69e(r28)
/* 805D3930  7C 03 E8 00 */	cmpw r3, r29
/* 805D3934  40 81 00 10 */	ble lbl_805D3944
/* 805D3938  38 03 FF FF */	addi r0, r3, -1
/* 805D393C  3B E0 00 01 */	li r31, 1
/* 805D3940  98 1C 06 9E */	stb r0, 0x69e(r28)
lbl_805D3944:
/* 805D3944  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D3948  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805D394C  80 63 00 00 */	lwz r3, 0(r3)
/* 805D3950  88 03 00 16 */	lbz r0, 0x16(r3)
/* 805D3954  7C 00 07 75 */	extsb. r0, r0
/* 805D3958  40 81 00 20 */	ble lbl_805D3978
/* 805D395C  88 7C 06 9E */	lbz r3, 0x69e(r28)
/* 805D3960  38 1E FF FF */	addi r0, r30, -1
/* 805D3964  7C 03 00 00 */	cmpw r3, r0
/* 805D3968  40 80 00 10 */	bge lbl_805D3978
/* 805D396C  38 03 00 01 */	addi r0, r3, 1
/* 805D3970  3B E0 00 01 */	li r31, 1
/* 805D3974  98 1C 06 9E */	stb r0, 0x69e(r28)
lbl_805D3978:
/* 805D3978  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D397C  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805D3980  80 63 00 00 */	lwz r3, 0(r3)
/* 805D3984  88 03 00 17 */	lbz r0, 0x17(r3)
/* 805D3988  7C 00 07 75 */	extsb. r0, r0
/* 805D398C  40 81 00 44 */	ble lbl_805D39D0
/* 805D3990  88 7C 06 9F */	lbz r3, 0x69f(r28)
/* 805D3994  28 03 00 00 */	cmplwi r3, 0
/* 805D3998  41 82 00 20 */	beq lbl_805D39B8
/* 805D399C  88 1C 06 9E */	lbz r0, 0x69e(r28)
/* 805D39A0  7C 00 30 00 */	cmpw r0, r6
/* 805D39A4  40 80 00 2C */	bge lbl_805D39D0
/* 805D39A8  38 03 FF FF */	addi r0, r3, -1
/* 805D39AC  3B E0 00 01 */	li r31, 1
/* 805D39B0  98 1C 06 9F */	stb r0, 0x69f(r28)
/* 805D39B4  48 00 00 1C */	b lbl_805D39D0
lbl_805D39B8:
/* 805D39B8  88 1C 06 9E */	lbz r0, 0x69e(r28)
/* 805D39BC  28 00 00 00 */	cmplwi r0, 0
/* 805D39C0  40 82 00 10 */	bne lbl_805D39D0
/* 805D39C4  38 00 00 04 */	li r0, 4
/* 805D39C8  3B E0 00 01 */	li r31, 1
/* 805D39CC  98 1C 06 9F */	stb r0, 0x69f(r28)
lbl_805D39D0:
/* 805D39D0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D39D4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805D39D8  80 63 00 00 */	lwz r3, 0(r3)
/* 805D39DC  88 03 00 17 */	lbz r0, 0x17(r3)
/* 805D39E0  7C 00 07 75 */	extsb. r0, r0
/* 805D39E4  40 80 01 64 */	bge lbl_805D3B48
/* 805D39E8  88 7C 06 9F */	lbz r3, 0x69f(r28)
/* 805D39EC  28 03 00 04 */	cmplwi r3, 4
/* 805D39F0  40 80 00 20 */	bge lbl_805D3A10
/* 805D39F4  88 1C 06 9E */	lbz r0, 0x69e(r28)
/* 805D39F8  7C 00 38 00 */	cmpw r0, r7
/* 805D39FC  40 80 01 4C */	bge lbl_805D3B48
/* 805D3A00  38 03 00 01 */	addi r0, r3, 1
/* 805D3A04  3B E0 00 01 */	li r31, 1
/* 805D3A08  98 1C 06 9F */	stb r0, 0x69f(r28)
/* 805D3A0C  48 00 01 3C */	b lbl_805D3B48
lbl_805D3A10:
/* 805D3A10  38 00 00 00 */	li r0, 0
/* 805D3A14  3B E0 00 01 */	li r31, 1
/* 805D3A18  98 1C 06 9E */	stb r0, 0x69e(r28)
/* 805D3A1C  98 1C 06 9F */	stb r0, 0x69f(r28)
/* 805D3A20  48 00 01 28 */	b lbl_805D3B48
lbl_805D3A24:
/* 805D3A24  28 04 00 00 */	cmplwi r4, 0
/* 805D3A28  40 82 01 20 */	bne lbl_805D3B48
/* 805D3A2C  38 60 02 00 */	li r3, 0x200
/* 805D3A30  4B DC 24 E1 */	bl chkTrigger
/* 805D3A34  2C 03 00 00 */	cmpwi r3, 0
/* 805D3A38  41 82 00 38 */	beq lbl_805D3A70
/* 805D3A3C  88 7C 06 9E */	lbz r3, 0x69e(r28)
/* 805D3A40  7C 03 E8 00 */	cmpw r3, r29
/* 805D3A44  40 81 00 14 */	ble lbl_805D3A58
/* 805D3A48  38 03 FF FF */	addi r0, r3, -1
/* 805D3A4C  3B E0 00 01 */	li r31, 1
/* 805D3A50  98 1C 06 9E */	stb r0, 0x69e(r28)
/* 805D3A54  48 00 00 1C */	b lbl_805D3A70
lbl_805D3A58:
/* 805D3A58  88 1C 06 9F */	lbz r0, 0x69f(r28)
/* 805D3A5C  38 61 00 08 */	addi r3, r1, 8
/* 805D3A60  3B E0 00 01 */	li r31, 1
/* 805D3A64  7C 63 00 AE */	lbzx r3, r3, r0
/* 805D3A68  38 03 FF FF */	addi r0, r3, -1
/* 805D3A6C  98 1C 06 9E */	stb r0, 0x69e(r28)
lbl_805D3A70:
/* 805D3A70  38 60 01 00 */	li r3, 0x100
/* 805D3A74  4B DC 24 9D */	bl chkTrigger
/* 805D3A78  2C 03 00 00 */	cmpwi r3, 0
/* 805D3A7C  41 82 00 30 */	beq lbl_805D3AAC
/* 805D3A80  88 7C 06 9E */	lbz r3, 0x69e(r28)
/* 805D3A84  38 1E FF FF */	addi r0, r30, -1
/* 805D3A88  7C 03 00 00 */	cmpw r3, r0
/* 805D3A8C  40 80 00 14 */	bge lbl_805D3AA0
/* 805D3A90  38 03 00 01 */	addi r0, r3, 1
/* 805D3A94  3B E0 00 01 */	li r31, 1
/* 805D3A98  98 1C 06 9E */	stb r0, 0x69e(r28)
/* 805D3A9C  48 00 00 10 */	b lbl_805D3AAC
lbl_805D3AA0:
/* 805D3AA0  38 00 00 00 */	li r0, 0
/* 805D3AA4  3B E0 00 01 */	li r31, 1
/* 805D3AA8  98 1C 06 9E */	stb r0, 0x69e(r28)
lbl_805D3AAC:
/* 805D3AAC  38 60 08 00 */	li r3, 0x800
/* 805D3AB0  4B DC 24 61 */	bl chkTrigger
/* 805D3AB4  2C 03 00 00 */	cmpwi r3, 0
/* 805D3AB8  41 82 00 44 */	beq lbl_805D3AFC
/* 805D3ABC  88 7C 06 9F */	lbz r3, 0x69f(r28)
/* 805D3AC0  28 03 00 00 */	cmplwi r3, 0
/* 805D3AC4  41 82 00 24 */	beq lbl_805D3AE8
/* 805D3AC8  38 03 FF FF */	addi r0, r3, -1
/* 805D3ACC  38 61 00 10 */	addi r3, r1, 0x10
/* 805D3AD0  98 1C 06 9F */	stb r0, 0x69f(r28)
/* 805D3AD4  3B E0 00 01 */	li r31, 1
/* 805D3AD8  88 1C 06 9F */	lbz r0, 0x69f(r28)
/* 805D3ADC  7C 03 00 AE */	lbzx r0, r3, r0
/* 805D3AE0  98 1C 06 9E */	stb r0, 0x69e(r28)
/* 805D3AE4  48 00 00 18 */	b lbl_805D3AFC
lbl_805D3AE8:
/* 805D3AE8  38 60 00 00 */	li r3, 0
/* 805D3AEC  38 00 00 04 */	li r0, 4
/* 805D3AF0  98 7C 06 9E */	stb r3, 0x69e(r28)
/* 805D3AF4  3B E0 00 01 */	li r31, 1
/* 805D3AF8  98 1C 06 9F */	stb r0, 0x69f(r28)
lbl_805D3AFC:
/* 805D3AFC  38 60 04 00 */	li r3, 0x400
/* 805D3B00  4B DC 24 11 */	bl chkTrigger
/* 805D3B04  2C 03 00 00 */	cmpwi r3, 0
/* 805D3B08  41 82 00 40 */	beq lbl_805D3B48
/* 805D3B0C  88 7C 06 9F */	lbz r3, 0x69f(r28)
/* 805D3B10  28 03 00 04 */	cmplwi r3, 4
/* 805D3B14  40 80 00 24 */	bge lbl_805D3B38
/* 805D3B18  38 03 00 01 */	addi r0, r3, 1
/* 805D3B1C  38 61 00 10 */	addi r3, r1, 0x10
/* 805D3B20  98 1C 06 9F */	stb r0, 0x69f(r28)
/* 805D3B24  3B E0 00 01 */	li r31, 1
/* 805D3B28  88 1C 06 9F */	lbz r0, 0x69f(r28)
/* 805D3B2C  7C 03 00 AE */	lbzx r0, r3, r0
/* 805D3B30  98 1C 06 9E */	stb r0, 0x69e(r28)
/* 805D3B34  48 00 00 14 */	b lbl_805D3B48
lbl_805D3B38:
/* 805D3B38  38 00 00 00 */	li r0, 0
/* 805D3B3C  3B E0 00 01 */	li r31, 1
/* 805D3B40  98 1C 06 9E */	stb r0, 0x69e(r28)
/* 805D3B44  98 1C 06 9F */	stb r0, 0x69f(r28)
lbl_805D3B48:
/* 805D3B48  7F E3 FB 78 */	mr r3, r31
/* 805D3B4C  39 61 00 30 */	addi r11, r1, 0x30
/* 805D3B50  4B AC 73 CD */	bl func_8009AF1C
/* 805D3B54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805D3B58  7C 08 03 A6 */	mtlr r0
/* 805D3B5C  38 21 00 30 */	addi r1, r1, 0x30
/* 805D3B60  4E 80 00 20 */	blr 
