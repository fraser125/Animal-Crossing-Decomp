lbl_8058C188:
/* 8058C188  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058C18C  7C 08 02 A6 */	mflr r0
/* 8058C190  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058C194  39 61 00 20 */	addi r11, r1, 0x20
/* 8058C198  4B B0 ED 3D */	bl func_8009AED4
/* 8058C19C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058C1A0  7C 7D 1B 78 */	mr r29, r3
/* 8058C1A4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058C1A8  7C 9E 23 78 */	mr r30, r4
/* 8058C1AC  3F E5 00 02 */	addis r31, r5, 2
/* 8058C1B0  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8058C1B4  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8058C1B8  7D 89 03 A6 */	mtctr r12
/* 8058C1BC  4E 80 04 21 */	bctrl 
/* 8058C1C0  2C 03 00 01 */	cmpwi r3, 1
/* 8058C1C4  40 82 00 68 */	bne lbl_8058C22C
/* 8058C1C8  3C 60 80 59 */	lis r3, aTKN1_schedule_proc@ha /* 0x8058D720@ha */
/* 8058C1CC  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C22CC@ha */
/* 8058C1D0  38 03 D7 20 */	addi r0, r3, aTKN1_schedule_proc@l /* 0x8058D720@l */
/* 8058C1D4  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 8058C1D8  38 A4 22 CC */	addi r5, r4, ct_data@l /* 0x806C22CC@l */
/* 8058C1DC  7F A3 EB 78 */	mr r3, r29
/* 8058C1E0  7F C4 F3 78 */	mr r4, r30
/* 8058C1E4  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8058C1E8  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8058C1EC  7D 89 03 A6 */	mtctr r12
/* 8058C1F0  4E 80 04 21 */	bctrl 
/* 8058C1F4  38 00 FF FF */	li r0, -1
/* 8058C1F8  7F A3 EB 78 */	mr r3, r29
/* 8058C1FC  90 1D 08 F4 */	stw r0, 0x8f4(r29)
/* 8058C200  4B E4 5D 01 */	bl mNpc_GetNpcLooks
/* 8058C204  3C 80 80 6C */	lis r4, base_msg_table@ha /* 0x806C22E8@ha */
/* 8058C208  54 60 10 3A */	slwi r0, r3, 2
/* 8058C20C  38 84 22 E8 */	addi r4, r4, base_msg_table@l /* 0x806C22E8@l */
/* 8058C210  38 60 00 00 */	li r3, 0
/* 8058C214  7C 84 00 2E */	lwzx r4, r4, r0
/* 8058C218  38 00 00 01 */	li r0, 1
/* 8058C21C  90 9D 09 98 */	stw r4, 0x998(r29)
/* 8058C220  98 7D 09 AC */	stb r3, 0x9ac(r29)
/* 8058C224  98 7D 09 AD */	stb r3, 0x9ad(r29)
/* 8058C228  98 1D 08 BE */	stb r0, 0x8be(r29)
lbl_8058C22C:
/* 8058C22C  39 61 00 20 */	addi r11, r1, 0x20
/* 8058C230  4B B0 EC F1 */	bl func_8009AF20
/* 8058C234  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058C238  7C 08 03 A6 */	mtlr r0
/* 8058C23C  38 21 00 20 */	addi r1, r1, 0x20
/* 8058C240  4E 80 00 20 */	blr 
