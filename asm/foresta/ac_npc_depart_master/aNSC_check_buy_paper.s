lbl_8054E208:
/* 8054E208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054E20C  7C 08 02 A6 */	mflr r0
/* 8054E210  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 8054E214  54 86 04 3E */	clrlwi r6, r4, 0x10
/* 8054E218  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054E21C  38 C6 E0 00 */	addi r6, r6, -8192
/* 8054E220  38 E7 85 38 */	addi r7, r7, common_data@l /* 0x81138538@l */
/* 8054E224  38 A0 00 0F */	li r5, 0xf
/* 8054E228  3D 47 00 02 */	addis r10, r7, 2
/* 8054E22C  54 C8 0F FE */	srwi r8, r6, 0x1f
/* 8054E230  54 C7 D0 0A */	slwi r7, r6, 0x1a
/* 8054E234  81 2A 61 3C */	lwz r9, 0x613c(r10)
/* 8054E238  7C E8 38 50 */	subf r7, r8, r7
/* 8054E23C  38 00 00 00 */	li r0, 0
/* 8054E240  54 E7 30 3E */	rotlwi r7, r7, 6
/* 8054E244  38 C0 00 00 */	li r6, 0
/* 8054E248  39 29 00 68 */	addi r9, r9, 0x68
/* 8054E24C  7D 67 42 14 */	add r11, r7, r8
/* 8054E250  7C A9 03 A6 */	mtctr r5
lbl_8054E254:
/* 8054E254  A0 A9 00 00 */	lhz r5, 0(r9)
/* 8054E258  28 05 20 00 */	cmplwi r5, 0x2000
/* 8054E25C  41 80 00 60 */	blt lbl_8054E2BC
/* 8054E260  28 05 20 FF */	cmplwi r5, 0x20ff
/* 8054E264  41 81 00 58 */	bgt lbl_8054E2BC
/* 8054E268  39 05 E0 00 */	addi r8, r5, -8192
/* 8054E26C  55 05 D0 0A */	slwi r5, r8, 0x1a
/* 8054E270  55 07 0F FE */	srwi r7, r8, 0x1f
/* 8054E274  7C A7 28 50 */	subf r5, r7, r5
/* 8054E278  54 A5 30 3E */	rotlwi r5, r5, 6
/* 8054E27C  7C A5 3A 14 */	add r5, r5, r7
/* 8054E280  7C 05 58 00 */	cmpw r5, r11
/* 8054E284  40 82 00 38 */	bne lbl_8054E2BC
/* 8054E288  80 AA 61 3C */	lwz r5, 0x613c(r10)
/* 8054E28C  80 A5 00 88 */	lwz r5, 0x88(r5)
/* 8054E290  7C A7 34 30 */	srw r7, r5, r6
/* 8054E294  54 E5 07 BD */	rlwinm. r5, r7, 0, 0x1e, 0x1e
/* 8054E298  40 82 00 24 */	bne lbl_8054E2BC
/* 8054E29C  54 E5 07 FF */	clrlwi. r5, r7, 0x1f
/* 8054E2A0  40 82 00 1C */	bne lbl_8054E2BC
/* 8054E2A4  7D 05 36 70 */	srawi r5, r8, 6
/* 8054E2A8  80 E3 00 00 */	lwz r7, 0(r3)
/* 8054E2AC  7C A5 01 94 */	addze r5, r5
/* 8054E2B0  7C A5 3A 14 */	add r5, r5, r7
/* 8054E2B4  38 A5 00 01 */	addi r5, r5, 1
/* 8054E2B8  90 A3 00 00 */	stw r5, 0(r3)
lbl_8054E2BC:
/* 8054E2BC  39 29 00 02 */	addi r9, r9, 2
/* 8054E2C0  38 C6 00 02 */	addi r6, r6, 2
/* 8054E2C4  42 00 FF 90 */	bdnz lbl_8054E254
/* 8054E2C8  80 A3 00 00 */	lwz r5, 0(r3)
/* 8054E2CC  28 05 00 01 */	cmplwi r5, 1
/* 8054E2D0  40 81 00 14 */	ble lbl_8054E2E4
/* 8054E2D4  7C 83 23 78 */	mr r3, r4
/* 8054E2D8  7C A4 2B 78 */	mr r4, r5
/* 8054E2DC  4B FF FB 41 */	bl aNSC_set_buy_sum_str
/* 8054E2E0  38 00 00 05 */	li r0, 5
lbl_8054E2E4:
/* 8054E2E4  7C 03 03 78 */	mr r3, r0
/* 8054E2E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054E2EC  7C 08 03 A6 */	mtlr r0
/* 8054E2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054E2F4  4E 80 00 20 */	blr 
