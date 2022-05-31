lbl_80543A84:
/* 80543A84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80543A88  7C 08 02 A6 */	mflr r0
/* 80543A8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80543A90  39 61 00 20 */	addi r11, r1, 0x20
/* 80543A94  4B B5 74 3D */	bl func_8009AED0
/* 80543A98  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80543A9C  7C 7C 1B 78 */	mr r28, r3
/* 80543AA0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80543AA4  83 FC 01 7C */	lwz r31, 0x17c(r28)
/* 80543AA8  3C 63 00 02 */	addis r3, r3, 2
/* 80543AAC  3B C0 00 00 */	li r30, 0
/* 80543AB0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80543AB4  38 9F 00 10 */	addi r4, r31, 0x10
/* 80543AB8  3B A0 00 00 */	li r29, 0
/* 80543ABC  38 A0 00 07 */	li r5, 7
/* 80543AC0  4B E8 82 B9 */	bl mNpc_GetAnimalMemoryIdx
/* 80543AC4  2C 03 FF FF */	cmpwi r3, -1
/* 80543AC8  41 82 00 14 */	beq lbl_80543ADC
/* 80543ACC  1C 63 01 38 */	mulli r3, r3, 0x138
/* 80543AD0  3B A0 00 01 */	li r29, 1
/* 80543AD4  3B C3 00 40 */	addi r30, r3, 0x40
/* 80543AD8  7F DF F2 14 */	add r30, r31, r30
lbl_80543ADC:
/* 80543ADC  93 DC 08 60 */	stw r30, 0x860(r28)
/* 80543AE0  7F A3 EB 78 */	mr r3, r29
/* 80543AE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80543AE8  4B B5 74 35 */	bl func_8009AF1C
/* 80543AEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80543AF0  7C 08 03 A6 */	mtlr r0
/* 80543AF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80543AF8  4E 80 00 20 */	blr 
