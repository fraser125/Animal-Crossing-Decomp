lbl_803AF1D8:
/* 803AF1D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AF1DC  7C 08 02 A6 */	mflr r0
/* 803AF1E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AF1E4  39 61 00 20 */	addi r11, r1, 0x20
/* 803AF1E8  4B CE BC E5 */	bl func_8009AECC
/* 803AF1EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AF1F0  3B A0 00 00 */	li r29, 0
/* 803AF1F4  3B C3 85 38 */	addi r30, r3, common_data@l /* 0x81138538@l */
/* 803AF1F8  3B 80 00 00 */	li r28, 0
/* 803AF1FC  3B E0 00 00 */	li r31, 0
lbl_803AF200:
/* 803AF200  7C 7E FA 14 */	add r3, r30, r31
/* 803AF204  3B 63 00 20 */	addi r27, r3, 0x20
/* 803AF208  7F 63 DB 78 */	mr r3, r27
/* 803AF20C  4B FF FF 11 */	bl sCck_CheckSaveData_Item_YSD
/* 803AF210  7F BD 1B 78 */	or r29, r29, r3
/* 803AF214  7F 63 DB 78 */	mr r3, r27
/* 803AF218  4B FF FF 5D */	bl sCck_CheckSaveData_Mail_YSD
/* 803AF21C  7F BD 1B 78 */	or r29, r29, r3
/* 803AF220  7F 63 DB 78 */	mr r3, r27
/* 803AF224  4B FF FD 9D */	bl func_803AEFC0
/* 803AF228  3B 9C 00 01 */	addi r28, r28, 1
/* 803AF22C  7F BD 1B 78 */	or r29, r29, r3
/* 803AF230  2C 1C 00 04 */	cmpwi r28, 4
/* 803AF234  3B FF 24 40 */	addi r31, r31, 0x2440
/* 803AF238  41 80 FF C8 */	blt lbl_803AF200
/* 803AF23C  7F A3 EB 78 */	mr r3, r29
/* 803AF240  39 61 00 20 */	addi r11, r1, 0x20
/* 803AF244  4B CE BC D5 */	bl func_8009AF18
/* 803AF248  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AF24C  7C 08 03 A6 */	mtlr r0
/* 803AF250  38 21 00 20 */	addi r1, r1, 0x20
/* 803AF254  4E 80 00 20 */	blr 
