lbl_803E2B24:
/* 803E2B24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E2B28  7C 08 02 A6 */	mflr r0
/* 803E2B2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E2B30  39 61 00 20 */	addi r11, r1, 0x20
/* 803E2B34  4B CB 83 9D */	bl func_8009AED0
/* 803E2B38  7C 7C 1B 78 */	mr r28, r3
/* 803E2B3C  7C 9D 23 78 */	mr r29, r4
/* 803E2B40  3B FD 00 2C */	addi r31, r29, 0x2c
/* 803E2B44  3B DC 00 2C */	addi r30, r28, 0x2c
/* 803E2B48  4B FF FF 0D */	bl mQst_CopyQuestInfo
/* 803E2B4C  38 7C 00 0C */	addi r3, r28, 0xc
/* 803E2B50  38 9D 00 0C */	addi r4, r29, 0xc
/* 803E2B54  4B FE 88 BD */	bl mNpc_CopyAnimalPersonalID
/* 803E2B58  38 7C 00 1A */	addi r3, r28, 0x1a
/* 803E2B5C  38 9D 00 1A */	addi r4, r29, 0x1a
/* 803E2B60  4B FE 88 B1 */	bl mNpc_CopyAnimalPersonalID
/* 803E2B64  A0 7D 00 28 */	lhz r3, 0x28(r29)
/* 803E2B68  38 00 00 2C */	li r0, 0x2c
/* 803E2B6C  B0 7C 00 28 */	sth r3, 0x28(r28)
/* 803E2B70  88 9D 00 2A */	lbz r4, 0x2a(r29)
/* 803E2B74  88 7C 00 2A */	lbz r3, 0x2a(r28)
/* 803E2B78  54 84 C0 0A */	rlwinm r4, r4, 0x18, 0, 5
/* 803E2B7C  7C 84 DE 70 */	srawi r4, r4, 0x1b
/* 803E2B80  50 83 1E 38 */	rlwimi r3, r4, 3, 0x18, 0x1c
/* 803E2B84  98 7C 00 2A */	stb r3, 0x2a(r28)
/* 803E2B88  88 9D 00 2A */	lbz r4, 0x2a(r29)
/* 803E2B8C  88 7C 00 2A */	lbz r3, 0x2a(r28)
/* 803E2B90  54 84 E8 06 */	rlwinm r4, r4, 0x1d, 0, 3
/* 803E2B94  7C 84 EE 70 */	srawi r4, r4, 0x1d
/* 803E2B98  50 83 07 7E */	rlwimi r3, r4, 0, 0x1d, 0x1f
/* 803E2B9C  98 7C 00 2A */	stb r3, 0x2a(r28)
/* 803E2BA0  7C 09 03 A6 */	mtctr r0
lbl_803E2BA4:
/* 803E2BA4  88 1F 00 00 */	lbz r0, 0(r31)
/* 803E2BA8  3B FF 00 01 */	addi r31, r31, 1
/* 803E2BAC  98 1E 00 00 */	stb r0, 0(r30)
/* 803E2BB0  3B DE 00 01 */	addi r30, r30, 1
/* 803E2BB4  42 00 FF F0 */	bdnz lbl_803E2BA4
/* 803E2BB8  39 61 00 20 */	addi r11, r1, 0x20
/* 803E2BBC  4B CB 83 61 */	bl func_8009AF1C
/* 803E2BC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E2BC4  7C 08 03 A6 */	mtlr r0
/* 803E2BC8  38 21 00 20 */	addi r1, r1, 0x20
/* 803E2BCC  4E 80 00 20 */	blr 
