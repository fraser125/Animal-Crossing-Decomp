lbl_8058294C:
/* 8058294C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80582950  7C 08 02 A6 */	mflr r0
/* 80582954  90 01 00 24 */	stw r0, 0x24(r1)
/* 80582958  39 61 00 20 */	addi r11, r1, 0x20
/* 8058295C  4B B1 85 71 */	bl func_8009AECC
/* 80582960  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80582964  7C 7D 1B 78 */	mr r29, r3
/* 80582968  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8058296C  3F E3 00 02 */	addis r31, r3, 2
/* 80582970  88 7F 60 03 */	lbz r3, 0x6003(r31)
/* 80582974  4B E3 0C 45 */	bl mHS_get_arrange_idx
/* 80582978  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 8058297C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80582980  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80582984  7C 60 22 14 */	add r3, r0, r4
/* 80582988  3F C3 00 01 */	addis r30, r3, 1
/* 8058298C  88 1E 9D 13 */	lbz r0, -0x62ed(r30)
/* 80582990  3B DE 9D 0E */	addi r30, r30, -25330
/* 80582994  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 80582998  28 00 00 01 */	cmplwi r0, 1
/* 8058299C  40 82 00 9C */	bne lbl_80582A38
/* 805829A0  88 1E 00 05 */	lbz r0, 5(r30)
/* 805829A4  38 80 00 00 */	li r4, 0
/* 805829A8  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 805829AC  98 1E 00 05 */	stb r0, 5(r30)
/* 805829B0  88 BE 00 05 */	lbz r5, 5(r30)
/* 805829B4  54 A0 DF FE */	rlwinm r0, r5, 0x1b, 0x1f, 0x1f
/* 805829B8  28 00 00 01 */	cmplwi r0, 1
/* 805829BC  40 82 00 2C */	bne lbl_805829E8
/* 805829C0  50 85 2E B4 */	rlwimi r5, r4, 5, 0x1a, 0x1a
/* 805829C4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000C288@ha */
/* 805829C8  98 BE 00 05 */	stb r5, 5(r30)
/* 805829CC  38 C3 C2 88 */	addi r6, r3, 0xC288 /* 0x0000C288@l */
/* 805829D0  38 80 00 01 */	li r4, 1
/* 805829D4  38 60 00 CC */	li r3, 0xcc
/* 805829D8  88 1E 00 05 */	lbz r0, 5(r30)
/* 805829DC  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 805829E0  98 1E 00 05 */	stb r0, 5(r30)
/* 805829E4  48 00 00 2C */	b lbl_80582A10
lbl_805829E8:
/* 805829E8  88 1E 00 04 */	lbz r0, 4(r30)
/* 805829EC  3C 80 80 6C */	lis r4, rehouse_msg@ha /* 0x806C178C@ha */
/* 805829F0  3C 60 80 6C */	lis r3, rehouse_loan@ha /* 0x806C179C@ha */
/* 805829F4  54 06 DF 7E */	rlwinm r6, r0, 0x1b, 0x1d, 0x1f
/* 805829F8  38 A4 17 8C */	addi r5, r4, rehouse_msg@l /* 0x806C178C@l */
/* 805829FC  38 06 FF FF */	addi r0, r6, -1
/* 80582A00  38 83 17 9C */	addi r4, r3, rehouse_loan@l /* 0x806C179C@l */
/* 80582A04  54 00 10 3A */	slwi r0, r0, 2
/* 80582A08  7C 65 00 2E */	lwzx r3, r5, r0
/* 80582A0C  7C C4 00 2E */	lwzx r6, r4, r0
lbl_80582A10:
/* 80582A10  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80582A14  38 80 00 00 */	li r4, 0
/* 80582A18  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80582A1C  3C A5 00 02 */	addis r5, r5, 2
/* 80582A20  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 80582A24  90 C5 00 90 */	stw r6, 0x90(r5)
/* 80582A28  88 1E 00 05 */	lbz r0, 5(r30)
/* 80582A2C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80582A30  98 1E 00 05 */	stb r0, 5(r30)
/* 80582A34  48 00 00 E4 */	b lbl_80582B18
lbl_80582A38:
/* 80582A38  88 9E 00 05 */	lbz r4, 5(r30)
/* 80582A3C  54 85 D7 FE */	rlwinm r5, r4, 0x1a, 0x1f, 0x1f
/* 80582A40  28 05 00 01 */	cmplwi r5, 1
/* 80582A44  40 82 00 28 */	bne lbl_80582A6C
/* 80582A48  88 1E 00 04 */	lbz r0, 4(r30)
/* 80582A4C  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 80582A50  28 00 00 04 */	cmplwi r0, 4
/* 80582A54  40 82 00 18 */	bne lbl_80582A6C
/* 80582A58  38 00 00 00 */	li r0, 0
/* 80582A5C  38 60 00 09 */	li r3, 9
/* 80582A60  50 04 36 72 */	rlwimi r4, r0, 6, 0x19, 0x19
/* 80582A64  98 9E 00 05 */	stb r4, 5(r30)
/* 80582A68  48 00 00 B0 */	b lbl_80582B18
lbl_80582A6C:
/* 80582A6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80582A70  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80582A74  3F 83 00 02 */	addis r28, r3, 2
/* 80582A78  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 80582A7C  80 03 00 90 */	lwz r0, 0x90(r3)
/* 80582A80  28 00 00 00 */	cmplwi r0, 0
/* 80582A84  40 82 00 8C */	bne lbl_80582B10
/* 80582A88  88 1E 00 04 */	lbz r0, 4(r30)
/* 80582A8C  54 03 DF 7E */	rlwinm r3, r0, 0x1b, 0x1d, 0x1f
/* 80582A90  28 03 00 03 */	cmplwi r3, 3
/* 80582A94  40 82 00 7C */	bne lbl_80582B10
/* 80582A98  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 80582A9C  7C 03 00 40 */	cmplw r3, r0
/* 80582AA0  40 82 00 70 */	bne lbl_80582B10
/* 80582AA4  28 05 00 00 */	cmplwi r5, 0
/* 80582AA8  40 82 00 68 */	bne lbl_80582B10
/* 80582AAC  8B 7C 06 8B */	lbz r27, 0x68b(r28)
/* 80582AB0  88 7F 60 03 */	lbz r3, 0x6003(r31)
/* 80582AB4  4B E3 0B 05 */	bl mHS_get_arrange_idx
/* 80582AB8  88 1E 00 05 */	lbz r0, 5(r30)
/* 80582ABC  38 80 00 01 */	li r4, 1
/* 80582AC0  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80582AC4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80582AC8  98 1E 00 05 */	stb r0, 5(r30)
/* 80582ACC  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 80582AD0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80582AD4  88 9E 00 04 */	lbz r4, 4(r30)
/* 80582AD8  53 64 07 BE */	rlwimi r4, r27, 0, 0x1e, 0x1f
/* 80582ADC  3B 7B 00 01 */	addi r27, r27, 1
/* 80582AE0  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80582AE4  7C 63 2A 14 */	add r3, r3, r5
/* 80582AE8  3C 63 00 01 */	addis r3, r3, 1
/* 80582AEC  98 9E 00 04 */	stb r4, 4(r30)
/* 80582AF0  28 00 00 04 */	cmplwi r0, 4
/* 80582AF4  38 63 9C E8 */	addi r3, r3, -25368
/* 80582AF8  41 80 00 08 */	blt lbl_80582B00
/* 80582AFC  3B 60 00 03 */	li r27, 3
lbl_80582B00:
/* 80582B00  9B 7C 06 8B */	stb r27, 0x68b(r28)
/* 80582B04  4B FF E4 0D */	bl aNSC_set_rehouse_order_date
/* 80582B08  38 60 00 08 */	li r3, 8
/* 80582B0C  48 00 00 0C */	b lbl_80582B18
lbl_80582B10:
/* 80582B10  7F A3 EB 78 */	mr r3, r29
/* 80582B14  4B FF FD FD */	bl aNSC_get_start_call_msg_no
lbl_80582B18:
/* 80582B18  4B FF F2 71 */	bl aNSC_get_msg_no
/* 80582B1C  4B E1 59 F9 */	bl mDemo_Set_msg_num
/* 80582B20  38 00 00 01 */	li r0, 1
/* 80582B24  39 61 00 20 */	addi r11, r1, 0x20
/* 80582B28  90 1D 09 98 */	stw r0, 0x998(r29)
/* 80582B2C  4B B1 83 ED */	bl func_8009AF18
/* 80582B30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80582B34  7C 08 03 A6 */	mtlr r0
/* 80582B38  38 21 00 20 */	addi r1, r1, 0x20
/* 80582B3C  4E 80 00 20 */	blr 
