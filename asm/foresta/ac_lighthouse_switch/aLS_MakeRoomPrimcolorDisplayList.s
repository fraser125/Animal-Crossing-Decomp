lbl_8042C520:
/* 8042C520  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042C524  7C 08 02 A6 */	mflr r0
/* 8042C528  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042C52C  38 81 00 09 */	addi r4, r1, 9
/* 8042C530  38 A1 00 08 */	addi r5, r1, 8
/* 8042C534  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042C538  7C 7F 1B 78 */	mr r31, r3
/* 8042C53C  38 61 00 0A */	addi r3, r1, 0xa
/* 8042C540  7F E6 FB 78 */	mr r6, r31
/* 8042C544  4B F8 C0 75 */	bl mEnv_GetRoomPrimColor
/* 8042C548  88 61 00 0A */	lbz r3, 0xa(r1)
/* 8042C54C  7F E8 FB 78 */	mr r8, r31
/* 8042C550  88 81 00 09 */	lbz r4, 9(r1)
/* 8042C554  38 C0 00 FF */	li r6, 0xff
/* 8042C558  88 A1 00 08 */	lbz r5, 8(r1)
/* 8042C55C  38 E0 00 80 */	li r7, 0x80
/* 8042C560  4B FF FF 6D */	bl aLS_MakePrimcolorDisplayList
/* 8042C564  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042C568  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8042C56C  7C 08 03 A6 */	mtlr r0
/* 8042C570  38 21 00 20 */	addi r1, r1, 0x20
/* 8042C574  4E 80 00 20 */	blr 
