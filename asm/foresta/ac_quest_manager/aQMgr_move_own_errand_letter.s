lbl_804872F8:
/* 804872F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804872FC  7C 08 02 A6 */	mflr r0
/* 80487300  90 01 00 24 */	stw r0, 0x24(r1)
/* 80487304  39 61 00 20 */	addi r11, r1, 0x20
/* 80487308  4B C1 3B C1 */	bl func_8009AEC8
/* 8048730C  83 E4 00 08 */	lwz r31, 8(r4)
/* 80487310  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80487314  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80487318  88 1F 00 01 */	lbz r0, 1(r31)
/* 8048731C  3C 64 00 02 */	addis r3, r4, 2
/* 80487320  3F 84 00 01 */	addis r28, r4, 1
/* 80487324  83 C3 61 3C */	lwz r30, 0x613c(r3)
/* 80487328  54 00 EF 3E */	rlwinm r0, r0, 0x1d, 0x1c, 0x1f
/* 8048732C  28 00 00 02 */	cmplwi r0, 2
/* 80487330  3B 9C 74 38 */	addi r28, r28, 0x7438
/* 80487334  41 82 00 0C */	beq lbl_80487340
/* 80487338  28 00 00 03 */	cmplwi r0, 3
/* 8048733C  40 82 00 78 */	bne lbl_804873B4
lbl_80487340:
/* 80487340  3B BF 00 0C */	addi r29, r31, 0xc
/* 80487344  3B 40 00 00 */	li r26, 0
lbl_80487348:
/* 80487348  7F A3 EB 78 */	mr r3, r29
/* 8048734C  7F 84 E3 78 */	mr r4, r28
/* 80487350  4B F4 41 21 */	bl mNpc_CheckCmpAnimalPersonalID
/* 80487354  2C 03 00 01 */	cmpwi r3, 1
/* 80487358  40 82 00 4C */	bne lbl_804873A4
/* 8048735C  3B 7C 00 10 */	addi r27, r28, 0x10
/* 80487360  7F C3 F3 78 */	mr r3, r30
/* 80487364  7F 64 DB 78 */	mr r4, r27
/* 80487368  38 A0 00 07 */	li r5, 7
/* 8048736C  4B F4 4A 0D */	bl mNpc_GetAnimalMemoryIdx
/* 80487370  2C 03 FF FF */	cmpwi r3, -1
/* 80487374  41 82 00 30 */	beq lbl_804873A4
/* 80487378  1C 03 01 38 */	mulli r0, r3, 0x138
/* 8048737C  7F 7B 02 14 */	add r27, r27, r0
/* 80487380  88 1B 00 31 */	lbz r0, 0x31(r27)
/* 80487384  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 80487388  28 00 00 01 */	cmplwi r0, 1
/* 8048738C  40 82 00 18 */	bne lbl_804873A4
/* 80487390  88 1F 00 01 */	lbz r0, 1(r31)
/* 80487394  38 60 00 00 */	li r3, 0
/* 80487398  50 60 1E 78 */	rlwimi r0, r3, 3, 0x19, 0x1c
/* 8048739C  98 1F 00 01 */	stb r0, 1(r31)
/* 804873A0  48 00 00 14 */	b lbl_804873B4
lbl_804873A4:
/* 804873A4  3B 5A 00 01 */	addi r26, r26, 1
/* 804873A8  3B 9C 09 88 */	addi r28, r28, 0x988
/* 804873AC  2C 1A 00 0F */	cmpwi r26, 0xf
/* 804873B0  41 80 FF 98 */	blt lbl_80487348
lbl_804873B4:
/* 804873B4  39 61 00 20 */	addi r11, r1, 0x20
/* 804873B8  4B C1 3B 5D */	bl func_8009AF14
/* 804873BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804873C0  7C 08 03 A6 */	mtlr r0
/* 804873C4  38 21 00 20 */	addi r1, r1, 0x20
/* 804873C8  4E 80 00 20 */	blr 
