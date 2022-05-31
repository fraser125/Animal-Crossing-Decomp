lbl_8048A070:
/* 8048A070  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048A074  7C 08 02 A6 */	mflr r0
/* 8048A078  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048A07C  39 61 00 20 */	addi r11, r1, 0x20
/* 8048A080  4B C1 0E 49 */	bl func_8009AEC8
/* 8048A084  3D 00 81 14 */	lis r8, common_data@ha /* 0x81138538@ha */
/* 8048A088  28 03 00 02 */	cmplwi r3, 2
/* 8048A08C  39 08 85 38 */	addi r8, r8, common_data@l /* 0x81138538@l */
/* 8048A090  7C 9A 23 78 */	mr r26, r4
/* 8048A094  7C DB 33 78 */	mr r27, r6
/* 8048A098  7C FC 3B 78 */	mr r28, r7
/* 8048A09C  3F C8 00 02 */	addis r30, r8, 2
/* 8048A0A0  3B E0 00 00 */	li r31, 0
/* 8048A0A4  3B A0 FF FF */	li r29, -1
/* 8048A0A8  40 82 01 38 */	bne lbl_8048A1E0
/* 8048A0AC  7F 43 D3 78 */	mr r3, r26
/* 8048A0B0  4B F5 94 B5 */	bl mQst_GetOccuredContestIdx
/* 8048A0B4  2C 03 FF FF */	cmpwi r3, -1
/* 8048A0B8  40 82 02 28 */	bne lbl_8048A2E0
/* 8048A0BC  28 1A 00 06 */	cmplwi r26, 6
/* 8048A0C0  41 81 02 20 */	bgt lbl_8048A2E0
/* 8048A0C4  3C 60 80 69 */	lis r3, lit_711@ha /* 0x8068B0F4@ha */
/* 8048A0C8  57 40 10 3A */	slwi r0, r26, 2
/* 8048A0CC  38 63 B0 F4 */	addi r3, r3, lit_711@l /* 0x8068B0F4@l */
/* 8048A0D0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8048A0D4  7C 09 03 A6 */	mtctr r0
/* 8048A0D8  4E 80 04 20 */	bctr 
lbl_8048A0DC:
/* 8048A0DC  3B E0 00 01 */	li r31, 1
/* 8048A0E0  48 00 02 00 */	b lbl_8048A2E0
lbl_8048A0E4:
/* 8048A0E4  3B E0 00 01 */	li r31, 1
/* 8048A0E8  48 00 01 F8 */	b lbl_8048A2E0
lbl_8048A0EC:
/* 8048A0EC  88 7E 61 25 */	lbz r3, 0x6125(r30)
/* 8048A0F0  28 03 00 01 */	cmplwi r3, 1
/* 8048A0F4  41 82 00 2C */	beq lbl_8048A120
/* 8048A0F8  28 03 00 02 */	cmplwi r3, 2
/* 8048A0FC  40 82 00 10 */	bne lbl_8048A10C
/* 8048A100  88 1E 61 23 */	lbz r0, 0x6123(r30)
/* 8048A104  28 00 00 11 */	cmplwi r0, 0x11
/* 8048A108  40 81 00 18 */	ble lbl_8048A120
lbl_8048A10C:
/* 8048A10C  28 03 00 0C */	cmplwi r3, 0xc
/* 8048A110  40 82 01 D0 */	bne lbl_8048A2E0
/* 8048A114  88 1E 61 23 */	lbz r0, 0x6123(r30)
/* 8048A118  28 00 00 19 */	cmplwi r0, 0x19
/* 8048A11C  41 80 01 C4 */	blt lbl_8048A2E0
lbl_8048A120:
/* 8048A120  88 1E 61 22 */	lbz r0, 0x6122(r30)
/* 8048A124  28 00 00 08 */	cmplwi r0, 8
/* 8048A128  41 80 01 B8 */	blt lbl_8048A2E0
/* 8048A12C  28 00 00 10 */	cmplwi r0, 0x10
/* 8048A130  41 81 01 B0 */	bgt lbl_8048A2E0
/* 8048A134  3B E0 00 01 */	li r31, 1
/* 8048A138  48 00 01 A8 */	b lbl_8048A2E0
lbl_8048A13C:
/* 8048A13C  88 7E 61 25 */	lbz r3, 0x6125(r30)
/* 8048A140  28 03 00 02 */	cmplwi r3, 2
/* 8048A144  40 82 00 10 */	bne lbl_8048A154
/* 8048A148  88 1E 61 23 */	lbz r0, 0x6123(r30)
/* 8048A14C  28 00 00 19 */	cmplwi r0, 0x19
/* 8048A150  40 80 00 14 */	bge lbl_8048A164
lbl_8048A154:
/* 8048A154  28 03 00 03 */	cmplwi r3, 3
/* 8048A158  41 80 01 88 */	blt lbl_8048A2E0
/* 8048A15C  28 03 00 08 */	cmplwi r3, 8
/* 8048A160  41 81 01 80 */	bgt lbl_8048A2E0
lbl_8048A164:
/* 8048A164  7F 63 DB 78 */	mr r3, r27
/* 8048A168  7F 84 E3 78 */	mr r4, r28
/* 8048A16C  4B F5 94 A1 */	bl mQst_GetNullNoNum
/* 8048A170  2C 03 00 04 */	cmpwi r3, 4
/* 8048A174  41 80 01 6C */	blt lbl_8048A2E0
/* 8048A178  7F 63 DB 78 */	mr r3, r27
/* 8048A17C  7F 84 E3 78 */	mr r4, r28
/* 8048A180  4B F5 94 65 */	bl mQst_GetFlowerNum
/* 8048A184  2C 03 00 14 */	cmpwi r3, 0x14
/* 8048A188  41 81 01 58 */	bgt lbl_8048A2E0
/* 8048A18C  3B E0 00 01 */	li r31, 1
/* 8048A190  48 00 01 50 */	b lbl_8048A2E0
lbl_8048A194:
/* 8048A194  3B E0 00 01 */	li r31, 1
/* 8048A198  48 00 01 48 */	b lbl_8048A2E0
lbl_8048A19C:
/* 8048A19C  88 1E 61 25 */	lbz r0, 0x6125(r30)
/* 8048A1A0  28 00 00 03 */	cmplwi r0, 3
/* 8048A1A4  41 80 00 0C */	blt lbl_8048A1B0
/* 8048A1A8  28 00 00 0A */	cmplwi r0, 0xa
/* 8048A1AC  40 81 00 18 */	ble lbl_8048A1C4
lbl_8048A1B0:
/* 8048A1B0  28 00 00 0B */	cmplwi r0, 0xb
/* 8048A1B4  40 82 01 2C */	bne lbl_8048A2E0
/* 8048A1B8  88 1E 61 23 */	lbz r0, 0x6123(r30)
/* 8048A1BC  28 00 00 1C */	cmplwi r0, 0x1c
/* 8048A1C0  41 81 01 20 */	bgt lbl_8048A2E0
lbl_8048A1C4:
/* 8048A1C4  3B E0 00 01 */	li r31, 1
/* 8048A1C8  48 00 01 18 */	b lbl_8048A2E0
lbl_8048A1CC:
/* 8048A1CC  4B F2 99 3D */	bl mLd_PlayerManKindCheck
/* 8048A1D0  2C 03 00 00 */	cmpwi r3, 0
/* 8048A1D4  40 82 01 0C */	bne lbl_8048A2E0
/* 8048A1D8  3B E0 00 01 */	li r31, 1
/* 8048A1DC  48 00 01 04 */	b lbl_8048A2E0
lbl_8048A1E0:
/* 8048A1E0  28 03 00 00 */	cmplwi r3, 0
/* 8048A1E4  40 82 00 F0 */	bne lbl_8048A2D4
/* 8048A1E8  28 05 00 00 */	cmplwi r5, 0
/* 8048A1EC  41 82 00 1C */	beq lbl_8048A208
/* 8048A1F0  3C 68 00 01 */	addis r3, r8, 1
/* 8048A1F4  A0 85 00 00 */	lhz r4, 0(r5)
/* 8048A1F8  38 A0 00 0F */	li r5, 0xf
/* 8048A1FC  38 63 74 38 */	addi r3, r3, 0x7438
/* 8048A200  4B F4 24 DD */	bl mNpc_SearchAnimalinfo
/* 8048A204  7C 7D 1B 78 */	mr r29, r3
lbl_8048A208:
/* 8048A208  2C 1A 00 02 */	cmpwi r26, 2
/* 8048A20C  41 82 00 6C */	beq lbl_8048A278
/* 8048A210  40 80 00 BC */	bge lbl_8048A2CC
/* 8048A214  2C 1A 00 01 */	cmpwi r26, 1
/* 8048A218  40 80 00 08 */	bge lbl_8048A220
/* 8048A21C  48 00 00 B0 */	b lbl_8048A2CC
lbl_8048A220:
/* 8048A220  38 60 00 00 */	li r3, 0
/* 8048A224  38 80 00 01 */	li r4, 1
/* 8048A228  4B FF FD B5 */	bl aQMgr_get_before_quest_idx
/* 8048A22C  7C 7E 1B 78 */	mr r30, r3
/* 8048A230  38 60 00 01 */	li r3, 1
/* 8048A234  4B F5 8A DD */	bl mQst_GetOccuredDeliveryIdx
/* 8048A238  2C 03 FF FF */	cmpwi r3, -1
/* 8048A23C  40 82 00 A4 */	bne lbl_8048A2E0
/* 8048A240  2C 1E FF FF */	cmpwi r30, -1
/* 8048A244  41 82 00 0C */	beq lbl_8048A250
/* 8048A248  7C 1E E8 00 */	cmpw r30, r29
/* 8048A24C  40 82 00 94 */	bne lbl_8048A2E0
lbl_8048A250:
/* 8048A250  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048A254  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048A258  3C 63 00 02 */	addis r3, r3, 2
/* 8048A25C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8048A260  38 63 10 8C */	addi r3, r3, 0x108c
/* 8048A264  4B F4 11 79 */	bl mNpc_CheckFreeAnimalPersonalID
/* 8048A268  2C 03 00 00 */	cmpwi r3, 0
/* 8048A26C  40 82 00 74 */	bne lbl_8048A2E0
/* 8048A270  3B E0 00 01 */	li r31, 1
/* 8048A274  48 00 00 6C */	b lbl_8048A2E0
lbl_8048A278:
/* 8048A278  38 60 00 00 */	li r3, 0
/* 8048A27C  38 80 00 02 */	li r4, 2
/* 8048A280  4B FF FD 5D */	bl aQMgr_get_before_quest_idx
/* 8048A284  7C 7E 1B 78 */	mr r30, r3
/* 8048A288  38 60 00 02 */	li r3, 2
/* 8048A28C  4B F5 8A 85 */	bl mQst_GetOccuredDeliveryIdx
/* 8048A290  2C 03 FF FF */	cmpwi r3, -1
/* 8048A294  40 82 00 4C */	bne lbl_8048A2E0
/* 8048A298  2C 1E FF FF */	cmpwi r30, -1
/* 8048A29C  41 82 00 0C */	beq lbl_8048A2A8
/* 8048A2A0  7C 1E E8 00 */	cmpw r30, r29
/* 8048A2A4  40 82 00 3C */	bne lbl_8048A2E0
lbl_8048A2A8:
/* 8048A2A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048A2AC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048A2B0  3C 63 00 02 */	addis r3, r3, 2
/* 8048A2B4  38 63 03 30 */	addi r3, r3, 0x330
/* 8048A2B8  4B F4 11 25 */	bl mNpc_CheckFreeAnimalPersonalID
/* 8048A2BC  2C 03 00 00 */	cmpwi r3, 0
/* 8048A2C0  40 82 00 20 */	bne lbl_8048A2E0
/* 8048A2C4  3B E0 00 01 */	li r31, 1
/* 8048A2C8  48 00 00 18 */	b lbl_8048A2E0
lbl_8048A2CC:
/* 8048A2CC  3B E0 00 01 */	li r31, 1
/* 8048A2D0  48 00 00 10 */	b lbl_8048A2E0
lbl_8048A2D4:
/* 8048A2D4  28 03 00 01 */	cmplwi r3, 1
/* 8048A2D8  40 82 00 08 */	bne lbl_8048A2E0
/* 8048A2DC  3B E0 00 01 */	li r31, 1
lbl_8048A2E0:
/* 8048A2E0  7F E3 FB 78 */	mr r3, r31
/* 8048A2E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8048A2E8  4B C1 0C 2D */	bl func_8009AF14
/* 8048A2EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048A2F0  7C 08 03 A6 */	mtlr r0
/* 8048A2F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8048A2F8  4E 80 00 20 */	blr 
