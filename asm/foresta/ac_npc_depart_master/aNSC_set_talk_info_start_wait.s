lbl_8054F1C0:
/* 8054F1C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054F1C4  7C 08 02 A6 */	mflr r0
/* 8054F1C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054F1CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8054F1D0  4B B4 BC FD */	bl func_8009AECC
/* 8054F1D4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054F1D8  7C 7D 1B 78 */	mr r29, r3
/* 8054F1DC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8054F1E0  3F E3 00 02 */	addis r31, r3, 2
/* 8054F1E4  88 7F 60 03 */	lbz r3, 0x6003(r31)
/* 8054F1E8  4B E6 43 D1 */	bl mHS_get_arrange_idx
/* 8054F1EC  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 8054F1F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054F1F4  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8054F1F8  7C 60 22 14 */	add r3, r0, r4
/* 8054F1FC  3F C3 00 01 */	addis r30, r3, 1
/* 8054F200  88 1E 9D 13 */	lbz r0, -0x62ed(r30)
/* 8054F204  3B DE 9D 0E */	addi r30, r30, -25330
/* 8054F208  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 8054F20C  28 00 00 01 */	cmplwi r0, 1
/* 8054F210  40 82 00 9C */	bne lbl_8054F2AC
/* 8054F214  88 1E 00 05 */	lbz r0, 5(r30)
/* 8054F218  38 80 00 00 */	li r4, 0
/* 8054F21C  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8054F220  98 1E 00 05 */	stb r0, 5(r30)
/* 8054F224  88 BE 00 05 */	lbz r5, 5(r30)
/* 8054F228  54 A0 DF FE */	rlwinm r0, r5, 0x1b, 0x1f, 0x1f
/* 8054F22C  28 00 00 01 */	cmplwi r0, 1
/* 8054F230  40 82 00 2C */	bne lbl_8054F25C
/* 8054F234  50 85 2E B4 */	rlwimi r5, r4, 5, 0x1a, 0x1a
/* 8054F238  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000C288@ha */
/* 8054F23C  98 BE 00 05 */	stb r5, 5(r30)
/* 8054F240  38 C3 C2 88 */	addi r6, r3, 0xC288 /* 0x0000C288@l */
/* 8054F244  38 80 00 01 */	li r4, 1
/* 8054F248  38 60 00 CC */	li r3, 0xcc
/* 8054F24C  88 1E 00 05 */	lbz r0, 5(r30)
/* 8054F250  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8054F254  98 1E 00 05 */	stb r0, 5(r30)
/* 8054F258  48 00 00 2C */	b lbl_8054F284
lbl_8054F25C:
/* 8054F25C  88 1E 00 04 */	lbz r0, 4(r30)
/* 8054F260  3C 80 80 6A */	lis r4, rehouse_msg@ha /* 0x806A5C84@ha */
/* 8054F264  3C 60 80 6A */	lis r3, rehouse_loan@ha /* 0x806A5C94@ha */
/* 8054F268  54 06 DF 7E */	rlwinm r6, r0, 0x1b, 0x1d, 0x1f
/* 8054F26C  38 A4 5C 84 */	addi r5, r4, rehouse_msg@l /* 0x806A5C84@l */
/* 8054F270  38 06 FF FF */	addi r0, r6, -1
/* 8054F274  38 83 5C 94 */	addi r4, r3, rehouse_loan@l /* 0x806A5C94@l */
/* 8054F278  54 00 10 3A */	slwi r0, r0, 2
/* 8054F27C  7C 65 00 2E */	lwzx r3, r5, r0
/* 8054F280  7C C4 00 2E */	lwzx r6, r4, r0
lbl_8054F284:
/* 8054F284  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054F288  38 80 00 00 */	li r4, 0
/* 8054F28C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8054F290  3C A5 00 02 */	addis r5, r5, 2
/* 8054F294  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 8054F298  90 C5 00 90 */	stw r6, 0x90(r5)
/* 8054F29C  88 1E 00 05 */	lbz r0, 5(r30)
/* 8054F2A0  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8054F2A4  98 1E 00 05 */	stb r0, 5(r30)
/* 8054F2A8  48 00 00 E4 */	b lbl_8054F38C
lbl_8054F2AC:
/* 8054F2AC  88 9E 00 05 */	lbz r4, 5(r30)
/* 8054F2B0  54 85 D7 FE */	rlwinm r5, r4, 0x1a, 0x1f, 0x1f
/* 8054F2B4  28 05 00 01 */	cmplwi r5, 1
/* 8054F2B8  40 82 00 28 */	bne lbl_8054F2E0
/* 8054F2BC  88 1E 00 04 */	lbz r0, 4(r30)
/* 8054F2C0  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 8054F2C4  28 00 00 04 */	cmplwi r0, 4
/* 8054F2C8  40 82 00 18 */	bne lbl_8054F2E0
/* 8054F2CC  38 00 00 00 */	li r0, 0
/* 8054F2D0  38 60 00 09 */	li r3, 9
/* 8054F2D4  50 04 36 72 */	rlwimi r4, r0, 6, 0x19, 0x19
/* 8054F2D8  98 9E 00 05 */	stb r4, 5(r30)
/* 8054F2DC  48 00 00 B0 */	b lbl_8054F38C
lbl_8054F2E0:
/* 8054F2E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054F2E4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054F2E8  3F 83 00 02 */	addis r28, r3, 2
/* 8054F2EC  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 8054F2F0  80 03 00 90 */	lwz r0, 0x90(r3)
/* 8054F2F4  28 00 00 00 */	cmplwi r0, 0
/* 8054F2F8  40 82 00 8C */	bne lbl_8054F384
/* 8054F2FC  88 1E 00 04 */	lbz r0, 4(r30)
/* 8054F300  54 03 DF 7E */	rlwinm r3, r0, 0x1b, 0x1d, 0x1f
/* 8054F304  28 03 00 03 */	cmplwi r3, 3
/* 8054F308  40 82 00 7C */	bne lbl_8054F384
/* 8054F30C  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 8054F310  7C 03 00 40 */	cmplw r3, r0
/* 8054F314  40 82 00 70 */	bne lbl_8054F384
/* 8054F318  28 05 00 00 */	cmplwi r5, 0
/* 8054F31C  40 82 00 68 */	bne lbl_8054F384
/* 8054F320  8B 7C 06 8B */	lbz r27, 0x68b(r28)
/* 8054F324  88 7F 60 03 */	lbz r3, 0x6003(r31)
/* 8054F328  4B E6 42 91 */	bl mHS_get_arrange_idx
/* 8054F32C  88 1E 00 05 */	lbz r0, 5(r30)
/* 8054F330  38 80 00 01 */	li r4, 1
/* 8054F334  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8054F338  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054F33C  98 1E 00 05 */	stb r0, 5(r30)
/* 8054F340  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 8054F344  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8054F348  88 9E 00 04 */	lbz r4, 4(r30)
/* 8054F34C  53 64 07 BE */	rlwimi r4, r27, 0, 0x1e, 0x1f
/* 8054F350  3B 7B 00 01 */	addi r27, r27, 1
/* 8054F354  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8054F358  7C 63 2A 14 */	add r3, r3, r5
/* 8054F35C  3C 63 00 01 */	addis r3, r3, 1
/* 8054F360  98 9E 00 04 */	stb r4, 4(r30)
/* 8054F364  28 00 00 04 */	cmplwi r0, 4
/* 8054F368  38 63 9C E8 */	addi r3, r3, -25368
/* 8054F36C  41 80 00 08 */	blt lbl_8054F374
/* 8054F370  3B 60 00 03 */	li r27, 3
lbl_8054F374:
/* 8054F374  9B 7C 06 8B */	stb r27, 0x68b(r28)
/* 8054F378  4B FF E4 0D */	bl aNSC_set_rehouse_order_date
/* 8054F37C  38 60 00 08 */	li r3, 8
/* 8054F380  48 00 00 0C */	b lbl_8054F38C
lbl_8054F384:
/* 8054F384  7F A3 EB 78 */	mr r3, r29
/* 8054F388  4B FF FD FD */	bl aNSC_get_start_call_msg_no
lbl_8054F38C:
/* 8054F38C  4B FF F2 71 */	bl aNSC_get_msg_no
/* 8054F390  4B E4 91 85 */	bl mDemo_Set_msg_num
/* 8054F394  38 00 00 01 */	li r0, 1
/* 8054F398  39 61 00 20 */	addi r11, r1, 0x20
/* 8054F39C  90 1D 09 98 */	stw r0, 0x998(r29)
/* 8054F3A0  4B B4 BB 79 */	bl func_8009AF18
/* 8054F3A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054F3A8  7C 08 03 A6 */	mtlr r0
/* 8054F3AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8054F3B0  4E 80 00 20 */	blr 
