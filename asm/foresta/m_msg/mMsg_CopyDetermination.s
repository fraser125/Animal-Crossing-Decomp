lbl_803C17D4:
/* 803C17D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C17D8  7C 08 02 A6 */	mflr r0
/* 803C17DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C17E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803C17E4  4B CD 96 E9 */	bl func_8009AECC
/* 803C17E8  7C 9C 23 78 */	mr r28, r4
/* 803C17EC  7C BD 2B 78 */	mr r29, r5
/* 803C17F0  7C 7B 1B 78 */	mr r27, r3
/* 803C17F4  7C DE 33 78 */	mr r30, r6
/* 803C17F8  7F 83 E3 78 */	mr r3, r28
/* 803C17FC  7F A4 EB 78 */	mr r4, r29
/* 803C1800  4B FE E0 09 */	bl mFont_CodeSize_idx_get
/* 803C1804  83 FB 03 A4 */	lwz r31, 0x3a4(r27)
/* 803C1808  7C 60 1B 78 */	mr r0, r3
/* 803C180C  7F 83 E3 78 */	mr r3, r28
/* 803C1810  7F C6 F3 78 */	mr r6, r30
/* 803C1814  7C 9D FA 14 */	add r4, r29, r31
/* 803C1818  7C BD 02 14 */	add r5, r29, r0
/* 803C181C  38 E0 00 00 */	li r7, 0
/* 803C1820  4B FF F5 55 */	bl mMsg_MoveDataCut
/* 803C1824  7F E5 FB 78 */	mr r5, r31
/* 803C1828  7C 7F 1B 78 */	mr r31, r3
/* 803C182C  7C 7C EA 14 */	add r3, r28, r29
/* 803C1830  38 9B 03 94 */	addi r4, r27, 0x394
/* 803C1834  4B FF F6 09 */	bl mMsg_CopyString
/* 803C1838  7F E3 FB 78 */	mr r3, r31
/* 803C183C  39 61 00 20 */	addi r11, r1, 0x20
/* 803C1840  4B CD 96 D9 */	bl func_8009AF18
/* 803C1844  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C1848  7C 08 03 A6 */	mtlr r0
/* 803C184C  38 21 00 20 */	addi r1, r1, 0x20
/* 803C1850  4E 80 00 20 */	blr 
