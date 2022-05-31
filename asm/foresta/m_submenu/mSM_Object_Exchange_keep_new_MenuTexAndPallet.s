lbl_803F0410:
/* 803F0410  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F0414  7C 08 02 A6 */	mflr r0
/* 803F0418  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F041C  39 61 00 20 */	addi r11, r1, 0x20
/* 803F0420  4B CA AA B5 */	bl func_8009AED4
/* 803F0424  7C 9E 23 78 */	mr r30, r4
/* 803F0428  7C 7D 1B 78 */	mr r29, r3
/* 803F042C  38 80 00 0E */	li r4, 0xe
/* 803F0430  38 A0 02 00 */	li r5, 0x200
/* 803F0434  4B FF FF 81 */	bl mSM_Object_Exchange_keep_new
/* 803F0438  7C 60 1B 78 */	mr r0, r3
/* 803F043C  7F A3 EB 78 */	mr r3, r29
/* 803F0440  7C 1F 03 78 */	mr r31, r0
/* 803F0444  38 80 00 0F */	li r4, 0xf
/* 803F0448  38 A0 00 20 */	li r5, 0x20
/* 803F044C  4B FF FF 69 */	bl mSM_Object_Exchange_keep_new
/* 803F0450  57 C0 10 3A */	slwi r0, r30, 2
/* 803F0454  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803F0458  7C DD 02 14 */	add r6, r29, r0
/* 803F045C  7C 64 1B 78 */	mr r4, r3
/* 803F0460  93 E6 1F A8 */	stw r31, 0x1fa8(r6)
/* 803F0464  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803F0468  3C A5 00 02 */	addis r5, r5, 2
/* 803F046C  7F E3 FB 78 */	mr r3, r31
/* 803F0470  90 86 1F B0 */	stw r4, 0x1fb0(r6)
/* 803F0474  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 803F0478  A0 A5 10 84 */	lhz r5, 0x1084(r5)
/* 803F047C  38 A5 DC 00 */	addi r5, r5, -9216
/* 803F0480  4B FE 93 4D */	bl mPlib_Load_PlayerTexAndPallet
/* 803F0484  39 61 00 20 */	addi r11, r1, 0x20
/* 803F0488  4B CA AA 99 */	bl func_8009AF20
/* 803F048C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F0490  7C 08 03 A6 */	mtlr r0
/* 803F0494  38 21 00 20 */	addi r1, r1, 0x20
/* 803F0498  4E 80 00 20 */	blr 
