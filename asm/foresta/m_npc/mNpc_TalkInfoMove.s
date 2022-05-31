lbl_803D37B0:
/* 803D37B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D37B4  7C 08 02 A6 */	mflr r0
/* 803D37B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D37BC  39 61 00 20 */	addi r11, r1, 0x20
/* 803D37C0  4B CC 77 0D */	bl func_8009AECC
/* 803D37C4  3C 80 81 17 */	lis r4, l_npc_talk_info@ha /* 0x8116C5AC@ha */
/* 803D37C8  38 60 00 01 */	li r3, 1
/* 803D37CC  38 04 C5 AC */	addi r0, r4, l_npc_talk_info@l /* 0x8116C5AC@l */
/* 803D37D0  7C 1B 03 78 */	mr r27, r0
/* 803D37D4  4B FD 53 69 */	bl mFI_CheckPlayerWade
/* 803D37D8  2C 03 00 01 */	cmpwi r3, 1
/* 803D37DC  40 82 00 1C */	bne lbl_803D37F8
/* 803D37E0  38 00 00 10 */	li r0, 0x10
/* 803D37E4  7C 09 03 A6 */	mtctr r0
lbl_803D37E8:
/* 803D37E8  A0 1B 00 04 */	lhz r0, 4(r27)
/* 803D37EC  B0 1B 00 06 */	sth r0, 6(r27)
/* 803D37F0  3B 7B 00 08 */	addi r27, r27, 8
/* 803D37F4  42 00 FF F4 */	bdnz lbl_803D37E8
lbl_803D37F8:
/* 803D37F8  3B 60 00 00 */	li r27, 0
/* 803D37FC  3C 60 81 17 */	lis r3, l_npc_talk_info@ha /* 0x8116C5AC@ha */
/* 803D3800  3B 83 C5 AC */	addi r28, r3, l_npc_talk_info@l /* 0x8116C5AC@l */
/* 803D3804  3B C0 00 01 */	li r30, 1
/* 803D3808  7F 7D DB 78 */	mr r29, r27
/* 803D380C  7F 7F DB 78 */	mr r31, r27
lbl_803D3810:
/* 803D3810  7F 83 E3 78 */	mr r3, r28
/* 803D3814  4B FF FD 79 */	bl mNpc_TimerCountDown
/* 803D3818  7F 83 E3 78 */	mr r3, r28
/* 803D381C  4B FF FF 65 */	bl mNpc_UnlockTimerCountDown
/* 803D3820  A0 1C 00 04 */	lhz r0, 4(r28)
/* 803D3824  28 00 00 00 */	cmplwi r0, 0
/* 803D3828  40 82 00 1C */	bne lbl_803D3844
/* 803D382C  A0 1C 00 06 */	lhz r0, 6(r28)
/* 803D3830  28 00 00 00 */	cmplwi r0, 0
/* 803D3834  41 82 00 10 */	beq lbl_803D3844
/* 803D3838  9B BC 00 02 */	stb r29, 2(r28)
/* 803D383C  9B DC 00 03 */	stb r30, 3(r28)
/* 803D3840  B3 FC 00 06 */	sth r31, 6(r28)
lbl_803D3844:
/* 803D3844  3B 7B 00 01 */	addi r27, r27, 1
/* 803D3848  3B 9C 00 08 */	addi r28, r28, 8
/* 803D384C  2C 1B 00 10 */	cmpwi r27, 0x10
/* 803D3850  41 80 FF C0 */	blt lbl_803D3810
/* 803D3854  39 61 00 20 */	addi r11, r1, 0x20
/* 803D3858  4B CC 76 C1 */	bl func_8009AF18
/* 803D385C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D3860  7C 08 03 A6 */	mtlr r0
/* 803D3864  38 21 00 20 */	addi r1, r1, 0x20
/* 803D3868  4E 80 00 20 */	blr 
