lbl_804230E8:
/* 804230E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804230EC  7C 08 02 A6 */	mflr r0
/* 804230F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804230F4  39 61 00 40 */	addi r11, r1, 0x40
/* 804230F8  4B C7 7D CD */	bl func_8009AEC4
/* 804230FC  7C 7D 1B 78 */	mr r29, r3
/* 80423100  7C 9E 23 78 */	mr r30, r4
/* 80423104  7F DA F3 78 */	mr r26, r30
/* 80423108  3B FD 01 74 */	addi r31, r29, 0x174
/* 8042310C  4B F8 2C 35 */	bl mFI_BGDisplayListTop
/* 80423110  7F 43 D3 78 */	mr r3, r26
/* 80423114  4B FB 65 2D */	bl get_player_actor_withoutCheck
/* 80423118  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 8042311C  38 81 00 08 */	addi r4, r1, 8
/* 80423120  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80423124  38 A1 00 10 */	addi r5, r1, 0x10
/* 80423128  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8042312C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80423130  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80423134  38 61 00 0C */	addi r3, r1, 0xc
/* 80423138  90 01 00 18 */	stw r0, 0x18(r1)
/* 8042313C  4B F8 26 25 */	bl mFI_Wpos2BlockNum
/* 80423140  7F A3 EB 78 */	mr r3, r29
/* 80423144  7F 44 D3 78 */	mr r4, r26
/* 80423148  4B FF FF 45 */	bl aFD_SetActorPosition
/* 8042314C  3C 60 80 68 */	lis r3, draw_block_offset_table@ha /* 0x80682934@ha */
/* 80423150  3B 20 00 00 */	li r25, 0
/* 80423154  3B 43 29 34 */	addi r26, r3, draw_block_offset_table@l /* 0x80682934@l */
/* 80423158  3B 80 00 00 */	li r28, 0
/* 8042315C  3B 60 00 01 */	li r27, 1
lbl_80423160:
/* 80423160  7C DA E2 14 */	add r6, r26, r28
/* 80423164  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80423168  A8 06 00 00 */	lha r0, 0(r6)
/* 8042316C  7F E3 FB 78 */	mr r3, r31
/* 80423170  38 9F 00 08 */	addi r4, r31, 8
/* 80423174  7C 05 02 14 */	add r0, r5, r0
/* 80423178  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8042317C  80 A1 00 08 */	lwz r5, 8(r1)
/* 80423180  A8 06 00 02 */	lha r0, 2(r6)
/* 80423184  7C 05 02 14 */	add r0, r5, r0
/* 80423188  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8042318C  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 80423190  80 DF 00 10 */	lwz r6, 0x10(r31)
/* 80423194  4B F8 29 E5 */	bl mFI_BkNum2WposXZ
/* 80423198  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8042319C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 804231A0  4B F8 2F A5 */	bl mFI_BkNum2BaseHeight
/* 804231A4  D0 3F 00 04 */	stfs f1, 4(r31)
/* 804231A8  3B 39 00 01 */	addi r25, r25, 1
/* 804231AC  2C 19 00 09 */	cmpwi r25, 9
/* 804231B0  3B 9C 00 04 */	addi r28, r28, 4
/* 804231B4  93 7F 00 14 */	stw r27, 0x14(r31)
/* 804231B8  3B FF 00 18 */	addi r31, r31, 0x18
/* 804231BC  41 80 FF A4 */	blt lbl_80423160
/* 804231C0  7F A3 EB 78 */	mr r3, r29
/* 804231C4  7F C4 F3 78 */	mr r4, r30
/* 804231C8  48 00 08 49 */	bl aFD_MakeMarinScrollInfo
/* 804231CC  39 61 00 40 */	addi r11, r1, 0x40
/* 804231D0  4B C7 7D 41 */	bl func_8009AF10
/* 804231D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804231D8  7C 08 03 A6 */	mtlr r0
/* 804231DC  38 21 00 40 */	addi r1, r1, 0x40
/* 804231E0  4E 80 00 20 */	blr 
