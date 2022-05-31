lbl_805478A8:
/* 805478A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805478AC  7C 08 02 A6 */	mflr r0
/* 805478B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805478B4  39 61 00 20 */	addi r11, r1, 0x20
/* 805478B8  4B B5 36 15 */	bl func_8009AECC
/* 805478BC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805478C0  7C 7D 1B 78 */	mr r29, r3
/* 805478C4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805478C8  3F E3 00 02 */	addis r31, r3, 2
/* 805478CC  88 7F 60 03 */	lbz r3, 0x6003(r31)
/* 805478D0  4B E6 BC E9 */	bl mHS_get_arrange_idx
/* 805478D4  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 805478D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805478DC  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805478E0  7C 60 22 14 */	add r3, r0, r4
/* 805478E4  3F C3 00 01 */	addis r30, r3, 1
/* 805478E8  88 1E 9D 13 */	lbz r0, -0x62ed(r30)
/* 805478EC  3B DE 9D 0E */	addi r30, r30, -25330
/* 805478F0  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 805478F4  28 00 00 01 */	cmplwi r0, 1
/* 805478F8  40 82 00 9C */	bne lbl_80547994
/* 805478FC  88 1E 00 05 */	lbz r0, 5(r30)
/* 80547900  38 80 00 00 */	li r4, 0
/* 80547904  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 80547908  98 1E 00 05 */	stb r0, 5(r30)
/* 8054790C  88 BE 00 05 */	lbz r5, 5(r30)
/* 80547910  54 A0 DF FE */	rlwinm r0, r5, 0x1b, 0x1f, 0x1f
/* 80547914  28 00 00 01 */	cmplwi r0, 1
/* 80547918  40 82 00 2C */	bne lbl_80547944
/* 8054791C  50 85 2E B4 */	rlwimi r5, r4, 5, 0x1a, 0x1a
/* 80547920  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000C288@ha */
/* 80547924  98 BE 00 05 */	stb r5, 5(r30)
/* 80547928  38 C3 C2 88 */	addi r6, r3, 0xC288 /* 0x0000C288@l */
/* 8054792C  38 80 00 01 */	li r4, 1
/* 80547930  38 60 00 CC */	li r3, 0xcc
/* 80547934  88 1E 00 05 */	lbz r0, 5(r30)
/* 80547938  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8054793C  98 1E 00 05 */	stb r0, 5(r30)
/* 80547940  48 00 00 2C */	b lbl_8054796C
lbl_80547944:
/* 80547944  88 1E 00 04 */	lbz r0, 4(r30)
/* 80547948  3C 80 80 6A */	lis r4, rehouse_msg@ha /* 0x806A4A70@ha */
/* 8054794C  3C 60 80 6A */	lis r3, rehouse_loan@ha /* 0x806A4A80@ha */
/* 80547950  54 06 DF 7E */	rlwinm r6, r0, 0x1b, 0x1d, 0x1f
/* 80547954  38 A4 4A 70 */	addi r5, r4, rehouse_msg@l /* 0x806A4A70@l */
/* 80547958  38 06 FF FF */	addi r0, r6, -1
/* 8054795C  38 83 4A 80 */	addi r4, r3, rehouse_loan@l /* 0x806A4A80@l */
/* 80547960  54 00 10 3A */	slwi r0, r0, 2
/* 80547964  7C 65 00 2E */	lwzx r3, r5, r0
/* 80547968  7C C4 00 2E */	lwzx r6, r4, r0
lbl_8054796C:
/* 8054796C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80547970  38 80 00 00 */	li r4, 0
/* 80547974  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80547978  3C A5 00 02 */	addis r5, r5, 2
/* 8054797C  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 80547980  90 C5 00 90 */	stw r6, 0x90(r5)
/* 80547984  88 1E 00 05 */	lbz r0, 5(r30)
/* 80547988  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8054798C  98 1E 00 05 */	stb r0, 5(r30)
/* 80547990  48 00 00 E4 */	b lbl_80547A74
lbl_80547994:
/* 80547994  88 9E 00 05 */	lbz r4, 5(r30)
/* 80547998  54 85 D7 FE */	rlwinm r5, r4, 0x1a, 0x1f, 0x1f
/* 8054799C  28 05 00 01 */	cmplwi r5, 1
/* 805479A0  40 82 00 28 */	bne lbl_805479C8
/* 805479A4  88 1E 00 04 */	lbz r0, 4(r30)
/* 805479A8  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 805479AC  28 00 00 04 */	cmplwi r0, 4
/* 805479B0  40 82 00 18 */	bne lbl_805479C8
/* 805479B4  38 00 00 00 */	li r0, 0
/* 805479B8  38 60 00 09 */	li r3, 9
/* 805479BC  50 04 36 72 */	rlwimi r4, r0, 6, 0x19, 0x19
/* 805479C0  98 9E 00 05 */	stb r4, 5(r30)
/* 805479C4  48 00 00 B0 */	b lbl_80547A74
lbl_805479C8:
/* 805479C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805479CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805479D0  3F 83 00 02 */	addis r28, r3, 2
/* 805479D4  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 805479D8  80 03 00 90 */	lwz r0, 0x90(r3)
/* 805479DC  28 00 00 00 */	cmplwi r0, 0
/* 805479E0  40 82 00 8C */	bne lbl_80547A6C
/* 805479E4  88 1E 00 04 */	lbz r0, 4(r30)
/* 805479E8  54 03 DF 7E */	rlwinm r3, r0, 0x1b, 0x1d, 0x1f
/* 805479EC  28 03 00 03 */	cmplwi r3, 3
/* 805479F0  40 82 00 7C */	bne lbl_80547A6C
/* 805479F4  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 805479F8  7C 03 00 40 */	cmplw r3, r0
/* 805479FC  40 82 00 70 */	bne lbl_80547A6C
/* 80547A00  28 05 00 00 */	cmplwi r5, 0
/* 80547A04  40 82 00 68 */	bne lbl_80547A6C
/* 80547A08  8B 7C 06 8B */	lbz r27, 0x68b(r28)
/* 80547A0C  88 7F 60 03 */	lbz r3, 0x6003(r31)
/* 80547A10  4B E6 BB A9 */	bl mHS_get_arrange_idx
/* 80547A14  88 1E 00 05 */	lbz r0, 5(r30)
/* 80547A18  38 80 00 01 */	li r4, 1
/* 80547A1C  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80547A20  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80547A24  98 1E 00 05 */	stb r0, 5(r30)
/* 80547A28  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 80547A2C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80547A30  88 9E 00 04 */	lbz r4, 4(r30)
/* 80547A34  53 64 07 BE */	rlwimi r4, r27, 0, 0x1e, 0x1f
/* 80547A38  3B 7B 00 01 */	addi r27, r27, 1
/* 80547A3C  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80547A40  7C 63 2A 14 */	add r3, r3, r5
/* 80547A44  3C 63 00 01 */	addis r3, r3, 1
/* 80547A48  98 9E 00 04 */	stb r4, 4(r30)
/* 80547A4C  28 00 00 04 */	cmplwi r0, 4
/* 80547A50  38 63 9C E8 */	addi r3, r3, -25368
/* 80547A54  41 80 00 08 */	blt lbl_80547A5C
/* 80547A58  3B 60 00 03 */	li r27, 3
lbl_80547A5C:
/* 80547A5C  9B 7C 06 8B */	stb r27, 0x68b(r28)
/* 80547A60  4B FF E4 0D */	bl aNSC_set_rehouse_order_date
/* 80547A64  38 60 00 08 */	li r3, 8
/* 80547A68  48 00 00 0C */	b lbl_80547A74
lbl_80547A6C:
/* 80547A6C  7F A3 EB 78 */	mr r3, r29
/* 80547A70  4B FF FD FD */	bl aNSC_get_start_call_msg_no
lbl_80547A74:
/* 80547A74  4B FF F2 71 */	bl aNSC_get_msg_no
/* 80547A78  4B E5 0A 9D */	bl mDemo_Set_msg_num
/* 80547A7C  38 00 00 01 */	li r0, 1
/* 80547A80  39 61 00 20 */	addi r11, r1, 0x20
/* 80547A84  90 1D 09 98 */	stw r0, 0x998(r29)
/* 80547A88  4B B5 34 91 */	bl func_8009AF18
/* 80547A8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80547A90  7C 08 03 A6 */	mtlr r0
/* 80547A94  38 21 00 20 */	addi r1, r1, 0x20
/* 80547A98  4E 80 00 20 */	blr 
