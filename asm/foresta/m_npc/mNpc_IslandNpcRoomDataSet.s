lbl_803D4400:
/* 803D4400  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D4404  7C 08 02 A6 */	mflr r0
/* 803D4408  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D440C  39 61 00 30 */	addi r11, r1, 0x30
/* 803D4410  4B CC 6A B1 */	bl func_8009AEC0
/* 803D4414  3C E0 81 17 */	lis r7, l_island_npc_room_data@ha /* 0x8116C6AC@ha */
/* 803D4418  3C C0 80 97 */	lis r6, data_80977350@ha /* 0x80977350@ha */
/* 803D441C  3C A0 80 97 */	lis r5, npc_house_list@ha /* 0x80977440@ha */
/* 803D4420  7C 79 1B 78 */	mr r25, r3
/* 803D4424  38 E7 C6 AC */	addi r7, r7, l_island_npc_room_data@l /* 0x8116C6AC@l */
/* 803D4428  38 66 73 50 */	addi r3, r6, data_80977350@l /* 0x80977350@l */
/* 803D442C  38 05 74 40 */	addi r0, r5, npc_house_list@l /* 0x80977440@l */
/* 803D4430  7C 9A 23 78 */	mr r26, r4
/* 803D4434  7C FF 3B 78 */	mr r31, r7
/* 803D4438  7C 7E 1B 78 */	mr r30, r3
/* 803D443C  7C 1D 03 78 */	mr r29, r0
/* 803D4440  3B 80 00 00 */	li r28, 0
/* 803D4444  3B 00 00 00 */	li r24, 0
/* 803D4448  3B 60 00 00 */	li r27, 0
lbl_803D444C:
/* 803D444C  88 1E 00 00 */	lbz r0, 0(r30)
/* 803D4450  2C 00 00 02 */	cmpwi r0, 2
/* 803D4454  40 82 00 5C */	bne lbl_803D44B0
/* 803D4458  3C 60 80 66 */	lis r3, l_island_npc_best_fg_id@ha /* 0x8065B3A4@ha */
/* 803D445C  38 63 B3 A4 */	addi r3, r3, l_island_npc_best_fg_id@l /* 0x8065B3A4@l */
/* 803D4460  7C 03 C2 2E */	lhzx r0, r3, r24
/* 803D4464  7C 1A 00 50 */	subf r0, r26, r0
/* 803D4468  54 06 10 3A */	slwi r6, r0, 2
/* 803D446C  7C 19 30 2E */	lwzx r0, r25, r6
/* 803D4470  28 00 00 00 */	cmplwi r0, 0
/* 803D4474  41 82 00 3C */	beq lbl_803D44B0
/* 803D4478  88 7D 00 02 */	lbz r3, 2(r29)
/* 803D447C  7F E4 FB 78 */	mr r4, r31
/* 803D4480  88 1D 00 03 */	lbz r0, 3(r29)
/* 803D4484  38 A0 02 00 */	li r5, 0x200
/* 803D4488  90 7F 02 00 */	stw r3, 0x200(r31)
/* 803D448C  90 1F 02 04 */	stw r0, 0x204(r31)
/* 803D4490  7C 79 30 2E */	lwzx r3, r25, r6
/* 803D4494  38 63 00 02 */	addi r3, r3, 2
/* 803D4498  4B C8 8B 85 */	bl func_8005D01C
/* 803D449C  63 60 E0 00 */	ori r0, r27, 0xe000
/* 803D44A0  3B 18 00 04 */	addi r24, r24, 4
/* 803D44A4  B0 1F 02 08 */	sth r0, 0x208(r31)
/* 803D44A8  3B FF 02 0C */	addi r31, r31, 0x20c
/* 803D44AC  3B 9C 00 01 */	addi r28, r28, 1
lbl_803D44B0:
/* 803D44B0  2C 1C 00 12 */	cmpwi r28, 0x12
/* 803D44B4  40 80 00 18 */	bge lbl_803D44CC
/* 803D44B8  3B 7B 00 01 */	addi r27, r27, 1
/* 803D44BC  3B BD 00 08 */	addi r29, r29, 8
/* 803D44C0  2C 1B 00 EC */	cmpwi r27, 0xec
/* 803D44C4  3B DE 00 01 */	addi r30, r30, 1
/* 803D44C8  41 80 FF 84 */	blt lbl_803D444C
lbl_803D44CC:
/* 803D44CC  39 61 00 30 */	addi r11, r1, 0x30
/* 803D44D0  4B CC 6A 3D */	bl func_8009AF0C
/* 803D44D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D44D8  7C 08 03 A6 */	mtlr r0
/* 803D44DC  38 21 00 30 */	addi r1, r1, 0x30
/* 803D44E0  4E 80 00 20 */	blr 
