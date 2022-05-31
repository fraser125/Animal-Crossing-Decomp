lbl_805906E4:
/* 805906E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805906E8  7C 08 02 A6 */	mflr r0
/* 805906EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 805906F0  39 61 00 30 */	addi r11, r1, 0x30
/* 805906F4  4B B0 A7 D5 */	bl func_8009AEC8
/* 805906F8  7C 7A 1B 78 */	mr r26, r3
/* 805906FC  4B E2 EF AD */	bl func_803BF6A8
/* 80590700  7C 60 1B 78 */	mr r0, r3
/* 80590704  7F 43 D3 78 */	mr r3, r26
/* 80590708  7C 1C 03 78 */	mr r28, r0
/* 8059070C  4B E4 17 F5 */	bl mNpc_GetNpcLooks
/* 80590710  A0 BA 00 06 */	lhz r5, 6(r26)
/* 80590714  3C 80 81 1F */	lis r4, turiActorx@ha /* 0x811ED3EC@ha */
/* 80590718  7C 7D 1B 78 */	mr r29, r3
/* 8059071C  3B 40 00 00 */	li r26, 0
/* 80590720  3F 65 FF FF */	addis r27, r5, 0xffff
/* 80590724  3B C4 D3 EC */	addi r30, r4, turiActorx@l /* 0x811ED3EC@l */
/* 80590728  3B E0 00 00 */	li r31, 0
/* 8059072C  3B 7B 2F B7 */	addi r27, r27, 0x2fb7
lbl_80590730:
/* 80590730  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80590734  28 04 00 00 */	cmplwi r4, 0
/* 80590738  41 82 00 20 */	beq lbl_80590758
/* 8059073C  38 61 00 08 */	addi r3, r1, 8
/* 80590740  4B E4 14 51 */	bl mNpc_GetNpcWorldName
/* 80590744  7F 83 E3 78 */	mr r3, r28
/* 80590748  38 9A 00 01 */	addi r4, r26, 1
/* 8059074C  38 A1 00 08 */	addi r5, r1, 8
/* 80590750  38 C0 00 08 */	li r6, 8
/* 80590754  4B E2 F5 01 */	bl mMsg_Set_free_str
lbl_80590758:
/* 80590758  3B 5A 00 01 */	addi r26, r26, 1
/* 8059075C  3B FF 00 04 */	addi r31, r31, 4
/* 80590760  2C 1A 00 05 */	cmpwi r26, 5
/* 80590764  41 80 FF CC */	blt lbl_80590730
/* 80590768  4B AC C5 8D */	bl fqrand
/* 8059076C  3C 80 80 65 */	lis r4, lit_592@ha /* 0x80649C60@ha */
/* 80590770  3C 60 80 6C */	lis r3, msg_base@ha /* 0x806C27B4@ha */
/* 80590774  38 A4 9C 60 */	addi r5, r4, lit_592@l /* 0x80649C60@l */
/* 80590778  57 A4 10 3A */	slwi r4, r29, 2
/* 8059077C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80590780  38 63 27 B4 */	addi r3, r3, msg_base@l /* 0x806C27B4@l */
/* 80590784  1C 1B 00 03 */	mulli r0, r27, 3
/* 80590788  7C 63 20 2E */	lwzx r3, r3, r4
/* 8059078C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80590790  FC 00 00 1E */	fctiwz f0, f0
/* 80590794  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80590798  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8059079C  7C 04 02 14 */	add r0, r4, r0
/* 805907A0  7C 63 02 14 */	add r3, r3, r0
/* 805907A4  4B E0 7D 71 */	bl mDemo_Set_msg_num
/* 805907A8  39 61 00 30 */	addi r11, r1, 0x30
/* 805907AC  4B B0 A7 69 */	bl func_8009AF14
/* 805907B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805907B4  7C 08 03 A6 */	mtlr r0
/* 805907B8  38 21 00 30 */	addi r1, r1, 0x30
/* 805907BC  4E 80 00 20 */	blr 
