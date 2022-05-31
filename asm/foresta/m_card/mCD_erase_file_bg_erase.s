lbl_803F9B48:
/* 803F9B48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F9B4C  7C 08 02 A6 */	mflr r0
/* 803F9B50  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F9B54  39 61 00 20 */	addi r11, r1, 0x20
/* 803F9B58  4B CA 13 75 */	bl func_8009AECC
/* 803F9B5C  7C 9F 23 78 */	mr r31, r4
/* 803F9B60  7C 7B 1B 78 */	mr r27, r3
/* 803F9B64  7C BC 2B 78 */	mr r28, r5
/* 803F9B68  7C FD 3B 78 */	mr r29, r7
/* 803F9B6C  3B C0 00 00 */	li r30, 0
/* 803F9B70  7F E3 FB 78 */	mr r3, r31
/* 803F9B74  4B C9 46 F5 */	bl CARDGetResultCode
/* 803F9B78  90 7C 00 00 */	stw r3, 0(r28)
/* 803F9B7C  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F9B80  2C 00 00 00 */	cmpwi r0, 0
/* 803F9B84  40 82 00 48 */	bne lbl_803F9BCC
/* 803F9B88  7F E3 FB 78 */	mr r3, r31
/* 803F9B8C  7F A4 EB 78 */	mr r4, r29
/* 803F9B90  38 A0 00 00 */	li r5, 0
/* 803F9B94  4B C9 87 15 */	bl CARDDeleteAsync
/* 803F9B98  90 7C 00 00 */	stw r3, 0(r28)
/* 803F9B9C  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F9BA0  2C 00 00 00 */	cmpwi r0, 0
/* 803F9BA4  40 82 00 18 */	bne lbl_803F9BBC
/* 803F9BA8  80 7B 00 18 */	lwz r3, 0x18(r27)
/* 803F9BAC  3B C0 00 01 */	li r30, 1
/* 803F9BB0  38 03 00 01 */	addi r0, r3, 1
/* 803F9BB4  90 1B 00 18 */	stw r0, 0x18(r27)
/* 803F9BB8  48 00 00 20 */	b lbl_803F9BD8
lbl_803F9BBC:
/* 803F9BBC  7F E3 FB 78 */	mr r3, r31
/* 803F9BC0  4B C9 6C 21 */	bl CARDUnmount
/* 803F9BC4  3B C0 FF FF */	li r30, -1
/* 803F9BC8  48 00 00 10 */	b lbl_803F9BD8
lbl_803F9BCC:
/* 803F9BCC  2C 00 FF FF */	cmpwi r0, -1
/* 803F9BD0  41 82 00 08 */	beq lbl_803F9BD8
/* 803F9BD4  3B C0 FF FF */	li r30, -1
lbl_803F9BD8:
/* 803F9BD8  7F C3 F3 78 */	mr r3, r30
/* 803F9BDC  39 61 00 20 */	addi r11, r1, 0x20
/* 803F9BE0  4B CA 13 39 */	bl func_8009AF18
/* 803F9BE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F9BE8  7C 08 03 A6 */	mtlr r0
/* 803F9BEC  38 21 00 20 */	addi r1, r1, 0x20
/* 803F9BF0  4E 80 00 20 */	blr 
