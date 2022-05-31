lbl_805C2484:
/* 805C2484  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C2488  7C 08 02 A6 */	mflr r0
/* 805C248C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C2490  39 61 00 20 */	addi r11, r1, 0x20
/* 805C2494  4B AD 8A 35 */	bl func_8009AEC8
/* 805C2498  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805C249C  7C 7A 1B 78 */	mr r26, r3
/* 805C24A0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805C24A4  3B 60 00 00 */	li r27, 0
/* 805C24A8  3C 64 00 02 */	addis r3, r4, 2
/* 805C24AC  3B DA 00 9A */	addi r30, r26, 0x9a
/* 805C24B0  3F E4 00 01 */	addis r31, r4, 1
/* 805C24B4  83 A3 61 3C */	lwz r29, 0x613c(r3)
/* 805C24B8  3B 80 00 00 */	li r28, 0
/* 805C24BC  3B FF 74 38 */	addi r31, r31, 0x7438
lbl_805C24C0:
/* 805C24C0  7F E3 FB 78 */	mr r3, r31
/* 805C24C4  4B E0 8F 19 */	bl mNpc_CheckFreeAnimalPersonalID
/* 805C24C8  2C 03 00 00 */	cmpwi r3, 0
/* 805C24CC  40 82 00 30 */	bne lbl_805C24FC
/* 805C24D0  7F A3 EB 78 */	mr r3, r29
/* 805C24D4  38 9F 00 10 */	addi r4, r31, 0x10
/* 805C24D8  38 A0 00 07 */	li r5, 7
/* 805C24DC  4B E0 98 9D */	bl mNpc_GetAnimalMemoryIdx
/* 805C24E0  2C 03 FF FF */	cmpwi r3, -1
/* 805C24E4  41 82 00 18 */	beq lbl_805C24FC
/* 805C24E8  7F C3 F3 78 */	mr r3, r30
/* 805C24EC  7F E4 FB 78 */	mr r4, r31
/* 805C24F0  4B DF A5 01 */	bl mMl_set_mail_name_npcinfo
/* 805C24F4  3B DE 00 16 */	addi r30, r30, 0x16
/* 805C24F8  3B 7B 00 01 */	addi r27, r27, 1
lbl_805C24FC:
/* 805C24FC  3B 9C 00 01 */	addi r28, r28, 1
/* 805C2500  3B FF 09 88 */	addi r31, r31, 0x988
/* 805C2504  2C 1C 00 0F */	cmpwi r28, 0xf
/* 805C2508  41 80 FF B8 */	blt lbl_805C24C0
/* 805C250C  2C 1B 00 08 */	cmpwi r27, 8
/* 805C2510  40 80 00 14 */	bge lbl_805C2524
/* 805C2514  9B 7A 00 09 */	stb r27, 9(r26)
/* 805C2518  38 00 00 00 */	li r0, 0
/* 805C251C  98 1A 00 0A */	stb r0, 0xa(r26)
/* 805C2520  48 00 00 14 */	b lbl_805C2534
lbl_805C2524:
/* 805C2524  38 60 00 08 */	li r3, 8
/* 805C2528  38 1B FF F8 */	addi r0, r27, -8
/* 805C252C  98 7A 00 09 */	stb r3, 9(r26)
/* 805C2530  98 1A 00 0A */	stb r0, 0xa(r26)
lbl_805C2534:
/* 805C2534  39 61 00 20 */	addi r11, r1, 0x20
/* 805C2538  4B AD 89 DD */	bl func_8009AF14
/* 805C253C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C2540  7C 08 03 A6 */	mtlr r0
/* 805C2544  38 21 00 20 */	addi r1, r1, 0x20
/* 805C2548  4E 80 00 20 */	blr 
