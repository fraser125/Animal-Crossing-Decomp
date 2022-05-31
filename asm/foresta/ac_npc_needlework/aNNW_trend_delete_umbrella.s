lbl_80561BA0:
/* 80561BA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80561BA4  7C 08 02 A6 */	mflr r0
/* 80561BA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80561BAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80561BB0  4B B3 93 19 */	bl func_8009AEC8
/* 80561BB4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80561BB8  54 64 07 BE */	clrlwi r4, r3, 0x1e
/* 80561BBC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80561BC0  3B C3 00 20 */	addi r30, r3, 0x20
/* 80561BC4  3F 85 00 01 */	addis r28, r5, 1
/* 80561BC8  3B A4 00 20 */	addi r29, r4, 0x20
/* 80561BCC  3B 40 00 00 */	li r26, 0
/* 80561BD0  3B E0 00 00 */	li r31, 0
/* 80561BD4  3B 9C 74 38 */	addi r28, r28, 0x7438
lbl_80561BD8:
/* 80561BD8  7F 7C FA 14 */	add r27, r28, r31
/* 80561BDC  7F 63 DB 78 */	mr r3, r27
/* 80561BE0  4B E6 97 FD */	bl mNpc_CheckFreeAnimalPersonalID
/* 80561BE4  2C 03 00 00 */	cmpwi r3, 0
/* 80561BE8  40 82 00 20 */	bne lbl_80561C08
/* 80561BEC  88 1B 08 EC */	lbz r0, 0x8ec(r27)
/* 80561BF0  7C 00 F0 00 */	cmpw r0, r30
/* 80561BF4  41 82 00 0C */	beq lbl_80561C00
/* 80561BF8  7C 00 E8 00 */	cmpw r0, r29
/* 80561BFC  40 82 00 0C */	bne lbl_80561C08
lbl_80561C00:
/* 80561C00  7F 63 DB 78 */	mr r3, r27
/* 80561C04  4B E6 D3 49 */	bl mNpc_SetDefAnimalUmbrella
lbl_80561C08:
/* 80561C08  3B 5A 00 01 */	addi r26, r26, 1
/* 80561C0C  3B FF 09 88 */	addi r31, r31, 0x988
/* 80561C10  2C 1A 00 0F */	cmpwi r26, 0xf
/* 80561C14  41 80 FF C4 */	blt lbl_80561BD8
/* 80561C18  39 61 00 20 */	addi r11, r1, 0x20
/* 80561C1C  4B B3 92 F9 */	bl func_8009AF14
/* 80561C20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80561C24  7C 08 03 A6 */	mtlr r0
/* 80561C28  38 21 00 20 */	addi r1, r1, 0x20
/* 80561C2C  4E 80 00 20 */	blr 
