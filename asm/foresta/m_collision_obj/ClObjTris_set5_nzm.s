lbl_803949EC:
/* 803949EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803949F0  7C 08 02 A6 */	mflr r0
/* 803949F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803949F8  39 61 00 20 */	addi r11, r1, 0x20
/* 803949FC  4B D0 64 D1 */	bl func_8009AECC
/* 80394A00  7C 7B 1B 78 */	mr r27, r3
/* 80394A04  7C 9C 23 78 */	mr r28, r4
/* 80394A08  7C DD 33 78 */	mr r29, r6
/* 80394A0C  7C FE 3B 78 */	mr r30, r7
/* 80394A10  4B FF FA B1 */	bl ClObj_set4
/* 80394A14  80 1D 00 04 */	lwz r0, 4(r29)
/* 80394A18  90 1C 00 0C */	stw r0, 0xc(r28)
/* 80394A1C  93 DC 00 10 */	stw r30, 0x10(r28)
/* 80394A20  83 FC 00 10 */	lwz r31, 0x10(r28)
/* 80394A24  83 DD 00 08 */	lwz r30, 8(r29)
/* 80394A28  48 00 00 28 */	b lbl_80394A50
lbl_80394A2C:
/* 80394A2C  7F 63 DB 78 */	mr r3, r27
/* 80394A30  7F E4 FB 78 */	mr r4, r31
/* 80394A34  4B FF FE 15 */	bl ClObjTrisElem_ct
/* 80394A38  7F 63 DB 78 */	mr r3, r27
/* 80394A3C  7F E4 FB 78 */	mr r4, r31
/* 80394A40  7F C5 F3 78 */	mr r5, r30
/* 80394A44  4B FF FE 79 */	bl ClObjTrisElem_set
/* 80394A48  3B FF 00 44 */	addi r31, r31, 0x44
/* 80394A4C  3B DE 00 28 */	addi r30, r30, 0x28
lbl_80394A50:
/* 80394A50  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80394A54  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 80394A58  1C 00 00 44 */	mulli r0, r0, 0x44
/* 80394A5C  7C 03 02 14 */	add r0, r3, r0
/* 80394A60  7C 1F 00 40 */	cmplw r31, r0
/* 80394A64  41 80 FF C8 */	blt lbl_80394A2C
/* 80394A68  38 60 00 01 */	li r3, 1
/* 80394A6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80394A70  4B D0 64 A9 */	bl func_8009AF18
/* 80394A74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80394A78  7C 08 03 A6 */	mtlr r0
/* 80394A7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80394A80  4E 80 00 20 */	blr 
