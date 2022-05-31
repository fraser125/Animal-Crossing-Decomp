lbl_803F7B64:
/* 803F7B64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F7B68  7C 08 02 A6 */	mflr r0
/* 803F7B6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F7B70  39 61 00 20 */	addi r11, r1, 0x20
/* 803F7B74  4B CA 33 55 */	bl func_8009AEC8
/* 803F7B78  7C 9B 23 78 */	mr r27, r4
/* 803F7B7C  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 803F7B80  7C DC 33 78 */	mr r28, r6
/* 803F7B84  7C 7A 1B 78 */	mr r26, r3
/* 803F7B88  38 04 00 01 */	addi r0, r4, 1
/* 803F7B8C  7C FD 3B 78 */	mr r29, r7
/* 803F7B90  90 1B 00 1C */	stw r0, 0x1c(r27)
/* 803F7B94  7F 83 E3 78 */	mr r3, r28
/* 803F7B98  7C BF 2B 78 */	mr r31, r5
/* 803F7B9C  38 80 20 00 */	li r4, 0x2000
/* 803F7BA0  4B FF FC 79 */	bl mCD_check_card_common
/* 803F7BA4  7C 7E 1B 78 */	mr r30, r3
/* 803F7BA8  2C 1E 00 01 */	cmpwi r30, 1
/* 803F7BAC  40 82 00 68 */	bne lbl_803F7C14
/* 803F7BB0  28 1D 00 00 */	cmplwi r29, 0
/* 803F7BB4  41 82 00 60 */	beq lbl_803F7C14
/* 803F7BB8  38 00 00 00 */	li r0, 0
/* 803F7BBC  7F E3 FB 78 */	mr r3, r31
/* 803F7BC0  90 1A 00 00 */	stw r0, 0(r26)
/* 803F7BC4  7F A4 EB 78 */	mr r4, r29
/* 803F7BC8  38 A0 00 00 */	li r5, 0
/* 803F7BCC  38 C0 00 00 */	li r6, 0
/* 803F7BD0  4B C9 89 8D */	bl CARDMountAsync
/* 803F7BD4  90 7C 00 00 */	stw r3, 0(r28)
/* 803F7BD8  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F7BDC  2C 00 FF F3 */	cmpwi r0, -13
/* 803F7BE0  40 82 00 14 */	bne lbl_803F7BF4
/* 803F7BE4  7F E3 FB 78 */	mr r3, r31
/* 803F7BE8  4B C9 8B F9 */	bl CARDUnmount
/* 803F7BEC  3B C0 FF FF */	li r30, -1
/* 803F7BF0  48 00 00 18 */	b lbl_803F7C08
lbl_803F7BF4:
/* 803F7BF4  2C 00 00 00 */	cmpwi r0, 0
/* 803F7BF8  41 82 00 10 */	beq lbl_803F7C08
/* 803F7BFC  2C 00 FF FA */	cmpwi r0, -6
/* 803F7C00  41 82 00 08 */	beq lbl_803F7C08
/* 803F7C04  3B C0 FF FF */	li r30, -1
lbl_803F7C08:
/* 803F7C08  38 00 00 00 */	li r0, 0
/* 803F7C0C  90 1B 00 1C */	stw r0, 0x1c(r27)
/* 803F7C10  48 00 00 3C */	b lbl_803F7C4C
lbl_803F7C14:
/* 803F7C14  2C 1E 00 00 */	cmpwi r30, 0
/* 803F7C18  41 82 00 18 */	beq lbl_803F7C30
/* 803F7C1C  38 00 00 00 */	li r0, 0
/* 803F7C20  3B C0 FF FF */	li r30, -1
/* 803F7C24  90 1A 00 00 */	stw r0, 0(r26)
/* 803F7C28  90 1B 00 1C */	stw r0, 0x1c(r27)
/* 803F7C2C  48 00 00 20 */	b lbl_803F7C4C
lbl_803F7C30:
/* 803F7C30  80 1B 00 1C */	lwz r0, 0x1c(r27)
/* 803F7C34  2C 00 00 64 */	cmpwi r0, 0x64
/* 803F7C38  41 80 00 14 */	blt lbl_803F7C4C
/* 803F7C3C  38 00 00 00 */	li r0, 0
/* 803F7C40  3B C0 FF FF */	li r30, -1
/* 803F7C44  90 1A 00 00 */	stw r0, 0(r26)
/* 803F7C48  90 1B 00 1C */	stw r0, 0x1c(r27)
lbl_803F7C4C:
/* 803F7C4C  7F C3 F3 78 */	mr r3, r30
/* 803F7C50  39 61 00 20 */	addi r11, r1, 0x20
/* 803F7C54  4B CA 32 C1 */	bl func_8009AF14
/* 803F7C58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F7C5C  7C 08 03 A6 */	mtlr r0
/* 803F7C60  38 21 00 20 */	addi r1, r1, 0x20
/* 803F7C64  4E 80 00 20 */	blr 
