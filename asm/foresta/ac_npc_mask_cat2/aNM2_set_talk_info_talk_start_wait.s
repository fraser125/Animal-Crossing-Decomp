lbl_805604F0:
/* 805604F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805604F4  7C 08 02 A6 */	mflr r0
/* 805604F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805604FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80560500  7C 7F 1B 78 */	mr r31, r3
/* 80560504  4B E5 F1 A5 */	bl func_803BF6A8
/* 80560508  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056050C  38 80 00 01 */	li r4, 1
/* 80560510  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80560514  38 C0 00 08 */	li r6, 8
/* 80560518  3C A5 00 01 */	addis r5, r5, 1
/* 8056051C  38 A5 91 20 */	addi r5, r5, -28384
/* 80560520  4B E5 F7 35 */	bl mMsg_Set_free_str
/* 80560524  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80560528  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056052C  3C 63 00 02 */	addis r3, r3, 2
/* 80560530  80 83 61 3C */	lwz r4, 0x613c(r3)
/* 80560534  80 64 23 48 */	lwz r3, 0x2348(r4)
/* 80560538  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8056053C  41 82 00 0C */	beq lbl_80560548
/* 80560540  38 60 33 F3 */	li r3, 0x33f3
/* 80560544  48 00 00 10 */	b lbl_80560554
lbl_80560548:
/* 80560548  60 60 00 02 */	ori r0, r3, 2
/* 8056054C  38 60 33 F2 */	li r3, 0x33f2
/* 80560550  90 04 23 48 */	stw r0, 0x2348(r4)
lbl_80560554:
/* 80560554  4B E3 7F C1 */	bl mDemo_Set_msg_num
/* 80560558  38 60 00 0D */	li r3, 0xd
/* 8056055C  4B E3 83 C5 */	bl mDemo_Set_camera
/* 80560560  38 60 00 00 */	li r3, 0
/* 80560564  4B E3 82 0D */	bl mDemo_Set_talk_change_player
/* 80560568  38 60 00 01 */	li r3, 1
/* 8056056C  4B E3 81 35 */	bl mDemo_Set_use_zoom_sound
/* 80560570  38 00 00 01 */	li r0, 1
/* 80560574  90 1F 09 B4 */	stw r0, 0x9b4(r31)
/* 80560578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056057C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80560580  7C 08 03 A6 */	mtlr r0
/* 80560584  38 21 00 10 */	addi r1, r1, 0x10
/* 80560588  4E 80 00 20 */	blr 
