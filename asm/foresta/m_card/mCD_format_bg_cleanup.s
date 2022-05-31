lbl_803F8ED4:
/* 803F8ED4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F8ED8  7C 08 02 A6 */	mflr r0
/* 803F8EDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F8EE0  39 61 00 20 */	addi r11, r1, 0x20
/* 803F8EE4  4B CA 1F ED */	bl func_8009AED0
/* 803F8EE8  7C 9F 23 78 */	mr r31, r4
/* 803F8EEC  7C 7C 1B 78 */	mr r28, r3
/* 803F8EF0  7C BD 2B 78 */	mr r29, r5
/* 803F8EF4  3B C0 00 00 */	li r30, 0
/* 803F8EF8  7F E3 FB 78 */	mr r3, r31
/* 803F8EFC  4B C9 53 6D */	bl CARDGetResultCode
/* 803F8F00  90 7D 00 00 */	stw r3, 0(r29)
/* 803F8F04  80 1D 00 00 */	lwz r0, 0(r29)
/* 803F8F08  2C 00 FF FF */	cmpwi r0, -1
/* 803F8F0C  41 82 00 2C */	beq lbl_803F8F38
/* 803F8F10  2C 00 00 00 */	cmpwi r0, 0
/* 803F8F14  38 00 FF FF */	li r0, -1
/* 803F8F18  40 82 00 08 */	bne lbl_803F8F20
/* 803F8F1C  38 00 00 01 */	li r0, 1
lbl_803F8F20:
/* 803F8F20  7C 1E 03 78 */	mr r30, r0
/* 803F8F24  7F E3 FB 78 */	mr r3, r31
/* 803F8F28  4B C9 78 B9 */	bl CARDUnmount
/* 803F8F2C  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 803F8F30  38 03 00 01 */	addi r0, r3, 1
/* 803F8F34  90 1C 00 18 */	stw r0, 0x18(r28)
lbl_803F8F38:
/* 803F8F38  7F C3 F3 78 */	mr r3, r30
/* 803F8F3C  39 61 00 20 */	addi r11, r1, 0x20
/* 803F8F40  4B CA 1F DD */	bl func_8009AF1C
/* 803F8F44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F8F48  7C 08 03 A6 */	mtlr r0
/* 803F8F4C  38 21 00 20 */	addi r1, r1, 0x20
/* 803F8F50  4E 80 00 20 */	blr 
