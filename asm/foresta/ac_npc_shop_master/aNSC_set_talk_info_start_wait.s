lbl_80578E40:
/* 80578E40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80578E44  7C 08 02 A6 */	mflr r0
/* 80578E48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80578E4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80578E50  4B B2 20 7D */	bl func_8009AECC
/* 80578E54  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80578E58  7C 7D 1B 78 */	mr r29, r3
/* 80578E5C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80578E60  3F E3 00 02 */	addis r31, r3, 2
/* 80578E64  88 7F 60 03 */	lbz r3, 0x6003(r31)
/* 80578E68  4B E3 A7 51 */	bl mHS_get_arrange_idx
/* 80578E6C  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 80578E70  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80578E74  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80578E78  7C 60 22 14 */	add r3, r0, r4
/* 80578E7C  3F C3 00 01 */	addis r30, r3, 1
/* 80578E80  88 1E 9D 13 */	lbz r0, -0x62ed(r30)
/* 80578E84  3B DE 9D 0E */	addi r30, r30, -25330
/* 80578E88  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 80578E8C  28 00 00 01 */	cmplwi r0, 1
/* 80578E90  40 82 00 9C */	bne lbl_80578F2C
/* 80578E94  88 1E 00 05 */	lbz r0, 5(r30)
/* 80578E98  38 80 00 00 */	li r4, 0
/* 80578E9C  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 80578EA0  98 1E 00 05 */	stb r0, 5(r30)
/* 80578EA4  88 BE 00 05 */	lbz r5, 5(r30)
/* 80578EA8  54 A0 DF FE */	rlwinm r0, r5, 0x1b, 0x1f, 0x1f
/* 80578EAC  28 00 00 01 */	cmplwi r0, 1
/* 80578EB0  40 82 00 2C */	bne lbl_80578EDC
/* 80578EB4  50 85 2E B4 */	rlwimi r5, r4, 5, 0x1a, 0x1a
/* 80578EB8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000C288@ha */
/* 80578EBC  98 BE 00 05 */	stb r5, 5(r30)
/* 80578EC0  38 C3 C2 88 */	addi r6, r3, 0xC288 /* 0x0000C288@l */
/* 80578EC4  38 80 00 01 */	li r4, 1
/* 80578EC8  38 60 00 CC */	li r3, 0xcc
/* 80578ECC  88 1E 00 05 */	lbz r0, 5(r30)
/* 80578ED0  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 80578ED4  98 1E 00 05 */	stb r0, 5(r30)
/* 80578ED8  48 00 00 2C */	b lbl_80578F04
lbl_80578EDC:
/* 80578EDC  88 1E 00 04 */	lbz r0, 4(r30)
/* 80578EE0  3C 80 80 6C */	lis r4, rehouse_msg@ha /* 0x806C0248@ha */
/* 80578EE4  3C 60 80 6C */	lis r3, rehouse_loan@ha /* 0x806C0258@ha */
/* 80578EE8  54 06 DF 7E */	rlwinm r6, r0, 0x1b, 0x1d, 0x1f
/* 80578EEC  38 A4 02 48 */	addi r5, r4, rehouse_msg@l /* 0x806C0248@l */
/* 80578EF0  38 06 FF FF */	addi r0, r6, -1
/* 80578EF4  38 83 02 58 */	addi r4, r3, rehouse_loan@l /* 0x806C0258@l */
/* 80578EF8  54 00 10 3A */	slwi r0, r0, 2
/* 80578EFC  7C 65 00 2E */	lwzx r3, r5, r0
/* 80578F00  7C C4 00 2E */	lwzx r6, r4, r0
lbl_80578F04:
/* 80578F04  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80578F08  38 80 00 00 */	li r4, 0
/* 80578F0C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80578F10  3C A5 00 02 */	addis r5, r5, 2
/* 80578F14  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 80578F18  90 C5 00 90 */	stw r6, 0x90(r5)
/* 80578F1C  88 1E 00 05 */	lbz r0, 5(r30)
/* 80578F20  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80578F24  98 1E 00 05 */	stb r0, 5(r30)
/* 80578F28  48 00 00 E4 */	b lbl_8057900C
lbl_80578F2C:
/* 80578F2C  88 9E 00 05 */	lbz r4, 5(r30)
/* 80578F30  54 85 D7 FE */	rlwinm r5, r4, 0x1a, 0x1f, 0x1f
/* 80578F34  28 05 00 01 */	cmplwi r5, 1
/* 80578F38  40 82 00 28 */	bne lbl_80578F60
/* 80578F3C  88 1E 00 04 */	lbz r0, 4(r30)
/* 80578F40  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 80578F44  28 00 00 04 */	cmplwi r0, 4
/* 80578F48  40 82 00 18 */	bne lbl_80578F60
/* 80578F4C  38 00 00 00 */	li r0, 0
/* 80578F50  38 60 00 09 */	li r3, 9
/* 80578F54  50 04 36 72 */	rlwimi r4, r0, 6, 0x19, 0x19
/* 80578F58  98 9E 00 05 */	stb r4, 5(r30)
/* 80578F5C  48 00 00 B0 */	b lbl_8057900C
lbl_80578F60:
/* 80578F60  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80578F64  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80578F68  3F 83 00 02 */	addis r28, r3, 2
/* 80578F6C  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 80578F70  80 03 00 90 */	lwz r0, 0x90(r3)
/* 80578F74  28 00 00 00 */	cmplwi r0, 0
/* 80578F78  40 82 00 8C */	bne lbl_80579004
/* 80578F7C  88 1E 00 04 */	lbz r0, 4(r30)
/* 80578F80  54 03 DF 7E */	rlwinm r3, r0, 0x1b, 0x1d, 0x1f
/* 80578F84  28 03 00 03 */	cmplwi r3, 3
/* 80578F88  40 82 00 7C */	bne lbl_80579004
/* 80578F8C  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 80578F90  7C 03 00 40 */	cmplw r3, r0
/* 80578F94  40 82 00 70 */	bne lbl_80579004
/* 80578F98  28 05 00 00 */	cmplwi r5, 0
/* 80578F9C  40 82 00 68 */	bne lbl_80579004
/* 80578FA0  8B 7C 06 8B */	lbz r27, 0x68b(r28)
/* 80578FA4  88 7F 60 03 */	lbz r3, 0x6003(r31)
/* 80578FA8  4B E3 A6 11 */	bl mHS_get_arrange_idx
/* 80578FAC  88 1E 00 05 */	lbz r0, 5(r30)
/* 80578FB0  38 80 00 01 */	li r4, 1
/* 80578FB4  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80578FB8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80578FBC  98 1E 00 05 */	stb r0, 5(r30)
/* 80578FC0  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 80578FC4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80578FC8  88 9E 00 04 */	lbz r4, 4(r30)
/* 80578FCC  53 64 07 BE */	rlwimi r4, r27, 0, 0x1e, 0x1f
/* 80578FD0  3B 7B 00 01 */	addi r27, r27, 1
/* 80578FD4  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80578FD8  7C 63 2A 14 */	add r3, r3, r5
/* 80578FDC  3C 63 00 01 */	addis r3, r3, 1
/* 80578FE0  98 9E 00 04 */	stb r4, 4(r30)
/* 80578FE4  28 00 00 04 */	cmplwi r0, 4
/* 80578FE8  38 63 9C E8 */	addi r3, r3, -25368
/* 80578FEC  41 80 00 08 */	blt lbl_80578FF4
/* 80578FF0  3B 60 00 03 */	li r27, 3
lbl_80578FF4:
/* 80578FF4  9B 7C 06 8B */	stb r27, 0x68b(r28)
/* 80578FF8  4B FF E4 0D */	bl aNSC_set_rehouse_order_date
/* 80578FFC  38 60 00 08 */	li r3, 8
/* 80579000  48 00 00 0C */	b lbl_8057900C
lbl_80579004:
/* 80579004  7F A3 EB 78 */	mr r3, r29
/* 80579008  4B FF FD FD */	bl aNSC_get_start_call_msg_no
lbl_8057900C:
/* 8057900C  4B FF F2 71 */	bl aNSC_get_msg_no
/* 80579010  4B E1 F5 05 */	bl mDemo_Set_msg_num
/* 80579014  38 00 00 01 */	li r0, 1
/* 80579018  39 61 00 20 */	addi r11, r1, 0x20
/* 8057901C  90 1D 09 98 */	stw r0, 0x998(r29)
/* 80579020  4B B2 1E F9 */	bl func_8009AF18
/* 80579024  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80579028  7C 08 03 A6 */	mtlr r0
/* 8057902C  38 21 00 20 */	addi r1, r1, 0x20
/* 80579030  4E 80 00 20 */	blr 
