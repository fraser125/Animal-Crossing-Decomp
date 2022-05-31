lbl_803EE0FC:
/* 803EE0FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EE100  7C 08 02 A6 */	mflr r0
/* 803EE104  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EE108  39 61 00 20 */	addi r11, r1, 0x20
/* 803EE10C  4B CA CD C5 */	bl func_8009AED0
/* 803EE110  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE114  3B 80 00 00 */	li r28, 0
/* 803EE118  3B C3 85 38 */	addi r30, r3, common_data@l /* 0x81138538@l */
/* 803EE11C  3B E0 00 00 */	li r31, 0
lbl_803EE120:
/* 803EE120  7C 7E FA 14 */	add r3, r30, r31
/* 803EE124  38 80 00 00 */	li r4, 0
/* 803EE128  3F A3 00 01 */	addis r29, r3, 1
/* 803EE12C  3B BD 37 A8 */	addi r29, r29, 0x37a8
/* 803EE130  7F A3 EB 78 */	mr r3, r29
/* 803EE134  4B FF FF 75 */	bl mSDI_PullTreeBlock
/* 803EE138  38 7D 08 00 */	addi r3, r29, 0x800
/* 803EE13C  38 80 00 0F */	li r4, 0xf
/* 803EE140  4B FF FF 69 */	bl mSDI_PullTreeBlock
/* 803EE144  3B 9C 00 01 */	addi r28, r28, 1
/* 803EE148  3B FF 0A 00 */	addi r31, r31, 0xa00
/* 803EE14C  2C 1C 00 06 */	cmpwi r28, 6
/* 803EE150  41 80 FF D0 */	blt lbl_803EE120
/* 803EE154  39 61 00 20 */	addi r11, r1, 0x20
/* 803EE158  4B CA CD C5 */	bl func_8009AF1C
/* 803EE15C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EE160  7C 08 03 A6 */	mtlr r0
/* 803EE164  38 21 00 20 */	addi r1, r1, 0x20
/* 803EE168  4E 80 00 20 */	blr 
