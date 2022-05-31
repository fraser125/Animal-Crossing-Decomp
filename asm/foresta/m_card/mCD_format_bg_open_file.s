lbl_803F8E20:
/* 803F8E20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F8E24  7C 08 02 A6 */	mflr r0
/* 803F8E28  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F8E2C  39 61 00 20 */	addi r11, r1, 0x20
/* 803F8E30  4B CA 20 A1 */	bl func_8009AED0
/* 803F8E34  7C 9F 23 78 */	mr r31, r4
/* 803F8E38  7C 7C 1B 78 */	mr r28, r3
/* 803F8E3C  7C BD 2B 78 */	mr r29, r5
/* 803F8E40  3B C0 00 00 */	li r30, 0
/* 803F8E44  7F E3 FB 78 */	mr r3, r31
/* 803F8E48  4B C9 54 21 */	bl CARDGetResultCode
/* 803F8E4C  90 7D 00 00 */	stw r3, 0(r29)
/* 803F8E50  80 1D 00 00 */	lwz r0, 0(r29)
/* 803F8E54  2C 00 00 00 */	cmpwi r0, 0
/* 803F8E58  41 82 00 14 */	beq lbl_803F8E6C
/* 803F8E5C  2C 00 FF F3 */	cmpwi r0, -13
/* 803F8E60  41 82 00 0C */	beq lbl_803F8E6C
/* 803F8E64  2C 00 FF FA */	cmpwi r0, -6
/* 803F8E68  40 82 00 44 */	bne lbl_803F8EAC
lbl_803F8E6C:
/* 803F8E6C  7F E3 FB 78 */	mr r3, r31
/* 803F8E70  38 80 00 00 */	li r4, 0
/* 803F8E74  4B C9 81 B5 */	bl CARDFormatAsync
/* 803F8E78  90 7D 00 00 */	stw r3, 0(r29)
/* 803F8E7C  80 1D 00 00 */	lwz r0, 0(r29)
/* 803F8E80  2C 00 00 00 */	cmpwi r0, 0
/* 803F8E84  40 82 00 18 */	bne lbl_803F8E9C
/* 803F8E88  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 803F8E8C  3B C0 00 01 */	li r30, 1
/* 803F8E90  38 03 00 01 */	addi r0, r3, 1
/* 803F8E94  90 1C 00 18 */	stw r0, 0x18(r28)
/* 803F8E98  48 00 00 20 */	b lbl_803F8EB8
lbl_803F8E9C:
/* 803F8E9C  7F E3 FB 78 */	mr r3, r31
/* 803F8EA0  4B C9 79 41 */	bl CARDUnmount
/* 803F8EA4  3B C0 FF FF */	li r30, -1
/* 803F8EA8  48 00 00 10 */	b lbl_803F8EB8
lbl_803F8EAC:
/* 803F8EAC  2C 00 FF FF */	cmpwi r0, -1
/* 803F8EB0  41 82 00 08 */	beq lbl_803F8EB8
/* 803F8EB4  3B C0 FF FF */	li r30, -1
lbl_803F8EB8:
/* 803F8EB8  7F C3 F3 78 */	mr r3, r30
/* 803F8EBC  39 61 00 20 */	addi r11, r1, 0x20
/* 803F8EC0  4B CA 20 5D */	bl func_8009AF1C
/* 803F8EC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F8EC8  7C 08 03 A6 */	mtlr r0
/* 803F8ECC  38 21 00 20 */	addi r1, r1, 0x20
/* 803F8ED0  4E 80 00 20 */	blr 
