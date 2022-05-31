lbl_8037A984:
/* 8037A984  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037A988  7C 08 02 A6 */	mflr r0
/* 8037A98C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037A990  39 61 00 20 */	addi r11, r1, 0x20
/* 8037A994  4B D2 05 3D */	bl func_8009AED0
/* 8037A998  7C 7C 1B 78 */	mr r28, r3
/* 8037A99C  7C 9D 23 78 */	mr r29, r4
/* 8037A9A0  80 63 01 18 */	lwz r3, 0x118(r3)
/* 8037A9A4  2C 03 00 00 */	cmpwi r3, 0
/* 8037A9A8  41 82 00 38 */	beq lbl_8037A9E0
/* 8037A9AC  3B C3 FF FF */	addi r30, r3, -1
/* 8037A9B0  1F FE 00 14 */	mulli r31, r30, 0x14
/* 8037A9B4  48 00 00 24 */	b lbl_8037A9D8
lbl_8037A9B8:
/* 8037A9B8  38 1E 00 01 */	addi r0, r30, 1
/* 8037A9BC  7C 7C FA 14 */	add r3, r28, r31
/* 8037A9C0  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8037A9C4  38 A0 00 14 */	li r5, 0x14
/* 8037A9C8  7C 9C 02 14 */	add r4, r28, r0
/* 8037A9CC  4B CE 26 51 */	bl func_8005D01C
/* 8037A9D0  3B DE FF FF */	addi r30, r30, -1
/* 8037A9D4  3B FF FF EC */	addi r31, r31, -20
lbl_8037A9D8:
/* 8037A9D8  7C 1E E8 00 */	cmpw r30, r29
/* 8037A9DC  40 80 FF DC */	bge lbl_8037A9B8
lbl_8037A9E0:
/* 8037A9E0  1C 1D 00 14 */	mulli r0, r29, 0x14
/* 8037A9E4  38 80 00 14 */	li r4, 0x14
/* 8037A9E8  7C 7C 02 14 */	add r3, r28, r0
/* 8037A9EC  4B CE 26 7D */	bl bzero
/* 8037A9F0  80 7C 01 18 */	lwz r3, 0x118(r28)
/* 8037A9F4  38 03 00 01 */	addi r0, r3, 1
/* 8037A9F8  90 1C 01 18 */	stw r0, 0x118(r28)
/* 8037A9FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8037AA00  4B D2 05 1D */	bl func_8009AF1C
/* 8037AA04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037AA08  7C 08 03 A6 */	mtlr r0
/* 8037AA0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8037AA10  4E 80 00 20 */	blr 
