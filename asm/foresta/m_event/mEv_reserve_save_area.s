lbl_8039DC24:
/* 8039DC24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039DC28  7C 08 02 A6 */	mflr r0
/* 8039DC2C  3C A0 81 16 */	lis r5, index_today@ha /* 0x811677AC@ha */
/* 8039DC30  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 8039DC34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039DC38  3C C0 81 16 */	lis r6, event_today@ha /* 0x811676AC@ha */
/* 8039DC3C  38 A5 77 AC */	addi r5, r5, index_today@l /* 0x811677AC@l */
/* 8039DC40  38 E7 85 38 */	addi r7, r7, common_data@l /* 0x81138538@l */
/* 8039DC44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039DC48  38 C6 76 AC */	addi r6, r6, event_today@l /* 0x811676AC@l */
/* 8039DC4C  3B E0 FF FF */	li r31, -1
/* 8039DC50  39 80 00 00 */	li r12, 0
/* 8039DC54  93 C1 00 08 */	stw r30, 8(r1)
/* 8039DC58  3B C0 FF FF */	li r30, -1
/* 8039DC5C  7C 05 18 AE */	lbzx r0, r5, r3
/* 8039DC60  3C A7 00 02 */	addis r5, r7, 2
/* 8039DC64  38 E5 05 54 */	addi r7, r5, 0x554
/* 8039DC68  81 45 05 68 */	lwz r10, 0x568(r5)
/* 8039DC6C  54 08 20 36 */	slwi r8, r0, 4
/* 8039DC70  38 00 00 05 */	li r0, 5
/* 8039DC74  7C C6 42 14 */	add r6, r6, r8
/* 8039DC78  39 00 00 00 */	li r8, 0
/* 8039DC7C  7C 09 03 A6 */	mtctr r0
/* 8039DC80  39 60 00 01 */	li r11, 1
lbl_8039DC84:
/* 8039DC84  7D 60 60 30 */	slw r0, r11, r12
/* 8039DC88  7C 00 50 39 */	and. r0, r0, r10
/* 8039DC8C  40 82 00 0C */	bne lbl_8039DC98
/* 8039DC90  7D 9F 63 78 */	mr r31, r12
/* 8039DC94  48 00 00 4C */	b lbl_8039DCE0
lbl_8039DC98:
/* 8039DC98  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8039DC9C  28 00 00 77 */	cmplwi r0, 0x77
/* 8039DCA0  41 82 00 18 */	beq lbl_8039DCB8
/* 8039DCA4  38 08 00 19 */	addi r0, r8, 0x19
/* 8039DCA8  7C 07 00 AE */	lbzx r0, r7, r0
/* 8039DCAC  28 00 00 77 */	cmplwi r0, 0x77
/* 8039DCB0  40 82 00 08 */	bne lbl_8039DCB8
/* 8039DCB4  7D 9E 63 78 */	mr r30, r12
lbl_8039DCB8:
/* 8039DCB8  7D 27 42 14 */	add r9, r7, r8
/* 8039DCBC  88 09 00 18 */	lbz r0, 0x18(r9)
/* 8039DCC0  7C 03 00 00 */	cmpw r3, r0
/* 8039DCC4  40 82 00 1C */	bne lbl_8039DCE0
/* 8039DCC8  88 09 00 19 */	lbz r0, 0x19(r9)
/* 8039DCCC  54 89 06 3E */	clrlwi r9, r4, 0x18
/* 8039DCD0  7C 09 00 40 */	cmplw r9, r0
/* 8039DCD4  40 82 00 0C */	bne lbl_8039DCE0
/* 8039DCD8  7D 9F 63 78 */	mr r31, r12
/* 8039DCDC  48 00 00 10 */	b lbl_8039DCEC
lbl_8039DCE0:
/* 8039DCE0  39 8C 00 01 */	addi r12, r12, 1
/* 8039DCE4  39 08 00 34 */	addi r8, r8, 0x34
/* 8039DCE8  42 00 FF 9C */	bdnz lbl_8039DC84
lbl_8039DCEC:
/* 8039DCEC  2C 1F FF FF */	cmpwi r31, -1
/* 8039DCF0  40 82 00 10 */	bne lbl_8039DD00
/* 8039DCF4  2C 1E FF FF */	cmpwi r30, -1
/* 8039DCF8  41 82 00 08 */	beq lbl_8039DD00
/* 8039DCFC  7F DF F3 78 */	mr r31, r30
lbl_8039DD00:
/* 8039DD00  2C 1F FF FF */	cmpwi r31, -1
/* 8039DD04  41 82 00 AC */	beq lbl_8039DDB0
/* 8039DD08  38 00 00 01 */	li r0, 1
/* 8039DD0C  81 47 00 14 */	lwz r10, 0x14(r7)
/* 8039DD10  7C 09 F8 30 */	slw r9, r0, r31
/* 8039DD14  89 06 00 08 */	lbz r8, 8(r6)
/* 8039DD18  7D 49 4B 78 */	or r9, r10, r9
/* 8039DD1C  88 06 00 0A */	lbz r0, 0xa(r6)
/* 8039DD20  1D 7F 00 34 */	mulli r11, r31, 0x34
/* 8039DD24  91 27 00 14 */	stw r9, 0x14(r7)
/* 8039DD28  7C 08 00 40 */	cmplw r8, r0
/* 8039DD2C  7D 27 5A 14 */	add r9, r7, r11
/* 8039DD30  98 69 00 18 */	stb r3, 0x18(r9)
/* 8039DD34  98 89 00 19 */	stb r4, 0x19(r9)
/* 8039DD38  40 81 00 20 */	ble lbl_8039DD58
/* 8039DD3C  88 05 61 25 */	lbz r0, 0x6125(r5)
/* 8039DD40  7C 08 00 40 */	cmplw r8, r0
/* 8039DD44  40 81 00 14 */	ble lbl_8039DD58
/* 8039DD48  A0 65 61 26 */	lhz r3, 0x6126(r5)
/* 8039DD4C  38 03 FF FF */	addi r0, r3, -1
/* 8039DD50  B0 09 00 1A */	sth r0, 0x1a(r9)
/* 8039DD54  48 00 00 10 */	b lbl_8039DD64
lbl_8039DD58:
/* 8039DD58  A0 05 61 26 */	lhz r0, 0x6126(r5)
/* 8039DD5C  7C 67 5A 14 */	add r3, r7, r11
/* 8039DD60  B0 03 00 1A */	sth r0, 0x1a(r3)
lbl_8039DD64:
/* 8039DD64  A0 05 61 26 */	lhz r0, 0x6126(r5)
/* 8039DD68  7D 07 5A 14 */	add r8, r7, r11
/* 8039DD6C  3B EB 00 20 */	addi r31, r11, 0x20
/* 8039DD70  88 86 00 08 */	lbz r4, 8(r6)
/* 8039DD74  B0 08 00 1A */	sth r0, 0x1a(r8)
/* 8039DD78  7F E7 FA 14 */	add r31, r7, r31
/* 8039DD7C  88 06 00 09 */	lbz r0, 9(r6)
/* 8039DD80  7F E3 FB 78 */	mr r3, r31
/* 8039DD84  98 88 00 1C */	stb r4, 0x1c(r8)
/* 8039DD88  38 80 00 00 */	li r4, 0
/* 8039DD8C  88 E6 00 0A */	lbz r7, 0xa(r6)
/* 8039DD90  38 A0 00 2C */	li r5, 0x2c
/* 8039DD94  98 08 00 1D */	stb r0, 0x1d(r8)
/* 8039DD98  88 06 00 0B */	lbz r0, 0xb(r6)
/* 8039DD9C  98 E8 00 1E */	stb r7, 0x1e(r8)
/* 8039DDA0  98 08 00 1F */	stb r0, 0x1f(r8)
/* 8039DDA4  4B C6 56 05 */	bl func_800033A8
/* 8039DDA8  7F E3 FB 78 */	mr r3, r31
/* 8039DDAC  48 00 00 08 */	b lbl_8039DDB4
lbl_8039DDB0:
/* 8039DDB0  38 60 00 00 */	li r3, 0
lbl_8039DDB4:
/* 8039DDB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039DDB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039DDBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039DDC0  7C 08 03 A6 */	mtlr r0
/* 8039DDC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8039DDC8  4E 80 00 20 */	blr 
