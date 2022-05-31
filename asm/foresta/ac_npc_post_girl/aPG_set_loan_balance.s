lbl_8056C534:
/* 8056C534  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056C538  7C 08 02 A6 */	mflr r0
/* 8056C53C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056C540  39 61 00 20 */	addi r11, r1, 0x20
/* 8056C544  4B B2 E9 91 */	bl func_8009AED4
/* 8056C548  4B E5 31 61 */	bl func_803BF6A8
/* 8056C54C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056C550  7C 7F 1B 78 */	mr r31, r3
/* 8056C554  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8056C558  38 61 00 08 */	addi r3, r1, 8
/* 8056C55C  3F C5 00 02 */	addis r30, r5, 2
/* 8056C560  3C 80 00 0F */	lis r4, 0x000F /* 0x000F4240@ha */
/* 8056C564  80 DE 61 3C */	lwz r6, 0x613c(r30)
/* 8056C568  38 A4 42 40 */	addi r5, r4, 0x4240 /* 0x000F4240@l */
/* 8056C56C  3B A0 00 00 */	li r29, 0
/* 8056C570  38 80 00 07 */	li r4, 7
/* 8056C574  81 46 00 90 */	lwz r10, 0x90(r6)
/* 8056C578  38 C0 00 06 */	li r6, 6
/* 8056C57C  38 E0 00 01 */	li r7, 1
/* 8056C580  39 00 00 00 */	li r8, 0
/* 8056C584  7C 0A 2B 96 */	divwu r0, r10, r5
/* 8056C588  39 20 00 01 */	li r9, 1
/* 8056C58C  7C 00 29 D6 */	mullw r0, r0, r5
/* 8056C590  7C A0 50 50 */	subf r5, r0, r10
/* 8056C594  4B E4 2E E5 */	bl mFont_UnintToString
/* 8056C598  7F E3 FB 78 */	mr r3, r31
/* 8056C59C  38 A1 00 08 */	addi r5, r1, 8
/* 8056C5A0  38 80 00 02 */	li r4, 2
/* 8056C5A4  38 C0 00 07 */	li r6, 7
/* 8056C5A8  4B E5 36 AD */	bl mMsg_Set_free_str
/* 8056C5AC  80 9E 61 3C */	lwz r4, 0x613c(r30)
/* 8056C5B0  3C 60 00 0F */	lis r3, 0x000F /* 0x000F4240@ha */
/* 8056C5B4  38 03 42 40 */	addi r0, r3, 0x4240 /* 0x000F4240@l */
/* 8056C5B8  80 64 00 90 */	lwz r3, 0x90(r4)
/* 8056C5BC  7C A3 03 97 */	divwu. r5, r3, r0
/* 8056C5C0  41 82 00 3C */	beq lbl_8056C5FC
/* 8056C5C4  38 61 00 08 */	addi r3, r1, 8
/* 8056C5C8  38 80 00 07 */	li r4, 7
/* 8056C5CC  38 C0 00 06 */	li r6, 6
/* 8056C5D0  38 E0 00 01 */	li r7, 1
/* 8056C5D4  39 00 00 00 */	li r8, 0
/* 8056C5D8  39 20 00 01 */	li r9, 1
/* 8056C5DC  4B E4 2E 9D */	bl mFont_UnintToString
/* 8056C5E0  38 61 00 08 */	addi r3, r1, 8
/* 8056C5E4  38 80 00 07 */	li r4, 7
/* 8056C5E8  4B E5 46 7D */	bl mMsg_Get_Length_String
/* 8056C5EC  38 81 00 08 */	addi r4, r1, 8
/* 8056C5F0  38 00 00 2C */	li r0, 0x2c
/* 8056C5F4  7C 04 19 AE */	stbx r0, r4, r3
/* 8056C5F8  7C 7D 1B 78 */	mr r29, r3
lbl_8056C5FC:
/* 8056C5FC  7F E3 FB 78 */	mr r3, r31
/* 8056C600  7F A6 EB 78 */	mr r6, r29
/* 8056C604  38 A1 00 08 */	addi r5, r1, 8
/* 8056C608  38 80 00 01 */	li r4, 1
/* 8056C60C  4B E5 36 49 */	bl mMsg_Set_free_str
/* 8056C610  39 61 00 20 */	addi r11, r1, 0x20
/* 8056C614  4B B2 E9 0D */	bl func_8009AF20
/* 8056C618  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056C61C  7C 08 03 A6 */	mtlr r0
/* 8056C620  38 21 00 20 */	addi r1, r1, 0x20
/* 8056C624  4E 80 00 20 */	blr 
